using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

/////////////////////////////////////////////////////////
/////////// Khai baó một lớp kiểu trừu tượng////////////
/////// Và lớp SQLDataProvider kế thừa các hàm này//////
///////////////////////////////////////////////////////
namespace BLL
{
    public abstract class DataProvider
    {
        //Thực hiện yêu cầu
        private static DataProvider instance = null;

        public static DataProvider Instance
        {
            get {
                    if (instance == null)
                    {
                        instance = new SQLDataProvider("KetNoi");
                    }
                    return instance;
                }
        }
        public abstract object ExecuteNonQueryWithOutput(string outputParam, string spName, params object[] parameterValues);
        public abstract int ExecuteNonQuery(string spName, params object[] parameterValues);
        public abstract DataSet ExecuteDataset(string spName, params object[] parameterValues);
        public abstract IDataReader ExecuteReader(string spName, params object[] parameterValues);
        public abstract object ExecuteScalar(string spName, params object[] parameterValues);
    }
}
