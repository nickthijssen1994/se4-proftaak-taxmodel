namespace backend.Models
{
	public class JwtToken
	{
		public string Token { get; set; }

		public JwtToken(string token)
		{
			Token = token;
		}
	}
}
