using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;

namespace backend.Security.Filters
{
    /*
      Created by: @cuongle
      Date: 27-10-2016
      Source: https://github.com/cuongle/WebApi.Jwt
     */

    public class AuthenticationFailureResult : IHttpActionResult
    {
        public AuthenticationFailureResult(string reasonPhrase, HttpRequestMessage request)
        {
            ReasonPhrase = reasonPhrase;
            Request = request;
        }

        public string ReasonPhrase { get; }

        public HttpRequestMessage Request { get; }

        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            return Task.FromResult(Execute());
        }

        private HttpResponseMessage Execute()
        {
            HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.Unauthorized)
            {
                RequestMessage = Request,
                ReasonPhrase = ReasonPhrase
            };

            return response;
        }
    }
}