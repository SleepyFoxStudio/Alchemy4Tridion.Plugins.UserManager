using Alchemy4Tridion.Plugins.GUI.Configuration;
using Alchemy4Tridion.Plugins.UserManager.GUI.ResourceGroups;

namespace Alchemy4Tridion.Plugins.UserManager.GUI.RibbonToolbar
{
    public class UserManagerRibbonToolbar : Alchemy4Tridion.Plugins.GUI.Configuration.RibbonToolbarExtension
    {
        public UserManagerRibbonToolbar()
        {
            // The unique identifier used for the html element created.
            AssignId = "UserManager";

            // The name of the command to execute when clicked
            Command = "";

            // The label of the button.
            Name = "Clone Rights";

            // The page tab to assign this extension to. See Constants.PageIds.
            PageId = Constants.PageIds.AdministrationPage;

            // The tooltip label that will get applied.
            Title = "Copy selected users rights to another user";

            // Add a dependency to the resource group that contains the files/commands that this toolbar extension will use.
           Dependencies.Add<UserManagerResourceGroup>();

            // apply the extension to a specific view.
            Apply.ToView(Constants.Views.DashboardView, "DashboardToolbar");
        }
    }
}
