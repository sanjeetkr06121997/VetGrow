using System;
using System.Data.SqlClient;

namespace StudentRegisition
{
    internal class Sqlconnection
    {
        private string v;

        public Sqlconnection(string v)
        {
            this.v = v;
        }

        public static implicit operator Sqlconnection(SqlConnection v)
        {
            throw new NotImplementedException();
        }
    }
}