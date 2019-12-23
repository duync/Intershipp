package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.DanhMucModel;
import entities.SanPham;
import java.util.ArrayList;

public final class insertSP_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\"\n");
      out.write("              integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <!-- Optional JavaScript -->\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"\n");
      out.write("                integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"\n");
      out.write("                integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"\n");
      out.write("                integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 ArrayList dmuc_list = new DanhMucModel().getListDanhMuc();
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"jumbotron\">\n");
      out.write("                <button type=\"button\" class=\"btn btn-danger\" style=\"float: right;\">Logout</button>\n");
      out.write("                <h1>Product</h1>\n");
      out.write("                <p>Add products</p>\n");
      out.write("            </div>\n");
      out.write("            <!-- body  -->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <p>Add new product</p>\n");
      out.write("                <hr />\n");
      out.write("                <form action=\"SanPhamServlet1?yeucau=insert\" method=\"post\" enctype= \"multipart/form-data\">\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Mã Sản Phẩm</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <input type=\"text\" name=\"txtmasp\" class=\"form-control\" id=\"colFormLabel\" style=\"width:35%\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Product Name</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <input type=\"text\" name=\"txttensp\" class=\"form-control\" id=\"colFormLabel\" style=\"width:35%\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Unit Price</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <input type=\"text\" name=\"txtgia\" class=\"form-control\" id=\"colFormLabel\" style=\"width:35%\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Units In Stock</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <input type=\"text\" name=\"txtsoluong\" class=\"form-control\" id=\"colFormLabel\" style=\"width:35%\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Description</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <textarea class=\"form-control\" name=\"txtmota\"  id=\"exampleFormControlTextarea1\" rows=\"2\"\n");
      out.write("                                      style=\"width:35%\"></textarea>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Manufacturer</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <!--<input type=\"email\" class=\"form-control\" id=\"colFormLabel\" style=\"width:35%\">-->\n");
      out.write("                            <select name=\"txtmadm\">\n");
      out.write("                                ");
      //  c:forEach
      org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
      _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
      _jspx_th_c_forEach_0.setParent(null);
      _jspx_th_c_forEach_0.setVar("dm");
      _jspx_th_c_forEach_0.setItems(dmuc_list);
      int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
      try {
        int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
        if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("                                    <option value=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dm.madm}", java.lang.String.class, (PageContext)_jspx_page_context, null));
            out.write('"');
            out.write('>');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dm.tendm}", java.lang.String.class, (PageContext)_jspx_page_context, null));
            out.write("</option>\n");
            out.write("                                ");
            int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_forEach_0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_forEach_0.doFinally();
        _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
      }
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Category</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <select class=\"form-conttrol\" name=\"txttheloai\">\n");
      out.write("                                <option value=\"SamSung\">SamSung</option>\n");
      out.write("                                <option value=\"Apple\">Apple</option>\n");
      out.write("                                <option value=\"Oppo\">Oppo</option>\n");
      out.write("                                <option value=\"Xiaomi\">Xiaomi</option>\n");
      out.write("                                <option value=\"Huawei\">Huawei</option>\n");
      out.write("                                <option value=\"LG\">LG</option>\n");
      out.write("                                <option value=\"Sony\">Sony</option>\n");
      out.write("                                <option value=\"HTC\">HTC</option>\n");
      out.write("                                <option value=\"Nokia\">Nokia</option>\n");
      out.write("                                \n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Condition</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <input type=\"radio\"  name=\"txttrangthai\" value=\"New\"><label>New</label>\n");
      out.write("                            <input type=\"radio\" name=\"txttrangthai\" value=\"Old\"><label>Old</label>\n");
      out.write("                            <input type=\"radio\"  name=\"txttrangthai\" value=\"Refurbished\"><label>Refurbished</label>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\">Product Images File</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <input type=\"file\" name=\"txthinh\" class=\"form-control-file\" id=\"exampleFormControlFile1\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group row\">\n");
      out.write("                        <label for=\"colFormLabel\" class=\"col-sm-2 col-form-label\"></label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <button class=\"btn btn-primary\" type=\"submit\" value=\"Insert\">Add Product </button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
