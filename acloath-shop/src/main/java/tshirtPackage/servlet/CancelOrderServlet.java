package tshirtPackage.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


import tshirtPackage.connection.DbCon;
import tshirtPackage.dao.OrderDao;

@WebServlet("/cancel-order")
public class CancelOrderServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
    
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
  }

}