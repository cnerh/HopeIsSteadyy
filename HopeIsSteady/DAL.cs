using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HopeIsSteady
{
    public class DAL
    {
        SqlConnection sqlConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HopeSteadyCSN"].ConnectionString);
      //  SqlDataAdapter sqlDataAdapter = null;
       // SqlDataReader sqlDataReader = null;
        
        public void CreateUser(string UserFirstName, string UserSurname, string UserName, string Password, int UserTypeId)
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spUserCreate", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@UserFirstName", UserFirstName);
            sqlCommand.Parameters.AddWithValue("@UserSurname", UserSurname);
            sqlCommand.Parameters.AddWithValue("@UserName", UserName);
            sqlCommand.Parameters.AddWithValue("@UserPassword", Password);
            sqlCommand.Parameters.AddWithValue("@UserTypeId", UserTypeId);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public void CreateMaterial(string MaterialName, double MaterialPrice, string CostPerMaterial, int ServiceId)
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spMaterialCreate", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@MaterialName", MaterialName);
            sqlCommand.Parameters.AddWithValue("@MaterialPrice", MaterialPrice);
            sqlCommand.Parameters.AddWithValue("@CostPerMaterial", CostPerMaterial);
            sqlCommand.Parameters.AddWithValue("@ServiceId", ServiceId);         
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public void CreateLikes(int hfBlogId, string UserName)
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spLikeCreate", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@BlogId", Convert.ToInt32(hfBlogId));
            sqlCommand.Parameters.AddWithValue("@UserName", UserName);


            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public void CreateBlog(string Username, string Content, string Title)
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spBlogCreate", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@Username", Username);
            sqlCommand.Parameters.AddWithValue("@Content", Content);
            sqlCommand.Parameters.AddWithValue("@Title", Title);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public void CreateService(string ServiceName, byte[] ServicePicture,string ContentType,string PictureName,string ServiceDescription)
        {
        if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spServiceCreate", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@ServiceName", ServiceName);
            sqlCommand.Parameters.AddWithValue("@ServicePicture", ServicePicture);
            sqlCommand.Parameters.AddWithValue("@ContentType", ContentType);
            sqlCommand.Parameters.AddWithValue("@PictureName", PictureName);
            sqlCommand.Parameters.AddWithValue("@ServiceDescription", ServiceDescription);

            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public void CreateUserType(string UserTypeName)
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spUserTypeCreate", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@UserTypeName", UserTypeName);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public DataTable ReadUser()
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("spUserRead", sqlConnection);
            sqlDataAdapter.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);

            sqlConnection.Close();
            return dataTable;
        }


        public DataTable BlogRead()
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("spBlogRead", sqlConnection);
            sqlDataAdapter.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);

            sqlConnection.Close();
            return dataTable;
        }
        //public void DropdownUserType()
        //{
        //    if (sqlConnection.State == System.Data.ConnectionState.Closed)
        //        sqlConnection.Open();
        //    SqlCommand sqlCommand = new SqlCommand("spUserTypeRead", sqlConnection);
        //    sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
        //    sqlDataReader = sqlCommand.ExecuteReader();
        //    sqlConnection.Close();
        //    sqlDataReader.Close();
        //}
        public void DeleteUser(int HopeSteadyUserId)
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spUserDelete", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@HopeSteadyUserId", HopeSteadyUserId);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

        public void DeleteUserType(int UserTypeId)
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
                sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spUserTypeDelete", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@UserTypeId", UserTypeId);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        public DataTable Login(string UserName, string UserPassword)
        {
            //if (sqlConnection.State == System.Data.ConnectionState.Closed)
            //    sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand("spUserLogin", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("@UserName", UserName);
            sqlCommand.Parameters.AddWithValue("@Password", UserPassword);
            // SqlDataReader sdr = sqlCommand.ExecuteReader();
            SqlDataAdapter sda = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            sqlConnection.Open();
            int i = sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            return dt;

        }

    }
}