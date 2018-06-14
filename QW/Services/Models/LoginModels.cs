using ServiceStack.ServiceHost;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QW.Services.Models.Login
{
    public class LoginResponse
    {
        public bool Resultado { get; set; }
        public string Usuario { get; set; }
    }

    [Api("Login.")]
    [Route("/login", "POST, OPTIONS")]
    public class Login : IReturn<LoginResponse>
    {
        public string Codigo { get; set; }
        public string Documento { get; set; }
    }

    [Api("Logout.")]
    [Route("/logout", "GET, OPTIONS")]
    public class Logout : IReturn<LoginResponse>
    {
    }
}