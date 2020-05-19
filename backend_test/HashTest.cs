using backend.Helpers;
using NUnit.Framework;

namespace backend_test
{
    public class Tests
    {
        private string password;
        private string hash;
        private PasswordHasher hasher;

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