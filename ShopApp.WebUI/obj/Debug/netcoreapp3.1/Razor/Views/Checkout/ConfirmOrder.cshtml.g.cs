#pragma checksum "C:\Users\dalwa\Desktop\GrossaryApp\ShopApp.WebUI\Views\Checkout\ConfirmOrder.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e684502339f0f1b6cc0bfc9439c40bb0bad66989"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Checkout_ConfirmOrder), @"mvc.1.0.view", @"/Views/Checkout/ConfirmOrder.cshtml")]
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
#line 1 "C:\Users\dalwa\Desktop\GrossaryApp\ShopApp.WebUI\Views\_ViewImports.cshtml"
using ShopApp.Entities;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\dalwa\Desktop\GrossaryApp\ShopApp.WebUI\Views\_ViewImports.cshtml"
using ShopApp.WebUI.Extensions;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\dalwa\Desktop\GrossaryApp\ShopApp.WebUI\Views\_ViewImports.cshtml"
using ShopApp.WebUI.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e684502339f0f1b6cc0bfc9439c40bb0bad66989", @"/Views/Checkout/ConfirmOrder.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ac4c66d93eeacae2cebb532dec37149efba1b780", @"/Views/_ViewImports.cshtml")]
    public class Views_Checkout_ConfirmOrder : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "C:\Users\dalwa\Desktop\GrossaryApp\ShopApp.WebUI\Views\Checkout\ConfirmOrder.cshtml"
   ViewData["Title"] = "Confirm Order"; 

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<h4>Order Conformation</h4>\r\n<hr />\r\n<div class=\"alert alert-success\">\r\n");
#nullable restore
#line 6 "C:\Users\dalwa\Desktop\GrossaryApp\ShopApp.WebUI\Views\Checkout\ConfirmOrder.cshtml"
     if (ViewBag.message != null)
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div> ");
#nullable restore
#line 8 "C:\Users\dalwa\Desktop\GrossaryApp\ShopApp.WebUI\Views\Checkout\ConfirmOrder.cshtml"
     Write(ViewBag.message.ToString());

#line default
#line hidden
#nullable disable
            WriteLiteral(" </div>\r\n");
#nullable restore
#line 9 "C:\Users\dalwa\Desktop\GrossaryApp\ShopApp.WebUI\Views\Checkout\ConfirmOrder.cshtml"
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n<div>\r\n    <a href=\"/\" class=\"btn btn-primary\">\r\n            <i class=\"fa fa-arrow-circle-left fa-fw\"></i> Continue Shopping\r\n     </a>\r\n</div>");
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
