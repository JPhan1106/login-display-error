package coding.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coding.entity.Landlord;
import coding.service.LandlordService;

/**
 * Servlet implementation class LandlordLoginServlet
 */
@WebServlet("/landlordLogin")
public class LandlordLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LandlordLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			LandlordService landlordService = new LandlordService();
			Landlord landlord = new Landlord();
			landlord = landlordService.getLandlordByEmailAndPassword(email, password);

			

			if (landlord == null) {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				request.setAttribute("errorMessage", "Login details are incorrect, please try again!");
				rd.forward(request, response);

			} else {
				HttpSession session = request.getSession(false);
				session.setAttribute("landlord", landlord);
				RequestDispatcher rd = request.getRequestDispatcher("home");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
