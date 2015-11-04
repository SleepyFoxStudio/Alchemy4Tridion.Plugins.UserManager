// ATTENTION: Modify "YourCommandName" to the name of your actual command
Alchemy.command("${PluginName}", "CloneUser", {

    /**
      * Whether or not the command is enabled for the user (will usually have extensions displayed but disabled).
      * @returns {boolean}
      */
    isEnabled: function (selection) {
        // Gets the selected item in Tridion GUI
        var items = selection.getItems();
        var item = $models.getItem(selection.getItem(0));
        // Checks if an item has been selected and if it has whether it's a catagory or the ugc tab since
        // where used has no function with those
        if (items.length >= 1 && item.getItemType() != 'cme:catman' && item.getItemType() != 'ugc:root') {
            return true;
        }
        else {
            return false;
        }
    },

    /**
     * Whether or not the command is available to the user.
     * @returns {boolean}
     */
    isAvailable: function () {
        return true;
    },

    /**
     * Executes your command. You can use _execute or execute as the property name.
     */
    execute: function () {

        var progress = $messages.registerProgress("Getting api version...", null),
            userName = "AlchemyTester";

        // This is the error first callback pattern that the webapi proxy js exposes. Look at another example to
        // see how the promise pattern can also be used.

        // The call back must go as last parameter of action method.
        Alchemy.Plugins["${PluginName}"].Api.HelloService.helloWorld(userName, function (error, message) {
            progress.finish({ success: true });
            if (error) {
                // error will only exist if there was an error, otherwise it'll be null.
                $messages.registerError("There was an error", error.message);
            }
            $messages.registerGoal(message, null);
        });
    }
});