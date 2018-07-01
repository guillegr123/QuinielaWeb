using ServiceStack.ServiceHost;
using ServiceStack.WebHost.Endpoints.Support;
using System;
using System.Collections.Generic;
using System.IO;
using ServiceStack.Text;
using System.Net;
using System.Web;

namespace QW.Handlers
{
    public class StaticFileHandler : EndpointHandlerBase
    {
        protected static readonly Dictionary<string, string> ExtensionContentType;

        protected FileInfo fi;

        static StaticFileHandler()
        {
            ExtensionContentType = new Dictionary<string, string>(StringComparer.InvariantCultureIgnoreCase)
        {
            { ".text", "text/plain" },
            { ".js", "text/javascript" },
            { ".css", "text/css" },
            { ".html", "text/html" },
            { ".htm", "text/html" },
            { ".png", "image/png" },
            { ".ico", "image/x-icon" },
            { ".gif", "image/gif" },
            { ".bmp", "image/bmp" },
            { ".jpg", "image/jpeg" }
        };
        }

        public string BaseDirectory { protected set; get; }
        public string Prefix { protected set; get; }

        public StaticFileHandler(string baseDirectory, string prefix)
        {
            BaseDirectory = baseDirectory;
            Prefix = prefix;
        }

        private StaticFileHandler(FileInfo fi)
        {
            this.fi = fi;
        }

        public static StaticFileHandler Factory(string baseDirectory, string prefix, string pathInfo)
        {
            if (!pathInfo.StartsWith(prefix, StringComparison.InvariantCultureIgnoreCase))
            {
                return null;
            }

            if ("/".Equals(pathInfo))
            {
                pathInfo = "/index.html";
            }

            var fn = baseDirectory + pathInfo.Substring(prefix.Length).Replace("/", "\\").Replace("%5c", "\\");

            var fi = new System.IO.FileInfo(fn);

            if (!fi.Exists)
            {
                return null;
            }

            return new StaticFileHandler(fi);
        }

        public override void ProcessRequest(IHttpRequest httpReq, IHttpResponse httpRes, string operationName)
        {
            using (Stream source = File.OpenRead(fi.FullName))
            {
                byte[] buffer = new byte[2048];
                int bytesRead;
                while ((bytesRead = source.Read(buffer, 0, buffer.Length)) > 0)
                {
                    httpRes.OutputStream.Write(buffer, 0, bytesRead);
                }
            }

            // timeStamp = fi.LastWriteTime;                        

            httpRes.AddHeader("Date", DateTime.Now.ToString("R"));
            string contentType;
            httpRes.AddHeader("Content-Type", ExtensionContentType.TryGetValue(fi.Extension, out contentType) ? contentType : "text/plain");
        }

        public override void ProcessRequest(HttpListenerContext context)
        {
            var response = context.Response;

            using (Stream source = File.OpenRead(fi.FullName))
            {
                byte[] buffer = new byte[2048];
                int bytesRead;
                while ((bytesRead = source.Read(buffer, 0, buffer.Length)) > 0)
                {
                    response.OutputStream.Write(buffer, 0, bytesRead);
                }
            }

            // timeStamp = fi.LastWriteTime;                        

            response.AddHeader("Date", DateTime.Now.ToString("R"));
            string contentType;
            response.AddHeader("Content-Type", ExtensionContentType.TryGetValue(fi.Extension, out contentType) ? contentType : "text/plain");
        }

        public override void ProcessRequest(HttpContext context)
        {
            var response = context.Response;

            using (Stream source = File.OpenRead(fi.FullName))
            {
                byte[] buffer = new byte[2048];
                int bytesRead;
                while ((bytesRead = source.Read(buffer, 0, buffer.Length)) > 0)
                {
                    response.OutputStream.Write(buffer, 0, bytesRead);
                }
            }

            // timeStamp = fi.LastWriteTime;                        

            response.AddHeader("Date", DateTime.Now.ToString("R"));
            string contentType;
            response.AddHeader("Content-Type", ExtensionContentType.TryGetValue(fi.Extension, out contentType) ? contentType : "text/plain");
        }

        public override object CreateRequest(IHttpRequest request, string operationName)
        {
            return null;
        }

        public override object GetResponse(IHttpRequest httpReq, IHttpResponse httpRes, object request)
        {
            return null;
        }
    }
}