package Webshopping;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {

    String pass;
    protected void doPost(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
  
        try
        {
            HttpSession httpSession = request.getSession(true);
            CartDetails c = new CartDetails();
            httpSession.setAttribute("cart", c);
            UserData u = new UserData();
            u.setUserName(username);
            httpSession.setAttribute("user", u);
            ItemLength i = new ItemLength();
            httpSession.setAttribute("itemLength", i);
            String dbDriver = "com.mysql.cj.jdbc.Driver";
            String dbURL = "jdbc:mysql://localhost:3306/";
            String dbName = "webshopping?alloPublicKeyRetrival=true&useSSL=false";
            String dbUsername = "root";
            String dbPassword = "KhumainiShaik@1011";
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbURL + dbName,dbUsername,dbPassword);
            Statement stmt = con.createStatement();
            String sql="select password from users where username='"+username+"'";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                pass=rs.getString(1);
            }
            if(pass.equals(password)){
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/internship.html");
                rd.forward(request, response);
            }
            else{
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/error.jsp");
                rd.forward(request, response);
            }
            con.close();
            
        }        
        catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    
   
}