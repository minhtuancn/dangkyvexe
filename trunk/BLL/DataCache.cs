using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

////////////////////////////////////////////////////////////////
////// Lớp DataCache viet cac ham de su dung cho lop CBO///////
//////////////////////////////////////////////////////////////

namespace BLL
{
    public class DataCache
    {
        // Lấy được bộ nhớ đệm
        public static object GetCache(string cachekey)
        {
            return HttpRuntime.Cache[cachekey];
        }

        public static void RemoveCache(string cachekey)
        {
            System.Web.Caching.Cache objcache = HttpRuntime.Cache;
            if (!Convert.ToBoolean(objcache[cachekey] == null))// neu ma khac null
                objcache.Remove(cachekey);
        }
        public static void SetCache(string cachekey, object objObject)
        {
            HttpRuntime.Cache.Insert(cachekey, objObject);
        }
        public static void SetCache(string cachekey, object objObject, DateTime AbsoluteExpiration)
        {
            HttpRuntime.Cache.Insert(cachekey, objObject, null, AbsoluteExpiration, TimeSpan.Zero);
        }
        public static void SetCache(string cachekey, object objObject, int SlidingExpiration)
        {
            HttpRuntime.Cache.Insert(cachekey, objObject, null, DateTime.MaxValue, TimeSpan.FromSeconds((double)SlidingExpiration));
        }
        public static void SetCache(string cachekey, object objObject, System.Web.Caching.CacheDependency objDependency)
        {
            HttpRuntime.Cache.Insert(cachekey, objObject, objDependency);
        }
    }
}
