#pragma checksum "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "c1a350821d2720b41594b28979defd53fe3a88be"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_CourseManager_Partial_CourseRegistrations), @"mvc.1.0.view", @"/Views/CourseManager/Partial/CourseRegistrations.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using OBETools;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using OBETools.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using OBETools.Models.View_Model;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using OBETools.BLL.Services;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using OBETools.Utility;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 8 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Mvc;

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using System.Linq;

#line default
#line hidden
#nullable disable
#nullable restore
#line 10 "E:\Bitbucket\Research\obetools\Views\_ViewImports.cshtml"
using MoreLinq;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c1a350821d2720b41594b28979defd53fe3a88be", @"/Views/CourseManager/Partial/CourseRegistrations.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0de566846af86ce063b9bf726c0b790922d0238c", @"/Views/_ViewImports.cshtml")]
    public class Views_CourseManager_Partial_CourseRegistrations : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<CourseRegistration>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
  
    int count = 1;

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<hr class=""c-hr-gray"" />
<div class="" row pb-2 pt-1"">
    <div class=""text-left col-md-6"">
        <h5 class=""font-weight-light""><i class=""fas fa-list p-1""></i>Registration Information</h5>
    </div>
</div>

<div class=""card mb-4"">
    <div class=""card-body"">
        <div class=""table-responsive"">
            <table class=""table table-bordered display MultipleDataTable"" id=""dataTable_User"" width=""100%"" cellspacing=""0"">
                <thead>
                    <tr class=""custom-table-user text-center"">
                        <th class=""text-left"">Sl No.</th>
                        <th colspan=""1"">");
#nullable restore
#line 20 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                                   Write(Html.DisplayNameFor(model => model.StudentId));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>");
#nullable restore
#line 21 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayNameFor(model => model.RegistrationInformation.Course.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>");
#nullable restore
#line 22 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayNameFor(model => model.RegistrationInformation.Course.Code));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>");
#nullable restore
#line 23 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayNameFor(model => model.RegistrationInformation.ClassDay));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>");
#nullable restore
#line 24 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayNameFor(model => model.RegistrationInformation.ClassTimeStart));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>");
#nullable restore
#line 25 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayNameFor(model => model.RegistrationInformation.ClassTimeEnd));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>Action</th>\r\n                    </tr>\r\n                </thead>\r\n\r\n                <tbody>\r\n");
#nullable restore
#line 31 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                     foreach (var item in Model)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <tr>\r\n                        <td>");
#nullable restore
#line 34 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                        Write(count++);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        <td>");
#nullable restore
#line 35 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayFor(modelItem => item.StudentId));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        <td>");
#nullable restore
#line 36 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayFor(modelItem => item.RegistrationInformation.Course.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        <td>");
#nullable restore
#line 37 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayFor(modelItem => item.RegistrationInformation.Course.Code));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        <td>");
#nullable restore
#line 38 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayFor(modelItem => item.RegistrationInformation.ClassDay));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        <td>");
#nullable restore
#line 39 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayFor(modelItem => item.RegistrationInformation.ClassTimeStart));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        <td>");
#nullable restore
#line 40 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                       Write(Html.DisplayFor(modelItem => item.RegistrationInformation.ClassTimeEnd));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</td>
                        <td class=""text-center"" style=""font-size: .75em"">
                            <a class=""p-1""><i class=""far fa-edit text-info""></i></a>
                            <a class=""p-1""><i class=""far fa-eye text-danger""></i></a>
                            <!--
                                 <a class=""p-1"" onclick=""return confirm('Are you sure you want to delete?')"" asp-action=""DeleteMission"" asp-controller=""Academy"" asp-route-id=""");
#nullable restore
#line 45 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                                                                                                                                                                          Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\"><i class=\"far fa-trash-alt text-danger\"></i></a>\r\n                            -->\r\n                        </td>\r\n                    </tr>\r\n");
#nullable restore
#line 49 "E:\Bitbucket\Research\obetools\Views\CourseManager\Partial\CourseRegistrations.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                </tbody>\r\n            </table>\r\n        </div>\r\n    </div>\r\n</div>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<CourseRegistration>> Html { get; private set; }
    }
}
#pragma warning restore 1591
