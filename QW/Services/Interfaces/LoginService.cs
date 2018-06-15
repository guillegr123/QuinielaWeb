using NHibernate;
using QW.Data.Entities;
using QW.Services.Models.Login;
using ServiceStack.ServiceInterface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using QW.Extensions.String;

namespace QW.Services.Interfaces
{
    public class LoginService : QwNhServiceBase
    {
        public LoginService(ISession qwNhSession)
            : base(qwNhSession)
        {
        }

        /// <summary>
        /// POST /login
        /// </summary>
        /// <param name="credenciales"></param>
        /// <returns></returns>
        public object Post(Login credenciales)
        {
            if (credenciales == null)
            {
                throw new ArgumentNullException("Codigo");
            }
            var query = QwNhSession.QueryOver<Participante>()
                            .Where(x => x.Alias == credenciales.Alias);

            Participante p = query.SingleOrDefault();
            if (p == null)
            {
                return new LoginResponse() { Resultado = false };
            }
            else
            {
                if (string.IsNullOrEmpty(p.Contrasena))
                {
                    p.Contrasena = credenciales.Contrasena.ToSha256();
                    QwNhSession.Update(p);
                }
                else if (p.Contrasena != credenciales.Contrasena.ToSha256())
                {
                    return new LoginResponse() { Resultado = false };
                }

                base.Session.Set("IdParticipante", p.IdParticipante);
                return new LoginResponse() { Resultado = true, Usuario = p.Alias };
            }
        }

        public object Get(Logout credenciales)
        {
            Session.Set("IdParticipante", 0);
            return new LoginResponse() { Resultado = true };
        }
    }
}