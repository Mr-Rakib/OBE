#pragma checksum "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5a414be039645dc0fb1bcd9846f3f2ea9629011d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Academy_Partial_PLOs), @"mvc.1.0.view", @"/Views/Academy/Partial/PLOs.cshtml")]
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
#line 5 "R:\University Period\Research\Bitbucket\obetools\Views\_ViewImports.cshtml"
using System.Linq;

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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5a414be039645dc0fb1bcd9846f3f2ea9629011d", @"/Views/Academy/Partial/PLOs.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"747c42f5f4e2f03f70a6f9f4d06a0ff9c6531df8", @"/Views/_ViewImports.cshtml")]
    public class Views_Academy_Partial_PLOs : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<OBETools.Models.PLO>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-info btn-custom-style"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "CreatePLO", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Academy", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("p-1"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "EditPLO", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
            WriteLiteral("\r\n");
#nullable restore
#line 4 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
  
    int count = 1;

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"text-right col-md-12 pb-2\">\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "5a414be039645dc0fb1bcd9846f3f2ea9629011d6093", async() => {
                WriteLiteral("<i class=\"fas fa-plus-circle\"></i>&nbsp;Create PLO");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
</div>
<div class=""card mb-4"">
    <div class=""card-body"">
        <div class=""table-responsive"">
            <table class=""table table-bordered display MultipleDataTable"" id=""dataTable_User"" width=""100%"" cellspacing=""0"">
                <thead>
                    <tr class=""custom-table-user text-center"">
                        <th class=""text-left"">Sl No.</th>
                        <th>");
#nullable restore
#line 18 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                       Write(Html.DisplayNameFor(model => model.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>");
#nullable restore
#line 19 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                       Write(Html.DisplayNameFor(model => model.Program.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>");
#nullable restore
#line 20 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                       Write(Html.DisplayNameFor(model => model.Description));

#line default
#line hidden
#nullable disable
            WriteLiteral("</th>\r\n                        <th>Action</th>\r\n                    </tr>\r\n                </thead>\r\n\r\n                <tbody>\r\n");
#nullable restore
#line 26 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                     foreach (var item in Model)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <tr>\r\n                            <td>");
#nullable restore
#line 29 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                            Write(count++);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 30 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                           Write(Html.DisplayFor(modelItem => item.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 31 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                           Write(Html.DisplayFor(modelItem => item.Program.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 32 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                           Write(Html.DisplayFor(modelItem => item.Description));

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                            <td class=\"text-center\" style=\"font-size: .75em\">\r\n                                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "5a414be039645dc0fb1bcd9846f3f2ea9629011d10685", async() => {
                WriteLiteral("<i class=\"far fa-edit text-info\"></i>");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 34 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                                                                                               WriteLiteral(item.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                <a class=\"p-1\" title=\"View Details\" data-toggle=\"modal\" data-target=\"#view-plo-modal\" data-id=\"");
#nullable restore
#line 35 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                                                                                                                          Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"""><i class=""far fa-eye text-secondery""></i></a>
                                <!--
                                    <a class=""p-1"" onclick=""return confirm('Are you sure you want to delete?')"" asp-action=""DeletePLO"" asp-controller=""Academy"" asp-route-id=""");
#nullable restore
#line 37 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                                                                                                                                                                         Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\"><i class=\"far fa-trash-alt text-danger\"></i></a>\r\n                                -->\r\n                            </td>\r\n                        </tr>\r\n");
#nullable restore
#line 41 "R:\University Period\Research\Bitbucket\obetools\Views\Academy\Partial\PLOs.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                </tbody>\r\n            </table>\r\n        </div>\r\n    </div>\r\n</div>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<OBETools.Models.PLO>> Html { get; private set; }
    }
}
#pragma warning restore 1591
