package exam;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/exam/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Member> members = new ArrayList<>();
		members.add(new Member(1,"james", 30, "AU"));
		members.add(new Member(2,"maria", 26, "FR"));
		members.add(new Member(3,"brain", 20, "GB"));
		members.add(new Member(4,"wang", 35, "CN"));
		members.add(new Member(5,"ime", 23, "JP"));
		members.add(new Member(6,"gildong", 27, "KR"));
		
		request.setAttribute("members", members);
	    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/memberList.jsp");
	    dispatcher.forward(request, response);
	}

}
