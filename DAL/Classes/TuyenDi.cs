using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL;
using System.Data;

namespace DAL
{
    public class TuyenDi
    {
        private int _MaTuyen;

        public int MaTuyen
        {
            get { return _MaTuyen; }
            set { _MaTuyen = value; }
        }
        private string _BenDi;

        public string BenDi
        {
            get { return _BenDi; }
            set { _BenDi = value; }
        }
        private string _BenDen;

        public string BenDen
        {
            get { return _BenDen; }
            set { _BenDen = value; }
        }
        private string _LoaiXe;

        public string LoaiXe
        {
            get { return _LoaiXe; }
            set { _LoaiXe = value; }
        }
        private DateTime _ThoiGian;

        public DateTime ThoiGian
        {
            get { return _ThoiGian; }
            set { _ThoiGian = value; }
        }
        private decimal _GiaVe;

        public decimal GiaVe
        {
            get { return _GiaVe; }
            set { _GiaVe = value; }
        }
        private int _ChoTrong;

        public int ChoTrong
        {
            get { return _ChoTrong; }
            set { _ChoTrong = value; }
        }
        private string _PhuThu;

        public string PhuThu
        {
            get { return _PhuThu; }
            set { _PhuThu = value; }
        }
        private string _GhiChu;

        public string GhiChu
        {
            get { return _GhiChu; }
            set { _GhiChu = value; }
        }
        private string _PhanBietTuyen;

        public string PhanBietTuyen
        {
            get { return _PhanBietTuyen; }
            set { _PhanBietTuyen = value; }
        }
        public TuyenDi()
        { }
        public static List<TuyenDi> ListTuyenDi()
        {
            try
            {
                return CBO.FillCollection<TuyenDi>(DataProvider.Instance.ExecuteReader("TuyenDi_Select"));
            }
            catch
            {
                return new List<TuyenDi>();
            }
        }
        public static List<TuyenDi> Paging(string page,out int howManyPage)
        {
            IDataReader reader = null;
            try
            {
                int pageSize = GlobalConfiguration.PageSize;
                reader = DataProvider.Instance.ExecuteReader("TuyenDi_Pages", page, GlobalConfiguration.PageSize);
                reader.Read();
                howManyPage = (int)Math.Ceiling((double)reader.GetInt32(0) / (double)pageSize);
                reader.NextResult();
                return CBO.FillCollection<TuyenDi>(reader);
            }
            catch
            {
                if (reader != null && reader.IsClosed == false)
                {
                    reader.Close();
                }
                howManyPage = 0;
                return new List<TuyenDi>();
            }
        }
        //Delte tuyen
        public static bool Delete(string id)
        {
            try
            {
                int result = DataProvider.Instance.ExecuteNonQuery("TuyenDi_Delete", id);
                return result > 0;
            }
            catch
            {
                return false;
            }
        }
    }
}
