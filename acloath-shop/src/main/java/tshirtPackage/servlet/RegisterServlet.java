package tshirtPackage.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tshirtPackage.dao.RegisterDao;
import tshirtPackage.model.UserReg;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private RegisterDao employeeDao;

    public void init() {
        employeeDao = new RegisterDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

     
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
    
        UserReg employee = new UserReg();
        employee.setId(0);
        employee.setName(name);
        employee.setEmail(email);
        employee.setPassword(password);
     

        try {
            employeeDao.registerEmployee(employee);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("login.jsp");
    }
}