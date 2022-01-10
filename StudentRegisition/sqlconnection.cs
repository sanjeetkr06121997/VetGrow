using System;
using System.Data.SqlClient;

namespace StudentRegisition
{
    internal class sqlconnection
    {
        internal object com;

        internal void Open()
        {
            throw new NotImplementedException();
        }

        public static implicit operator sqlconnection(SqlConnection v)
        {
            throw new NotImplementedException();
        }

        internal void Close()
        {
            throw new NotImplementedException();
        }
    }
}