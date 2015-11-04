using Alchemy4Tridion.Plugins.GUI.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alchemy4Tridion.Plugins.UserManager.GUI.ResourceGroups
{
    public class UserManagerResourceGroup : ResourceGroup
    {
        public UserManagerResourceGroup()
        {
            //Add the Js files
            AddFile("OpenCloneUserPopup.js");

            //Add the CSS
            AddFile("UserManagerStyles.css");

            //Add the images
            AddFile("icon-16x16.png");
            AddFile("icon-32x32.png");

            AddFile<UserManagerCommandSet>();


            // If you want this resource group to contain the js proxies to call your webservice, call AddWebApiProxy()
            // AddWebApiProxy();

            // If you're not using any of the Dependencies.AddLibrary... or AddWebApiProxy(), you'll want to ensure
            // your resource group has access to the core alchemy library by using:
    
            Dependencies.AddAlchemyCore();

            // All other library or proxy dependencies already have the alchemy core as a dependency.
        }
    }
}
