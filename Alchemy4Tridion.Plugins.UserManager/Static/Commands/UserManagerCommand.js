// ATTENTION: Modify "YourCommandName" to the name of your actual command
Alchemy.command("${PluginName}", "YourCommandName", {

    /**
     * Called when the command is constructed.
     */
    init: function () {

    },

    /**
     * Whether or not the item the command is attached to is available.
     */
    isAvailable: function (selection) {
        return true;
    },

    /**
     * Whether or not the item the command is attached to is enabled (if available and not enabled, will show as disabled state).
     */
    isEnabled: function (selection) {
        return true;
    },

    /**
     * The action that is performed when someone clicks on the item the command is attached to.
     */
    execute: function (selection) {

    }
});