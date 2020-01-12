using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;


namespace Apollo.Areas.Core.Models.Interface
{
    interface ICorporation
    {
        [Key]
        [Display(Name = "Corporation Catalog ID")]
        int Corporation_Catalog_ID { get; set; }

        [Display(Name = "Corporation Code")]
        string Corporation_Code { get; set; }

        [Display(Name = "Corporation Name")]
        string Corporation_Name { get; set; }

        [Display(Name = "Corporation Description")]
        [DataType(DataType.MultilineText)]
        string Corporation_Description { get; set; }

        [Display(Name = "Indusrty")]
        string Industry { get; set; }

        [Display(Name = "Corporation Type")]
        string Corporation_Type { get; set; }

        [Display(Name = "Date of Incorporation")]
        string Date_of_Incorpration { get; set; }

        [Display(Name = "Fiscal Year Start")]
        string Fiscal_Year_Start { get; set; }

        [Display(Name = "Number of Employees")]
        string Number_of_Employees { get; set; }

        [Display(Name = "Address")]
        string Address { get; set; }

        [Display(Name = "City")]
        string City { get; set; }

        [Display(Name = "State")]
        string State { get; set; }

        [Display(Name = "Zip Code")]
        string Zip_Code { get; set; }

        [Display(Name = "Area Code")]
        string Area_Code { get; set; }

        [Display(Name = "Phone Number")]
        string Phone_Number { get; set; }

        [Display(Name = "Extensions Name")]
        string Extensions_Name { get; set; }

        [Display(Name = "Extension")]
        string Extension { get; set; }

        [Display(Name = "Effective Start Date")]
        Nullable<System.DateTime> Effective_Start_Date { get; set; }

        [Display(Name = "Effective End Date")]
        Nullable<System.DateTime> Effective_End_Date { get; set; }

        [Display(Name = "Created Date")]
        Nullable<System.DateTime> Created_Date { get; set; }

        [Display(Name = "Created By")]
        string Created_By { get; set; }

        [Display(Name = "Updated Date")]
        Nullable<System.DateTime> Updated_Date { get; set; }

        [Display(Name = "Updated By")]
        string Updated_By { get; set; }

        [Display(Name = "Is Active")]
        Nullable<bool> Is_Active { get; set; }
    }
}
