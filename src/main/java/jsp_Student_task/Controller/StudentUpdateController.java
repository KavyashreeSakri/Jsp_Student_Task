package jsp_Student_task.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp_Student_task.dao.StudentDao;
import jsp_Student_task.dto.Student;

@WebServlet("/update")
public class StudentUpdateController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id= Integer.parseInt(req.getParameter("id"));
	
	StudentDao dao=new StudentDao();
	Student student=dao.getStudentById(id);
	if(student!=null) {
		req.setAttribute("student", student);
		RequestDispatcher dispatcher= req.getRequestDispatcher("edit.jsp");
		dispatcher.forward(req, resp);
	}

}
}
