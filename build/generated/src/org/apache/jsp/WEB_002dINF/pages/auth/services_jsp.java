package org.apache.jsp.WEB_002dINF.pages.auth;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class services_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("        <title>Bootstrap 101 Template</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap -->\r\n");
      out.write("        <link href=");
      out.print(request.getContextPath()+"jslib/bootstrap/dist/css/bootstrap.min.css");
      out.write(" rel=\"stylesheet\">\r\n");
      out.write("        <link href=");
      out.print(request.getContextPath()+"asset/css/custom.css");
      out.write(" rel=\"stylesheet\">\r\n");
      out.write("        <link href=");
      out.print(request.getContextPath()+"asset/css/services.css");
      out.write(" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css\">\r\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>\r\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Oswald:700' rel='stylesheet' type='text/css'>\r\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("        <!--[if lt IE 9]>\r\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("        <![endif]-->\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <nav class=\"navbar navbar-default navbar-fixed-top\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\"\r\n");
      out.write("                        data-toggle=\"collapse\"\r\n");
      out.write("                        data-target=\".navbar-collapse\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.html\">CLiCK_Exchange</a>\r\n");
      out.write("                <div class=\"navbar-collapse collapse\">\r\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                        <li ><a href=\"#header\" class=\"abgne_gotoheader\" >Home</a></li>\r\n");
      out.write("                        <li ><a href=\"#news\" class=\"abgne_gotoheader\">Services</a></li>\r\n");
      out.write("                        <li ><a href=\"#mycarousel\" class=\"abgne_gotoheader\">Hot</a></li>\t\r\n");
      out.write("                        <li ><a  href=\"#about\" class=\"abgne_gotoheader\" >About</a></li>\r\n");
      out.write("                        <li ><a href=\"#contact\" class=\"abgne_gotoheader\">Contact</a></li>\r\n");
      out.write("                        <li ><a href=\"#\" data-toggle=\"modal\" data-target=\"#MyModal\" >Login</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("     \r\n");
      out.write("\r\n");
      out.write("        <div class=\"navbar navbar-inverse navbar-fixed-bottom\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"navbar-text pull-left\">\r\n");
      out.write("                    <p>copyright CLiCK_Exchange 2015</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"navbar-text pull-right\">\r\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-facebook fa-3x\"></i></a>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-twitter fa-3x\"></i></a>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-github fa-3x\"></i></a>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fa fa-google fa-3x\"></i></a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container\" style=\"margin-bottom: 87px;\">\r\n");
      out.write("\t<div class=\"container contain\">\r\n");
      out.write("     <h1 class=\"page-title\">Services</h1>\r\n");
      out.write("\t <div class=\"col-md-3\">\r\n");
      out.write("             \r\n");
      out.write("\t <div class=\"store-categories\">\r\n");
      out.write("\t <ul class=\"store-category-list\" >\r\n");
      out.write("         \r\n");
      out.write("         <li class=\"store-category-list-item\"><a href=\"/store/books\" id=\"cate_btn\" class=\"btn btn-primary store-category-link\">book</a></li>\r\n");
      out.write("         \r\n");
      out.write("         <li class=\"store-category-list-item\"><a href=\"/store/clothes\"  id=\"cate_btn\" class=\"btn btn-primary store-category-link\">衣服服飾</a></li>\r\n");
      out.write("         \r\n");
      out.write("         <li class=\"store-category-list-item\"><a href=\"/store/furniture\" id=\"cate_btn\" class=\"btn btn-primary store-category-link\">大型家具</a></li>    \r\n");
      out.write("         \r\n");
      out.write("         <li class=\"store-category-list-item\"><a href=\"/store/transports\" id=\"cate_btn\" class=\"btn btn-primary store-category-link\">交通工具</a></li>    \r\n");
      out.write("         \r\n");
      out.write("         <li class=\"store-category-list-item\"><a href=\"/store/houseEle\" id=\"cate_btn\" class=\"btn btn-primary store-category-link\">家電</a></li>    \r\n");
      out.write("         \r\n");
      out.write("         <li class=\"store-category-list-item\"><a href=\"/store/others\" id=\"cate_btn\" class=\"btn btn-primary store-category-link\">其他</a></li>          \r\n");
      out.write("        \r\n");
      out.write("         </ul>\r\n");
      out.write("\t </div>\r\n");
      out.write("             \r\n");
      out.write("             \r\n");
      out.write("\t </div>\r\n");
      out.write("     </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\t \r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"navbar navbar-inverse navbar-fixed-bottom\">\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t<div class=\"navbar-text pull-left\">\r\n");
      out.write("\t<p>copyright CLiCK_Exchange 2015</p>\r\n");
      out.write("\t</div>-\r\n");
      out.write("\t<div class=\"navbar-text pull-right\">\r\n");
      out.write("\t<a href=\"#\"><i class=\"fa fa-facebook fa-3x\"></i></a>\r\n");
      out.write("\t<a href=\"#\"><i class=\"fa fa-twitter fa-3x\"></i></a>\r\n");
      out.write("    <a href=\"#\"><i class=\"fa fa-github fa-3x\"></i></a>\r\n");
      out.write("    <a href=\"#\"><i class=\"fa fa-google fa-3x\"></i>-</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\r\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\r\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("   $(cate_btn).mouseover(function() {\r\n");
      out.write("  $(this).fadeTo(\"fast\",0.4);\r\n");
      out.write("  });\r\n");
      out.write("  $(cate_btn).mouseout(function() {\r\n");
      out.write("  $(this).fadeTo(\"fast\",1);\r\n");
      out.write("  });\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
