package org.apache.jsp.WEB_002dINF.pages.auth;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("        <title>CLiCK - A stuff exchange platform [Register]</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap -->\r\n");
      out.write("        <link href=");
      out.print(request.getContextPath()+"/jslib/bootstrap/dist/css/bootstrap.min.css");
      out.write(" rel=\"stylesheet\">\r\n");
      out.write("        <link href=");
      out.print(request.getContextPath()+"/asset/css/custom.css");
      out.write(" rel=\"stylesheet\">\r\n");
      out.write("        <link href=");
      out.print(request.getContextPath()+"/asset/css/register.css");
      out.write(" rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"\r\n");
      out.write("              https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css\">\r\n");
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
      out.write("                <a class=\"navbar-brand\" href=");
      out.print(request.getContextPath()+"/index.jsp");
      out.write(">CLiCK_Exchange</a>\r\n");
      out.write("                <div class=\"navbar-collapse collapse\">\r\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                        <li ><a href=\"#header\" class=\"abgne_gotoheader\" >Home</a></li>\r\n");
      out.write("                        <li ><a href=\"#news\" class=\"abgne_gotoheader\">News</a></li>\r\n");
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
      out.write("        <div class=\"container\" style=\"margin-bottom: 87px;\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"jumbotron text-center\">\r\n");
      out.write("                <a id=\"header\" ></a>\r\n");
      out.write("                <h1>Register</h1>\r\n");
      out.write("                <p> create a new one with your username and email</p></br>\r\n");
      out.write("\r\n");
      out.write("                <form name=\"fos_user_registraration_form\" method=\"post\" action=\"\">\r\n");
      out.write("                    <input type=\"text\" id=\"fos_user_registraration_form_username\" name=\"fos_user_registraration_form_[username]\" required=\"required\" maxlength=\"255\" pattern=\"[\\.A-Za-z0-9_-]{1,50}\" class=\"text-input\" placeHolder=\"Username\" /> </br>\r\n");
      out.write("\r\n");
      out.write("                    <input type=\"email\" id=\"fos_user_registration_form_email\" name=\"fos_user_registration_form[email]\" required=\"required\" maxlength=\"254\" pattern=\".{2,}\" class=\"text-input focus\" placeHolder=\"Email\" />  </br>\r\n");
      out.write("\r\n");
      out.write("                    <input type=\"password\" id=\"fos_user_registration_form_plainPassword_first\" name=\"fos_user_registration_form[plainPassword][first]\" required=\"required\" class=\"text-input focus\" placeHolder=\"Password\" />  </br>\r\n");
      out.write("\r\n");
      out.write("                    <input type=\"password\" id=\"fos_user_registration_form_plainPassword_second\" name=\"fos_user_registration_form[plainPassword][second]\" required=\"required\" class=\"text-input focus\" placeHolder=\"Repeat Password\" /> </br>\r\n");
      out.write("\r\n");
      out.write("                    <div ><p><input  id=\"sb\" type=\"submit\" name=\"submit\" value=\"CREATE ACCOUNT\" class=\"button large bold\"></p></div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
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
      out.write("\r\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("        <script src=");
      out.print(request.getContextPath()+"/jslib/jquery/dist/jquery.min.js");
      out.write("></script>\r\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\r\n");
      out.write("        <script src=");
      out.print(request.getContextPath()+"/jslib/bootstrap/dist/js/bootstrap.min.js");
      out.write("></script>\r\n");
      out.write("        \r\n");
      out.write("        <script>\r\n");
      out.write("            $(sb).mouseover(function () {\r\n");
      out.write("                $(this).fadeTo(\"fast\", 0.4);\r\n");
      out.write("            });\r\n");
      out.write("            $(sb).mouseout(function () {\r\n");
      out.write("                $(this).fadeTo(\"fast\", 1);\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
