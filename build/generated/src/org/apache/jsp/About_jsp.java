package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"author\" content=\"\" />\n");
      out.write("    <!--[if IE]>\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <![endif]-->\n");
      out.write("    <title>LIVE CHAT , LIFE CHAT</title>\n");
      out.write("    <!-- BOOTSTRAP CORE STYLE  -->\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- FONT-AWESOME CORE STYLE  -->\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- CORE CUSTOM STYLE  -->\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- THEME COLOUR STYLE (BY DEFAULT GREEN COLOR,  YOU CAN REPLACE green.css to red.css , orange.css, blue.css ,grey-bk.css or black-bk.css)  -->\n");
      out.write("    <link id=\"mainCSS\" href=\"assets/css/themes/blue.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- GOOGLE FONTS -->\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Yellowtail' rel='stylesheet' type='text/css' />\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Signika&subset=latin,latin-ext' rel='stylesheet' type='text/css' />\n");
      out.write("     <!-- STYLE SWITCHER STYLE -->\n");
      out.write("    <link href=\"assets/css/style-switcher.css\" rel=\"stylesheet\" />\n");
      out.write("</head>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("    <div class=\"switcher\" style=\"left:-150px;\">\n");
      out.write("        <a id=\"switch-panel\" class=\"hide-panel\" style=\"text-decoration:none;\">\n");
      out.write("            <i class=\"fa fa-angle-double-down \"  ></i>\n");
      out.write("        </a>\n");
      out.write("        <h2>CHANGE THEME</h2>\n");
      out.write("      <span class=\"span-text\">Choose background color</span>  \n");
      out.write("        <ul class=\"colors-list\">           \n");
      out.write("            <li><a title=\"Blue\" id=\"blue\" class=\"blue\" ></a></li>\n");
      out.write("            <li><a title=\"Green\" id=\"green\" class=\"green\" ></a></li>\n");
      out.write("             <li><a title=\"Yellow\" id=\"yellow\" class=\"yellow\" ></a></li>\n");
      out.write("            <li><a title=\"Red\" id=\"red\" class=\"red\" ></a></li>\n");
      out.write("        </ul>\n");
      out.write("         <span class=\"span-text\">Image Backgrounds</span>\n");
      out.write("         <ul class=\"colors-list-bk\">\n");
      out.write("            <li><a title=\"Black Background\" id=\"black-bk\"  >BLACK</a></li>\n");
      out.write("            <li><a title=\"Grey Background\" id=\"grey-bk\"  >GREY</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("        <div class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                \n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                    \n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <img src=\"image/logo.png\" alt=\"aBp ONLINE CHATTING\"  title=\"LIVE CHAT , LIFE CHAT\"  style=\"float: left;\"/><div title=\"LIVE CHAT , LIFE CHAT\" class=\"navbar-brand\">&nbsp;aBp ONLINE CHATTING</div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        <div class=\"navbar-collapse collapse move-me\">\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li><a href=\"HOME.jsp\">HOME</a></li>\n");
      out.write("                    <li><a href=\"userguideline.jsp\">USER GUIDELINE</a></li>\n");
      out.write("                    <li><a href=\"RandL.jsp\">REGISTRATION FORM OR LOGIN FORM</a></li>\n");
      out.write("                     <li><a href=\"About.jsp\">ABOUT</a></li>\n");
      out.write("                                          \n");
      out.write("                    <li><a href=\"contact.jsp\">CONTACT</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("         <div id=\"about-sec\" >\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\n");
      out.write("                    <h1 data-scroll-reveal=\"enter from the bottom after 0.1s\"><strong>About CHAT SYSTEM : </strong></h1>\n");
      out.write("                    <p data-scroll-reveal=\"enter from the bottom after 0.2s\">\n");
      out.write("                        The addition of a website chat system to your website can be a very effective tool for helping you to engage with visitors, but there are are many options available,\n");
      out.write("                        making it difficult to differentiate and select the best solution.\n");
      out.write("                    </p>\n");
      out.write("                    <p data-scroll-reveal=\"enter from the bottom after 0.4s\">\n");
      out.write("                        It is free Online Chatting System that provides the easiest way for ONLINE Chatting for anyone.\n");
      out.write("                        With security System which give you a protection from Hacking.\n");
      out.write("\n");
      out.write("                    </p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">\n");
      out.write("\n");
      out.write("                    <h1 data-scroll-reveal=\"enter from the bottom after 0.1s\"><strong>Testimonials : </strong></h1>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"testimonial\" data-scroll-reveal=\"enter from the bottom after 0.2s\">\n");
      out.write("                       Customisable look and feel, allowing you to make sure the chat window fits with your websites dessign perfectly.\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"testimonial-name\" data-scroll-reveal=\"enter from the bottom after 0.3s\">\n");
      out.write("                        <h4>CHAT SYSTEM</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <br />\n");
      out.write("                    <div class=\"testimonial\" data-scroll-reveal=\"enter from the bottom after 0.4s\">\n");
      out.write("                       Automatic messages, proactively enticing visitors to speak to you depending on location in your website.\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"testimonial-name\" data-scroll-reveal=\"enter from the bottom after 0.4s\">\n");
      out.write("                        <h4>CHAT SYSTEM</h4>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("    \n");
      out.write("         <!-- /SCROLL TO UP SECTION END  -->\n");
      out.write("    <!-- JQUERY SCRIPTS FUCTIONS  -->\n");
      out.write("    <script src=\"assets/js/jquery-1.11.1.js\"></script>\n");
      out.write("    <!-- BOOTSTRAP SCRIPTS FUCTIONS  -->\n");
      out.write("    <script src=\"assets/js/bootstrap.js\"></script>\n");
      out.write("    <!-- SROLLING SCRIPTS   -->\n");
      out.write("    <script src=\"assets/js/jquery.easing.min.js\"></script>\n");
      out.write("    <!-- STYLE SWITCHER SCRIPTS   -->\n");
      out.write("    <script src=\"assets/js/style-switcher.js\"></script>\n");
      out.write("     <!-- ON SCROLL SCRIPTS   -->\n");
      out.write("    <script src=\"assets/js/scrollReveal.js\"></script>\n");
      out.write("    <!-- CUSTOM SCRIPTS   -->\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>     \n");
      out.write("            \n");
      out.write("    </body>\n");
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
