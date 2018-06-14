using NHibernate;
using ServiceStack.ServiceInterface;

namespace QW.Services.Interfaces
{
    public class QwNhServiceBase : Service
    {
        protected readonly ISession QwNhSession;

        public QwNhServiceBase(ISession qwNhSession)
        {
            QwNhSession = qwNhSession;
            qwNhSession.BeginTransaction();
        }

        public override void Dispose()
        {
            if (QwNhSession.Transaction != null)
            {
                if (QwNhSession.Transaction.IsActive)
                {
                    QwNhSession.Transaction.Commit();
                }
                QwNhSession.Transaction.Dispose();
            }
            QwNhSession.Dispose();
            base.Dispose();
        }
    }
}