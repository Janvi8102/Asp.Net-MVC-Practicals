using Microsoft.VisualStudio.TestTools.UnitTesting;
using Practical8_3.Controllers;
using System;
using System.Web.Mvc;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            //Arrange
            TestController controller = new TestController();

            //Act
            ViewResult test_result = controller.Index() as ViewResult;

            //Assert
            Assert.AreEqual("Hello World", test_result.ViewData["Message"]);

        }
    }
}
