using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL;
using System.Configuration;

namespace DAL
{
    public class GlobalConfiguration
    {
        private static int pageSize;

        public static int PageSize
        {
            get { return GlobalConfiguration.pageSize; }
        }
        private static int desCriptionLength;

        public static int DesCriptionLength
        {
            get { return GlobalConfiguration.desCriptionLength; }
        }
        private static string siteName;

        public static string SiteName
        {
            get { return GlobalConfiguration.siteName; }
        }
        static GlobalConfiguration()
        {
            pageSize = Convert.ToInt32(ConfigurationManager.AppSettings["PageSize"]);//Cau hinh ben appconfig
            desCriptionLength = Convert.ToInt32(ConfigurationManager.AppSettings["DesLength"]);
            siteName = ConfigurationManager.AppSettings["SiteName"];
        }
    }
}