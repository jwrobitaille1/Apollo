using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Apollo.Areas.Core.Models.Database;
using Apollo.Areas.Core.Models.Interface;


namespace Apollo.Areas.Core.Models.ViewModel
{

        public class vmCreateCorporationCatalog : Corporation_Catalog
        {
            public List<SelectListItem> CorporationDropDownList
            {
                get
                {
                    return Apollo.Areas.Core.Models.SelectList.CorporationSelectList.ActiveCorporationsFromCatalog;
                }
            }
            //public List<SelectListItem> CorporationTypeDropDownList
            //{
            //    get
            //    {
            //        return Apollo.Areas.Core.Models.SelectList.CorporationTypeSelectList.ActiveCorporationTypesFromCatalog;
            //    }
            //}
            //public List<SelectListItem> IndustryDropDownList
            //{
            //    get
            //    {
            //        return DataPhyx_Web_App.Areas.AccountingAndFinance.Models.SelectList.IndustrySelectList.ActiveIndustriesFromCatalog;
            //    }
            //}
        }
   
}