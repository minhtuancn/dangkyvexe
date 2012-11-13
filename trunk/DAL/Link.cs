using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace DAL
{
    public class Link
    {
        private static string BuildAbsolute(string url)
        {
            Uri uri = HttpContext.Current.Request.Url;
            string app = HttpContext.Current.Request.ApplicationPath;
            if (!app.EndsWith("/"))
            {
                app += "/";
            }
            url = url.TrimStart('/');
            return HttpUtility.UrlPathEncode(String.Format("http://{0}:{1}{2}{3}", uri.Host, uri.Port, app, url));
        }
        
        //Phan trang tai khoan khach hang

        public static string ToTaiKhoanKH(string page)
        {
            if (page == "1")
            {
                return BuildAbsolute(String.Format("Admin/Acountkhachhang.aspx"));
            }
            else
            {
                return BuildAbsolute(String.Format("Admin/Acountkhachhang.aspx?Page={0}", page));
            }

        }
        public static string ToTaiKhoanKH()
        {
            return ToTaiKhoanKH("1");
        }
        public static string ToTaiKhoanKhachHangID(string Id)
        {
            return BuildAbsolute(String.Format("Admin/Acountkhachhang.aspx?Id={0}", Id));
        }

        //Phan trang cua lien he
        public static string ToLienHe(string page)
        {
            if (page == "1")
            {
                return BuildAbsolute(String.Format("Admin/Lienhe.aspx"));
            }
            else
            {
                return BuildAbsolute(String.Format("Admin/Lienhe.aspx?Page={0}", page));
            }
        }
        public static string ToLienHe()
        {
            return ToLienHe("1");
        }
        //Phan trang cua ve xe
        public static string ToVeXe(string page)
        {
            if (page == "1")
            {
                return BuildAbsolute(String.Format("Admin/VeXe.aspx"));
            }
            else
            {
                return BuildAbsolute(String.Format("Admin/VeXe.aspx?Page={0}",page));
            }
        }
        public static string ToVeXe()
        {
            return ToVeXe("1");
        }
        //Phan trang cua tuyen di
        public static string ToTuyenDi(String page)
        {
            if (page == "1")
            {
                return BuildAbsolute(String.Format("Admin/Tuyendi.aspx"));
            }
            else
            {
                return BuildAbsolute(String.Format("Admin/Tuyendi.aspx?Page={0}", page));
            }
        }
        public static string ToTuyenDi()
        {
            return ToTuyenDi("1");
        }
    }
}
