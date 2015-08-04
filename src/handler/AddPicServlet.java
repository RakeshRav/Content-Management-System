package handler;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import bean.HouseBean;
import utility.ImageUtil;


public class AddPicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action = request.getParameter("action");
		if(action.equals("pic"))
		{
			addPic(request, response);
		}
		else if(action.equals("cover"))
		{
			cover(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action = request.getParameter("action");
		if(action.equals("pic"))
		{
			addPic(request, response);
		}
		else if(action.equals("cover"))
		{
			cover(request,response);
		}
	}

	protected void addPic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Id = request.getParameter("id");
		String filePath = getInitParameter("logo-path");
		System.out.println("hello");
		
		try {
	        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
	        for (FileItem item : items) 
	        {
	            if (!item.isFormField()) 
	            {
	                // Process form file field (input type="file").
	                String fieldName = item.getFieldName();
	                String fileName = FilenameUtils.getName(item.getName());
	                String imageName = ImageUtil.getNewImageName();
	                File file = new File(filePath + "full/" + imageName);
	                try {
						item.write(file);
						 Thumbnails.of(file).size(1900, 1080).toFile(filePath + "slider/" + imageName);
			             Thumbnails.of(file).size(290, 220).toFile(filePath + "recent/" + imageName);
		                
		                HouseBean.insertImageName(Integer.parseInt(Id), imageName);
		                
		                
		                response.sendRedirect("addImages.jsp?id=" + Id);
					} catch (Exception e) {
						e.printStackTrace();
					}
	                System.out.println(fieldName + " : " + fileName);
	            }
	        }
//	        response.sendRedirect("admin?v=picwed");
		}
		catch (FileUploadException e) {
	        throw new ServletException("Cannot parse multipart request.", e);
	    }
	}
	
	
	protected void cover(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Id = request.getParameter("id");
		String filePath = getInitParameter("logo-path");
		System.out.println("hello");
		
		try {
	        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
	        for (FileItem item : items) 
	        {
	            if (!item.isFormField()) 
	            {
	                // Process form file field (input type="file").
	                String fieldName = item.getFieldName();
	                String fileName = FilenameUtils.getName(item.getName());
	                String imageName = ImageUtil.getNewImageName();
	                File file = new File(filePath + "full/" + imageName);
	                try {
						item.write(file);
		                Thumbnails.of(file).size(290, 220).toFile(filePath + "recent/" + imageName);
		                Thumbnails.of(file).size(700, 400).toFile(filePath + "cover/" + imageName);
						 Thumbnails.of(file).size(1900, 1080).toFile(filePath + "slider/" + imageName);

		                HouseBean.insertImageName(Integer.parseInt(Id), imageName);
		                HouseBean.insertCoverName(Integer.parseInt(Id), imageName);
		                
		                
		                response.sendRedirect("addImages.jsp?id=" + Id);
					} catch (Exception e) {
						e.printStackTrace();
					}
	                System.out.println(fieldName + " : " + fileName);
	            }
	        }
//	        response.sendRedirect("admin?v=picwed");
		}
		catch (FileUploadException e) {
	        throw new ServletException("Cannot parse multipart request.", e);
	    }
	}

}
