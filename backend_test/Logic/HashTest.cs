using backend.Helpers;
using NUnit.Framework;

namespace Logic
{
    public class HashTest
    {
        private string hash;
        private PasswordHasher hasher;
        private string password;

        [SetUp]
        public void Setup()
        {
            password = "testpass";
            hasher = new PasswordHasher();
        }

        [Test]
        public void HashPassword()
        {
            hash = hasher.GenerateHash(password);
            Assert.AreNotEqual(hash, password);
        }

        [Test]
        public void VerifyHash()
        {
            hash = hasher.GenerateHash(password);
            Assert.IsTrue(hasher.VerifyHash(password, hash));
        }
    }
}