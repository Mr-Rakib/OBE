#pragma checksum "E:\Bitbucket\obetools\Views\User\Partial\_Cards.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "4ddc3253bb338ac1feb1f1ae750c481dc04e07db"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_User_Partial__Cards), @"mvc.1.0.view", @"/Views/User/Partial/_Cards.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools.Models.View_Model;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools.BLL.Services;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools.Utility;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 8 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Mvc;

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using System.Linq;

#line default
#line hidden
#nullable disable
#nullable restore
#line 10 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using MoreLinq;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4ddc3253bb338ac1feb1f1ae750c481dc04e07db", @"/Views/User/Partial/_Cards.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0de566846af86ce063b9bf726c0b790922d0238c", @"/Views/_ViewImports.cshtml")]
    public class Views_User_Partial__Cards : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Users>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "E:\Bitbucket\obetools\Views\User\Partial\_Cards.cshtml"
   
    int Admins = Model.Staffs.FindAll(st => st.Login.Role.ToLower() == Roles.Admin.ToString().ToLower()).Count ;
    int Staffs = Model.Staffs.Count;
    int Students = Model.Students.Count;

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div class=""row"">
    <div class=""col-xl-4 col-md-6"">
        <div class=""card custom-card-admin text-white mb-4"">
            <div class=""card-body d-flex align-items-center justify-content-between"">
                <H3 class=""font-weight-light""> <i class=""fas fa-user-shield""></i>&nbsp; Admin</H3>
                <H1 class=""font-weight-normal"">
                    ");
#nullable restore
#line 14 "E:\Bitbucket\obetools\Views\User\Partial\_Cards.cshtml"
               Write(Admins);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                </H1>
            </div>
        </div>
    </div>
    <div class=""col-xl-4 col-md-6"">
        <div class=""card custom-card-staff text-white mb-4"">
            <div class=""card-body d-flex align-items-center justify-content-between"">
                <H3 class=""font-weight-light""><i class=""fas fa-chalkboard-teacher""></i>&nbsp; Staffs</H3>
                <H1 class=""font-weight-normal"">
                    ");
#nullable restore
#line 24 "E:\Bitbucket\obetools\Views\User\Partial\_Cards.cshtml"
               Write(Staffs);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                </H1>
            </div>
        </div>
    </div>
    <div class=""col-xl-4 col-md-6"">
        <div class=""card custom-card-student text-white mb-4"">
            <div class=""card-body d-flex align-items-center justify-content-between"">
                <H3 class=""font-weight-light""><i class=""fas fa-user-graduate""></i>&nbsp; Students</H3>
                <H1 class=""font-weight-normal"">
                    ");
#nullable restore
#line 34 "E:\Bitbucket\obetools\Views\User\Partial\_Cards.cshtml"
               Write(Students);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </H1>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n\r\n\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Users> Html { get; private set; }
    }
}
#pragma warning restore 1591