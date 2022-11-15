/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Adminstrator
 */
@WebServlet(name = "LogInServlet", urlPatterns = {"/LogInServlet"})
public class LogInServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LogInServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LogInServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn;
        try{
            conn=MySQLConntUtils.getMySQLConnection();
            
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            UserAccount usr = new UserAccount(username,password);
            UserAccount u=DBUtils.findUser(conn,usr.getUserName(),usr.getPassword());
            if(u!=null)
            {
                HttpSession session=request.getSession();
                session.setAttribute("acc",u);
                UserAccount user=new UserAccount(u);
                request.setAttribute("username", "Xin chào:"+user.getUserName());
                request.getRequestDispatcher("/Home.jsp").forward(request, response);
            }
            else
            {
                response.setContentType("text/html;charset=UTF-8");
                try(PrintWriter out=response.getWriter()){
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Annouce</title>");
                    out.println("<head>");
                    out.println("<body>");
                    out.println("<h1>Invalid information<a href=Login.jsp>Retype</a></h1>");
                    out.println("<body>");
                    out.println("<html>");
                    
                }
            }
        }catch (ClassNotFoundException ex) {
               Logger.getLogger(LogInServlet.class.getName()).log(Level.SEVERE, null, ex);
        }catch (SQLException ex) {
               Logger.getLogger(LogInServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
