#pragma checksum "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e991f09bfc027d777757a4a8f070c98220529ce0"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Manage_Views_Order_Update), @"mvc.1.0.view", @"/Areas/Manage/Views/Order/Update.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 2 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\_ViewImports.cshtml"
using P129Allup.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\_ViewImports.cshtml"
using P129Allup.ViewModels.BasketViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\_ViewImports.cshtml"
using P129Allup.ViewModels.HeaderViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\_ViewImports.cshtml"
using P129Allup.ViewModels.HomeViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\_ViewImports.cshtml"
using P129Allup.ViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\_ViewImports.cshtml"
using P129Allup.Areas.Manage.ViewModels.AccountViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 8 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\_ViewImports.cshtml"
using P129Allup.Enums;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e991f09bfc027d777757a4a8f070c98220529ce0", @"/Areas/Manage/Views/Order/Update.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a88def926bea6681860d134ac5b24dbce66e5de5", @"/Areas/Manage/Views/_ViewImports.cshtml")]
    public class Areas_Manage_Views_Order_Update : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Order>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", "orderstatus", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("id", new global::Microsoft.AspNetCore.Html.HtmlString("orderstatus"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("form-control"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-area", "manage", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "order", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "update", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.SelectTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
  
    ViewData["Title"] = "Update";
    int no = 0;

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"row justify-content-center\">\r\n    <div class=\"col-lg-10 \">\r\n        <div class=\"card\" >\r\n            <div class=\"card-body\">\r\n                <h5 class=\"card-title\">FUllName ");
#nullable restore
#line 11 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                           Write(Model.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 11 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                                       Write(Model.SurName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h5>\r\n                <p class=\"card-text\">");
#nullable restore
#line 12 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                Write(Model.OrderStatus);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                <p class=\"card-text\">");
#nullable restore
#line 13 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                Write(Model.TotalPrice);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                <p class=\"card-text\">");
#nullable restore
#line 14 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                Write(Model.Address1);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                <p class=\"card-text\">");
#nullable restore
#line 15 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                Write(Model.Address2);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                <p class=\"card-text\">");
#nullable restore
#line 16 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                Write(Model.CompanyName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                <p class=\"card-text\">");
#nullable restore
#line 17 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                Write(Model.Country);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                <p class=\"card-text\">");
#nullable restore
#line 18 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                Write(Model.CreatedAt?.ToString("dd-MM-yyyy"));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</p>
            </div>
            <div>
                <table class=""table table-bordered table-active table-striped"">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Product Name</th>
                            <th>Product Price</th>
                            <th>Product Count</th>
                            <th>Product TotalPrice</th>
                        </tr>
                    </thead>
                    <tbody>
");
#nullable restore
#line 32 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                         foreach (OrderItem orderItem in Model.OrderItems)
                        {
                            no++;

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <tr>\r\n                            <td>");
#nullable restore
#line 36 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                           Write(no);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 37 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                           Write(orderItem.Product.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 38 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                           Write(orderItem.Price);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 39 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                           Write(orderItem.Count);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                            <td>");
#nullable restore
#line 40 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                           Write(orderItem.TotalPrice);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                        </tr>\r\n");
#nullable restore
#line 42 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    </tbody>\r\n                </table>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"col-lg-10\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "e991f09bfc027d777757a4a8f070c98220529ce012686", async() => {
                WriteLiteral("\r\n            <div class=\"mb-3\">\r\n                <input name=\"id\" type=\"hidden\"");
                BeginWriteAttribute("value", " value=\"", 2055, "\"", 2072, 1);
#nullable restore
#line 51 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
WriteAttributeValue("", 2063, Model.Id, 2063, 9, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" class=\"form-control\">\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"orderstatus\">Order Status</label>\r\n                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("select", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "e991f09bfc027d777757a4a8f070c98220529ce013590", async() => {
                    WriteLiteral("\r\n                ");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.SelectTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper.Name = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
#nullable restore
#line 55 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper.Items = new SelectList(Enum.GetValues(typeof(OrderStatus)), Model.OrderStatus);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-items", __Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper.Items, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label for=\"Comment\">Comment</label>\r\n                <textarea name=\"Comment\" id=\"Comment\" class=\"form-control\" rows=\"3\">");
#nullable restore
#line 60 "C:\Users\hamid.mammadov\Desktop\P129Allup\P129Allup\Areas\Manage\Views\Order\Update.cshtml"
                                                                               Write(Model.Comment);

#line default
#line hidden
#nullable disable
                WriteLiteral("</textarea>\r\n            </div>\r\n            <button type=\"submit\" class=\"btn btn-primary\">Update</button>\r\n        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Area = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_5.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_6.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n    </div>\r\n</div>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Order> Html { get; private set; }
    }
}
#pragma warning restore 1591
