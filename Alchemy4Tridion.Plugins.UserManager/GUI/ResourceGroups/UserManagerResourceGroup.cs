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
            AddFile("OpenRealTimePublishingQueue.js");
            AddFile("QueueCommand.js");

            //Add the CSS
            AddFile("RealTimePublishingQueuePopup.css");
            AddFile("RealTimePublishingQueueStyles.css");

            //Add the images
            AddFile("icon-15x16.png");
            AddFile("icon-32x32.png");

            AddFile<UserManagerCommandSet>();
            AddWebApiProxy();
            AttachToView("UserManager.aspx");
        }
    }
}
