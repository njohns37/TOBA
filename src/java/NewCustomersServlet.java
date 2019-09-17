import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class NewCustomersServlet extends HttpServlet {

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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

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
                 String username = request.getParameter("Username");
                 String password = request.getParameter("Password");
                 String firstName = request.getParameter("FirstName");
                 String lastName = request.getParameter("LastName");
                 String phone = request.getParameter("Phone");
                 String address = request.getParameter("Address");
                 String city = request.getParameter("City");
                 String state = request.getParameter("State");
                 int zipcode = request.getParameter("Zipcode");
                 String email = request.getParameter("Email");
                 
                HttpSession session = request.getSession();        
                //Store data in User object
                User user = new User(username, password, firstName, lastName, phone, address, city, state, zipcode, email);
                
                                                                          
                //set user object and set url
               request.setAttribute("user", user);
               url = "/Success.html";
               
               if (action.equals("Submit")){
               request.setAttribute("password", user);
               url = "/Account_activity.html";
             }
                                          
            // forward request
            getServletContext()
                .getRequestDispatcher(url)
                .forward(request,response);
    }
        
    }
}

    
    

