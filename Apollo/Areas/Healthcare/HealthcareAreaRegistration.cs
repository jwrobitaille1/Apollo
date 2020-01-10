using System.Web.Mvc;

namespace Apollo.Areas.Healthcare
{
    public class HealthcareAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Healthcare";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Healthcare_default",
                "Healthcare/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}