#pragma checksum "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\_Cards.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "70aac40d8bbecf66560729a0c8cc917827e5304b"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Academy_Partial__Cards), @"mvc.1.0.view", @"/Views/Academy/Partial/_Cards.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools.Models.View_Model;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools.BLL.Services;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using OBETools.Utility;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 8 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Mvc;

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using System.Linq;

#line default
#line hidden
#nullable disable
#nullable restore
#line 10 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using MoreLinq;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"70aac40d8bbecf66560729a0c8cc917827e5304b", @"/Views/Academy/Partial/_Cards.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0de566846af86ce063b9bf726c0b790922d0238c", @"/Views/_ViewImports.cshtml")]
    public class Views_Academy_Partial__Cards : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<OBETools.Models.Academy>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"
    <div class=""row"">
        <div class=""col-xl-3 col-md-6"">
            <div class=""card custom-card-mission text-white mb-4"">
                <div class=""card-body d-flex align-items-center justify-content-between"">
                    <H3 class=""font-weight-light""> <i class=""fas fa-tasks""></i>&nbsp; MISSION</H3>
                    <H1 class=""font-weight-normal"">
                        ");
#nullable restore
#line 9 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\_Cards.cshtml"
                   Write(Model.Missions.Count);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                    </H1>
                </div>
            </div>
        </div>
        <div class=""col-xl-3 col-md-6"">
            <div class=""card custom-card-peo text-white mb-4"">
                <div class=""card-body d-flex align-items-center justify-content-between"">
                    <H3 class=""font-weight-light""><i class=""fab fa-stack-overflow""></i>&nbsp; PEO</H3>
                    <H1 class=""font-weight-normal"">
                        ");
#nullable restore
#line 19 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\_Cards.cshtml"
                   Write(Model.PEOs.Count);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                    </H1>
                </div>
            </div>
        </div>
        <div class=""col-xl-3 col-md-6"">
            <div class=""card custom-card-plo text-white mb-4"">
                <div class=""card-body d-flex align-items-center justify-content-between"">
                    <H3 class=""font-weight-light""><i class=""fas fa-receipt""></i>&nbsp; PLO</H3>
                    <H1 class=""font-weight-normal"">
                        ");
#nullable restore
#line 29 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\_Cards.cshtml"
                   Write(Model.PLOs.Count);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
                    </H1>
                </div>
            </div>
        </div>

        <div class=""col-xl-3 col-md-6"">
            <div class=""card custom-card-clo text-white mb-4"">
                <div class=""card-body d-flex align-items-center justify-content-between"">
                    <H3 class=""font-weight-light""><i class=""fab fa-discourse""></i>&nbsp; CLO</H3>
                    <H1 class=""font-weight-normal"">
                        ");
#nullable restore
#line 40 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\_Cards.cshtml"
                   Write(Model.CLOs.Count);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                    </H1>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n\r\n\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<OBETools.Models.Academy> Html { get; private set; }
    }
}
#pragma warning restore 1591