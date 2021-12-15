using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebDienThoaiCDIO5
{
    public class KetNoi
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection conn;
        private void moKetNoi()
        {
            conn = new SqlConnection(connStr);
            conn.Open();
        }
        private void dongKetNoi()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        public DataTable layDL(string strSql)
        {
            DataTable dt = new DataTable();
            try
            {
                moKetNoi();
                SqlDataAdapter da = new SqlDataAdapter(strSql, conn);
                da.Fill(dt);
            }
            catch (Exception)
            {
                dt = null;
                throw;
            }
            finally
            {
                dongKetNoi();
            }
            return dt;
        }
        public int xuLy(string sqlStr)
        {
            int kq = 0;
            try
            {
                moKetNoi();
                SqlCommand cmd = new SqlCommand(sqlStr, conn);
                kq = cmd.ExecuteNonQuery();
            }
            catch
            {
                kq = 0;
                throw;
            }
            finally
            {
                dongKetNoi();
            }
            return kq;
        }
    }
}