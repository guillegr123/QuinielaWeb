using System.Security.Cryptography;
using System.Text;

namespace QW.Extensions.String
{
    public static class StringExtensions
    {
        public static string ToSha256(this string value)
        {
            var crypt = new SHA256Managed();
            var hash = new StringBuilder();
            byte[] crypto = crypt.ComputeHash(Encoding.UTF8.GetBytes(value));
            foreach (byte theByte in crypto)
            {
                hash.Append(theByte.ToString("x2"));
            }
            return hash.ToString();
        }
    }
}