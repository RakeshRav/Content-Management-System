package handler;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import bean.HouseBean;


public class RemovePicServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if (action.equals("remove")) {
			remove(request, response);
		}
		else if(action.equals("removeCover"))
		{
			removeCover(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action.equals("remove")) {
			remove(request, response);
		}
		else if(action.equals("removeCover"))
		{
			removeCover(request, response);
		}

	}

	protected void remove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Id = request.getParameter("id");
		String img = request.getParameter("img");
		
		String filePath = getInitParameter("logo-path");
		
		 try {
             HouseBean.deleteImageName(Integer.parseInt(Id), img, "photo");
             
             File file = new File(filePath + "full/" + img);
             
			} catch (Exception e) {
				e.printStackTrace();
			}
		 
		 response.sendRedirect("addImages.jsp?id=" + Id+"&action=addPhoto");
	}
	protected void removeCover(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Id = request.getParameter("id");
		String img = request.getParameter("img");
		
		String filePath = getInitParameter("logo-path");
		
		 try {
             HouseBean.deleteImageName(Integer.parseInt(Id), img, "cover");
             
             File file = new File(filePath + "full/" + img);
             
			} catch (Exception e) {
				e.printStackTrace();
			}
		 
		 response.sendRedirect("addImages.jsp?id=" + Id+"&action=addCover");
	}

}
