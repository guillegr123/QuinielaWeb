using NHibernate;
using QW.Data.Entities;
using QW.Services.Models.Login;
using ServiceStack.ServiceInterface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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
                            .Where(x => x.CodigoEmpleado == credenciales.Codigo && x.Dui == credenciales.Documento);

            Participante p = query.SingleOrDefault();
            if (p == null)
            {
                return new LoginResponse() { Resultado = false };
            }
            else
            {
                base.Session.Set<int>("IdParticipante", p.IdParticipante);
                return new LoginResponse() { Resultado = true, Usuario = p.Nombre };
            }
        }

        public object Get(Logout credenciales)
        {
            Session.Set<int>("IdParticipante", 0);
            return new LoginResponse() { Resultado = true };
        }
    }
}