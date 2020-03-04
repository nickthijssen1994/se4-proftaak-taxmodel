using NUnit.Framework;

namespace proftaakTests
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            Assert.AreEqual("Hello", "Hello");
        }
    }
}