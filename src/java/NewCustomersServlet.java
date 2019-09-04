/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author naden
 */
public class NewCustomersServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewCustomersServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewCustomersServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/New_customer.jsp";
        
            //get current action
            String action = request.getParameter("action");
            if (action == null){
                action = "join"; // default cust
            }
             // perform action and set url
             if (action.equals("join")){
                 url = "/New_customer.jsp";
             }
             else if (action.equals("add")){
                 String FirstName = request.getParameter("FirstName");
                 String LastName = request.getParameter("LastName");
                 String Phone = request.getParameter("Phone");
                 String Address = request.getParameter("Address");
                 String City = request.getParameter("City");
                 String State = request.getParameter("State");
                 String Zipcode = request.getParameter("Zipcode");
                 String Email = request.getParameter("Email");
                         
                //Store data in User object
                User user = new User(FirstName, LastName, Phone, Address, City, State, Zipcode, Email);

                // validate parameters
                String message;
                if (FirstName == null || LastName == null || Phone == null || Address == null || City == null || State == null || Zipcode == null || Email == null || FirstName.isEmpty() ||
                    LastName.isEmpty() || Phone.isEmpty() || Address.isEmpty() || City.isEmpty() || State.isEmpty() || Zipcode.isEmpty() || Email.isEmpty()){
                    message = "Please fill out all text boxes.";
                    url = "/New_Customer.jsp";
                }
                else{
                    message = "";
                    url = "/Success.html";
                    UserDB.insert(user);
                
                    request.setAttribute ("message", message);
                    request.setAttribute ("user", user);
                }
                // forward request
            getServletContext()
                .getRequestDispatcher(url)
                .forward(request,response);
    }
}
}
