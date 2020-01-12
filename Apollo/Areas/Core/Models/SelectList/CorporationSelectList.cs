using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Apollo.Areas.Core.Models.Database;


namespace Apollo.Areas.Core.Models.SelectList
{
    public class CorporationSelectList
    {
            public static List<SelectListItem> ActiveCorporationsFromCatalog
            {
                get
                {
                    List<SelectListItem> sl = new List<SelectListItem>();

                    SelectListItem item = new SelectListItem();
                    item.Text = "Non Selected";
                    item.Value = "Non Selected";
                    sl.Add(item);

                    using (edmCore db = new edmCore())
                    {
                        var records = (from gl in db.Corporation_Catalog

                                       where gl.Is_Active == true

                                       orderby gl.Corporation_Code

                                       select gl
                                       );

                        foreach (var i in records)
                        {
                            SelectListItem sli = new SelectListItem();
                            sli.Value = i.Corporation_Catalog_ID.ToString();
                            sli.Text = i.Corporation_Description.ToString() + " (" + i.Corporation_Code.ToString() + ")";
                            sl.Add(sli);
                        }

                        if (sl.Count < 1)
                        {
                            SelectListItem sli = new SelectListItem();
                            sli.Value = "-1";
                            sli.Text = "List Item Not Defined";
                            sl.Add(sli);
                        }

                        return sl;
                    }
                }
            }
        
    }

}