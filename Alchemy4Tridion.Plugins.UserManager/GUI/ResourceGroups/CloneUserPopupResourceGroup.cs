using Alchemy4Tridion.Plugins.GUI.Configuration;
using Alchemy4Tridion.Plugins.GUI.Configuration.Elements;

namespace Alchemy4Tridion.Plugins.UserManager.GUI.ResourceGroups
{
    public class CloneUserPopupResourceGroup : Alchemy4Tridion.Plugins.GUI.Configuration.ResourceGroup
    {
        public CloneUserPopupResourceGroup()
        {
            AddFile("TridionUI.css");
            AttachToView("CloneUser.aspx");
            Dependencies.AddLibraryJQuery();
        }
    }
}
