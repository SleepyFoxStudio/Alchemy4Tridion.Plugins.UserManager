Alchemy.command("UserManager", "OpenCloneUserPopup", {
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
        if (items.length == 1 && item.getItemType() == 'tcm:65552' ) {
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

    execute: function () {
        var url = "${ViewsUrl}CloneUser.aspx";

        var onPopupClose = function() {
            $evt.removeEventHandler(this.properties.popupInstance, "unload", this.getDelegate(this.properties.popupCloseHandler));
            this.properties.popupInstance = null;
            this.properties.popupCloseHandler = null;
        }

        var popup = this.properties.popupInstance;
        if(popup)
        {
            popup.focus();
        }
        else
        {
            popup = $popup.create(url, "menubar=no,location=no,resizable=no,scrollbars=yes,status=no,width=800,height=350", null);

            this.properties.popupInstance = popup;
            this.properties.popupCloseHandler = onPopupClose;

            $evt.addEventHandler(popup, "unload", this.getDelegate(onPopupClose));

            popup.open();
        }
    }
});