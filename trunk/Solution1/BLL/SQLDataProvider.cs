using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;
using System.Data;

/////////////////////////////////////////////////////////
/////////// Sử dụng hàm SQLHelper đế các hàm ////////////
/////// viết trong SQLDataProvider có thể tối ưu //////
///////////////////////////////////////////////////////
namespace BLL
{
    public class SQLDataProvider: DataProvider
    {
        private string connectionString; // Khai báo 1 chuỗi kết nối kiểu string
        public SQLDataProvider(string conectionName)
        {
            //Thực hiện hàm kết nối tới cơ sở dữ liệu qua App.Config
            this.connectionString = ConfigurationManager.ConnectionStrings[conectionName].ConnectionString;
        }
        //Tự động gán giá trị cho các tham số (đối tượng SQLParamater)
        private void AssignParameterValues(SqlParameter[] commandParameter, object[] parameterValues)
        {
            if ((commandParameter == null) || (parameterValues == null))
            {
                return;
            }
            else if (commandParameter.Length != parameterValues.Length)// Số tham số không phù hợp với tính giá trị thông số
            {
                for (int i = 0, j = commandParameter.Length; i < j; i++)
                {
                    commandParameter[i].Value = parameterValues[i];
                }
            }
        }
        public override object ExecuteNonQueryWithOutput(string outputParam, string spName, params object[] parameterValues)
        {
            if (string.IsNullOrEmpty(outputParam))// Null or trống rỗng
                throw new ArgumentException("Giá trị null hoặc trống rỗng");
            SqlParameter[] parameter = SqlHelperParameterCache.GetSpParameterSet(connectionString, spName);
            SqlParameter sqlParameter = null;
            foreach (SqlParameter item in parameter)
            {
                if (String.Compare(item.ParameterName, outputParam, true) == 0)
                {
                    sqlParameter = item;
                    break;
                }
            }
            if (sqlParameter == null)// Tham số không tìm thấy
                throw new ArgumentException("Tham số không tìm thấy");
            AssignParameterValues(parameter, parameterValues);
            int rows = SqlHelper.ExecuteNonQuery(connectionString, CommandType.StoredProcedure, spName, parameter);
            // Thực hiện gọi hàm đầu tiên là chuỗi kết nối, tạo 1 cái thủ tục, tên thủ tục)
            if (rows > 0)
            {
                return sqlParameter.Value;
            }
            return null;
        }

        public override int ExecuteNonQuery(string spName, params object[] parameterValues)
        {
            return SqlHelper.ExecuteNonQuery(connectionString, spName, parameterValues);
        }

        public override System.Data.DataSet ExecuteDataset(string spName, params object[] parameterValues)
        {
            return SqlHelper.ExecuteDataset(connectionString, spName, parameterValues);
        }

        public override System.Data.IDataReader ExecuteReader(string spName, params object[] parameterValues)
        {
            return SqlHelper.ExecuteReader(connectionString, spName, parameterValues);
        }

        public override object ExecuteScalar(string spName, params object[] parameterValues)
        {
            return SqlHelper.ExecuteScalar(connectionString, spName, parameterValues);
            // paramaterValues kieu tra ve la mot mang mang cac tham so nhu ho ten, ma so, lop....;
        }
    }
}
