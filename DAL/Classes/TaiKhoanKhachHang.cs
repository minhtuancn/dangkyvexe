using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL;
using System.Data;

namespace DAL
{
    public class TaiKhoanKhachHang
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
        private string _HoTenKH;

        public string HoTenKH
        {
            get { return _HoTenKH; }
            set { _HoTenKH = value; }
        }
        private string _DiaChi;

        public string DiaChi
        {
            get { return _DiaChi; }
            set { _DiaChi = value; }
        }
        private string _SoDienThoai;

        public string SoDienThoai
        {
            get { return _SoDienThoai; }
            set { _SoDienThoai = value; }
        }
        private string _Email;

        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }
        public TaiKhoanKhachHang()
        { }
        public static List<TaiKhoanKhachHang> ListTaiKhoanKH()
        {
            try
            {
                return CBO.FillCollection<TaiKhoanKhachHang>(DataProvider.Instance.ExecuteReader("TaiKhoanKhachHang_Select"));
            }
            catch
            {
                return new List<TaiKhoanKhachHang>();
            }
        }

        //Phan trang
        //        Đoạn code sau đây dùng để đọc dữ liệu từ bảng thứ 1 
        //reader.Read(); 
        //howManyPages = (int)Math.Ceiling((double)reader.GetInt32(0) / (double)pageSize);
 
        //Do bảng kết quả đầu tiên chỉ có 1 hàng nên bạn gọi read 1 lần sau đó chuyển kết 
        //quả vào biến howManyPages. Công thức trên để tính tống số trang và dựa vào đó 
        //bạn hiển thị lên danh sách các số trang cho người dùng chuyển hướng qua trang 
        //khác. 
        //Tiếp theo bạn gọi hàm reader.NextResult() để chuyển sang bảng kết quả 2. 
        //Bảng này là 1 danh sách product. Do đó bạn gọi hàm 
        //CBO.FillCollection<TaiKhoanKhachHang>(reader) để trả về một List<Product> 
        public static List<TaiKhoanKhachHang> Paging(string page, out int howManyPages)
        {
            IDataReader reader = null;
            try
            {
                int pageSize = GlobalConfiguration.PageSize;
                reader = DataProvider.Instance.ExecuteReader("TaiKhoanKhachHang_Page", page, GlobalConfiguration.PageSize);
                reader.Read();
                howManyPages = (int)Math.Ceiling((double)reader.GetInt32(0) / (double)pageSize);
                reader.NextResult();
                return CBO.FillCollection<TaiKhoanKhachHang>(reader);
            }
            catch
            {
                if (reader != null && reader.IsClosed == false)
                {
                    reader.Close();
                }
                howManyPages = 0;
                return new List<TaiKhoanKhachHang>();
            }
        }

        //Delete
        public static bool Delete(string id)
        {
            try
            {
                int result = DataProvider.Instance.ExecuteNonQuery("TaiKhoanKhachHang_Delete", id);
                return result > 0;
            }
            catch
            {
                return false;
            }
        }
    }
}
