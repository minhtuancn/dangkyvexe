using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    public class TaiKhoanAdmin
    {
        private int _MaTK;

        public int MaTK
        {
            get { return _MaTK; }
            set { _MaTK = value; }
        }
        private string _TenDangNhap;

        public string TenDangNhap
        {
            get { return _TenDangNhap; }
            set { _TenDangNhap = value; }
        }
        private string _MatKhau;

        public string MatKhau
        {
            get { return _MatKhau; }
            set { _MatKhau = value; }
        }
    }
}
