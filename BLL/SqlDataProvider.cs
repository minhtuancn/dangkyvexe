using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.ApplicationBlocks.Data;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace BLL
{
    class SqlDataProvider : DataProvider
    {
        private string connectionString;//=@"DataSource=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\App_Data\QLDT.mdf; Integrated Security=True;User Instance=True";// = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Admin\Desktop\Nhom 28 - QuanLyCuaHangBanDiDong\QuanLyCuaHangBanDiDong\App_Data\QLDT.mdf;Integrated Security=True;User Instance=True";

        public SqlDataProvider(string connectionStringName)
        {
            this.connectionString = ConfigurationManager.ConnectionStrings[connectionStringName].ConnectionString;
        }

        private static void AssignParameterValues(SqlParameter[] commandParameters, object[] parameterValues)
        {
            if ((commandParameters == null) || (parameterValues == null))
            {
                // Do nothing if we get no data
                return;
            }

            // We must have the same number of values as we pave parameters to put them in
            if (commandParameters.Length != parameterValues.Length)
            {
                throw new ArgumentException("Parameter count does not match Parameter Value count.");
            }

            // Iterate through the SqlParameters, assigning the values from the corresponding position in the 
            // value array
            for (int i = 0, j = commandParameters.Length; i < j; i++)
            {
                // If the current array value derives from IDbDataParameter, then assign its Value property
                if (parameterValues[i] is IDbDataParameter)
                {
                    IDbDataParameter paramInstance = (IDbDataParameter)parameterValues[i];
                    if (paramInstance.Value == null)
                    {
                        commandParameters[i].Value = DBNull.Value;
                    }
                    else
                    {
                        commandParameters[i].Value = paramInstance.Value;
                    }
                }
                else if (parameterValues[i] == null)
                {
                    commandParameters[i].Value = DBNull.Value;
                }
                else
                {
                    commandParameters[i].Value = parameterValues[i];
                }
            }
        }

        public override object ExecuteNonQueryWithOutput(string outputParam, string spName, params object[] parameterValues)
        {
            SqlParameter[] parameters = SqlHelperParameterCache.GetSpParameterSet(connectionString, spName);
            AssignParameterValues(parameters, parameterValues);
            int rs = SqlHelper.ExecuteNonQuery(connectionString, CommandType.StoredProcedure, spName, parameters);
            if (rs > 0 && !string.IsNullOrEmpty(outputParam))
            {
                foreach (SqlParameter item in parameters)
                {
                    if (String.Compare(item.ParameterName, outputParam, true) == 0)
                        return item.Value;
                }
            }
            return null;
        }

        public override int ExecuteNonQuery(string spName, params object[] parameterValues)
        {
            return SqlHelper.ExecuteNonQuery(connectionString, spName, parameterValues);
        }

        public override DataSet ExecuteDataset(string spName, params object[] parameterValues)
        {
            return SqlHelper.ExecuteDataset(connectionString, spName, parameterValues);
        }

        public override IDataReader ExecuteReader(string spName, params object[] parameterValues)
        {
            return SqlHelper.ExecuteReader(connectionString, spName, parameterValues);
        }

        public override object ExecuteScalar(string spName, params object[] parameterValues)
        {
            return SqlHelper.ExecuteScalar(connectionString, spName, parameterValues);
        }
    }
}
