#pragma checksum "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cbcde3f03895e7a0e992fff517f8cca42dd206d9"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_Notifications__Notification), @"mvc.1.0.view", @"/Views/Shared/Notifications/_Notification.cshtml")]
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
using System.Linq;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "E:\Bitbucket\obetools\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Mvc;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cbcde3f03895e7a0e992fff517f8cca42dd206d9", @"/Views/Shared/Notifications/_Notification.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1f0ebc7ea8b16518cbd83662429109cf5217ca59", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared_Notifications__Notification : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
 if (TempData["Error"] != null)
{


#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"alert alert-succes\" style=\"font-size:10px\" role=\"alert\">\r\n        ");
#nullable restore
#line 6 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
   Write(TempData["Error"].ToString());

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n            <span aria-hidden=\"true\">&times;</span>\r\n        </button>\r\n    </div>\r\n");
#nullable restore
#line 11 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
}

#line default
#line hidden
#nullable disable
#nullable restore
#line 12 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
 if (TempData["Success"] != null)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"alert alert-success\" role=\"alert\">\r\n        ");
#nullable restore
#line 15 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
   Write(TempData["Success"].ToString());

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n            <span aria-hidden=\"true\">&times;</span>\r\n        </button>\r\n    </div>\r\n");
#nullable restore
#line 20 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
#nullable restore
#line 22 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
 if (ViewData["Error"] != null)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"alert alert-danger\" role=\"alert\">\r\n        ");
#nullable restore
#line 25 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
   Write(ViewData["Error"].ToString());

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n            <span aria-hidden=\"true\">&times;</span>\r\n        </button>\r\n    </div>\r\n");
#nullable restore
#line 30 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
}

#line default
#line hidden
#nullable disable
#nullable restore
#line 31 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
 if (ViewData["Success"] != null)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"alert alert-success\" role=\"alert\">\r\n        ");
#nullable restore
#line 34 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
   Write(ViewData["Success"].ToString());

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n            <span aria-hidden=\"true\">&times;</span>\r\n        </button>\r\n    </div>\r\n");
#nullable restore
#line 39 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
}

#line default
#line hidden
#nullable disable
#nullable restore
#line 40 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
 if (ViewData["Warning"] != null)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"alert alert-warning\" role=\"alert\">\r\n        ");
#nullable restore
#line 43 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
   Write(ViewData["Warning"].ToString());

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n            <span aria-hidden=\"true\">&times;</span>\r\n        </button>\r\n    </div>\r\n");
#nullable restore
#line 48 "E:\Bitbucket\obetools\Views\Shared\Notifications\_Notification.cshtml"
}

#line default
#line hidden
#nullable disable
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
