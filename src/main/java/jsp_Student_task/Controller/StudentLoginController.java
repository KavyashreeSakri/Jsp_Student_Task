package jsp_Student_task.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_Student_task.dao.StudentDao;
import jsp_Student_task.dto.Student;

@WebServlet("/login")
public class StudentLoginController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("pwd");

		StudentDao dao = new StudentDao();
		Student student = dao.getStudentByEmail(email);
		if (password.equals(student.getPassword())) {
			
			List<Student> list= dao.getAllStudent();
			req.setAttribute("list", list);
			RequestDispatcher dispatcher = req.getRequestDispatcher("display.jsp");
			dispatcher.forward(req, resp);
		} else {
			req.setAttribute("message", "Invalid Password");
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.include(req, resp);

			
			
		}

	}

}
