package Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PackageInsert
 */
@WebServlet("/PackageInsert")
public class PackageInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PackageInsert() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name  = request.getParameter("Name");
		String desti = request.getParameter("Place");
	    String mode  = request.getParameter("Mode");
	    String tname = request.getParameter("TName"); 
	    String meal  = request.getParameter("Meal");
	    String price = request.getParameter("Price");
	    
	    boolean isTrue;
	    
	    isTrue = AdminDBUtil.insertpackage(name, desti, mode, tname, meal, price);
	    
	    if(isTrue==true) {
	    	RequestDispatcher dis = request.getRequestDispatcher("Done.jsp");
	    	dis.forward(request, response);
	    }
	    else {
	    	RequestDispatcher dis2 = request.getRequestDispatcher("Undone.jsp");
	    	dis2.forward(request, response);
	    }
	    
	    
	    
	    
	    
	}

}
