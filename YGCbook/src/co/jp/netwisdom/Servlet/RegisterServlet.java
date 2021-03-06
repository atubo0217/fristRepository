package co.jp.netwisdom.Servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Template;

import co.jp.netwisdom.DAO.UserinfoAndHobbyDAO;
import co.jp.netwisdom.entity.UserinfoAndHobby;

public class RegisterServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String sex = req.getParameter("sex");
		String[] hobby = req.getParameterValues("hobby");
		String major = req.getParameter("major");
		String intro = req.getParameter("intro");
		
		UserinfoAndHobby uahEntity = new UserinfoAndHobby(username, password, sex, hobby, major, intro);
		UserinfoAndHobbyDAO UAHdao = new UserinfoAndHobbyDAO();
		
		String hobbyStr = Arrays.toString(hobby);
		
		req.setAttribute("uahEntity", uahEntity);
		req.setAttribute("hobby", hobbyStr);
		
		if(UAHdao.InsertUserinfoAndHobby(uahEntity)){
			
			req.getRequestDispatcher("UserSearch.jsp").forward(req, resp);
			
		}else{
			req.getRequestDispatcher("fail.jsp").forward(req, resp);
		}
		
	}
	
}
