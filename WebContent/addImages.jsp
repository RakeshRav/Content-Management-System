<%@page import="java.util.ArrayList"%>
<%@page import="bean.HouseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">

<title>Homigo | Add Images</title>

<link href="css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap-custom.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/header.css" rel="stylesheet">

<link href="css/responsive.css" rel="stylesheet">

<link href="js/validator.js" rel="stylesheet">
    
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/main.js"></script>
<script src="js/wow.min.js"></script>

<script>
	function checkout() {
		var imgName = document.getElementById('submit1').value;
		if(imgName == "")
			{
				alert("please select an image");
				return false;
			}
		alert("hii123");
		return true;
	}
</script>



</head>
<body>

<%
	String id = request.getParameter("id");
	if(id == null)
	{
		out.write("Are You A Hacker? If Yes then stop doing this");
	}
	else
	{
		
	boolean status = HouseBean.getStatus(Integer.parseInt(id));
	if(!status)
	{
		out.write("Are You A Hacker? If Yes then stop doing this");
	}
	else
	{

%>
	 <jsp:include page="menu.html"></jsp:include>
	
	<div class="outer">
		<h2 style="padding: 0% 25%">Add photos <small>Make sure it looks good</small></h2>
		<br>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12" style="padding: 0% 25%">
				<%
				
						String ref = "AddPicServlet?action=pic&id="+id;
					String action ="";
					action =request.getParameter("action");
					String image_name = "";
					image_name = HouseBean.getSingleCover(Integer.parseInt(id));
					int size = 0;
					
					try
					{
						ArrayList<String> images = HouseBean.getImages(Integer.parseInt(id));
					
						size = images.size();
						if(action!=null)
						{
							if(action.equals("updateCover") || action.equals("addCover")  )
							{
								ref = "AddPicServlet?action=cover&id="+id;
								
								%>
								<div class="alert alert-info" style="padding-top: 5dp; padding-top: 5dp">Add a cover photo for your house.</div>
								<%
							}
						}
						else if(size==0)
						{
							ref = "AddPicServlet?action=cover&id="+id;
							%>
							<div class="alert alert-info" style="padding-top: 5dp; padding-top: 5dp">Add a cover photo for your house.</div>
							<%
						}
						else if(size==1)
						{
							%>
							<div class="alert alert-warning" style="padding-top: 5dp; padding-top: 5dp">You have Set Your Cover Photo. <a href="addImages.jsp?id=<%=id%>&action=updateCover">Update</a></div>
					<%
						}
						else if(size > 1)
						{
							
				%>
							<div class="alert alert-warning" style="padding-top: 5dp; padding-top: 5dp">You have Set Your Cover Photo. <a href="addImages.jsp?id=<%=id%>&action=updateCover">Update</a></div>
							<div class="alert alert-info" style="padding-top: 5dp; padding-top: 5dp"><%=size-1 %> photos updated.</div>
							<table class="table">
				<%
							for(String image : images)
							{
								if(!(image_name.equals(image)))
								{
									
								
				%>				
								<tr>
									<td>
										<img alt="<%=image %>" src="images/recent/<%= image%>" class="thumbnail" width="120px">
									</td>
									<td>
										<a href="RemovePicServlet?id=<%=id%>&img=<%=image%>&action=remove">Remove</a>
									</td>
								</tr>
				<%
								}
							}
				%>
							</table>
				<%
						}
					
						
						if(action!=null)
						{
							if(action.equals("updateCover"))
							{
								
					%>
								<table class="table">
					<%
									
					%>				
									<tr>
										<td>
											<img alt="<%=image_name %>" src="images/recent/<%= image_name%>" class="thumbnail" width="120px">
										</td>
										<td>
											<a href="RemovePicServlet?id=<%=id%>&img=<%=image_name%>&action=removeCover">Remove</a>
										</td>
									</tr>
					<%
					%>
								</table>
					<%			
							}
						}
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
				%>

				<form action=<%=ref %> data-toggle="validator" enctype="multipart/form-data" method="post">
					<input class="form-control" type="file" name="file1" accept="image/jpg, image/png, image/jpeg" required> <br>
					<button type="submit" id="submit1" class="form-control btn btn-primary">Add</button>
					<%
						if(size > 1 && action==null)
						{
						
					%>
					<a href="HouseList.jsp?action=upSuccess" class="form-control btn btn-success"
						style="margin-top: 10px;">Done</a>
					<%
					}
					%>
				</form>

				<br>
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>

<%	if(size <2)
	{
	 %>	
	<div style="margin-bottom: 120px;">
	</div>
	
<%	}
	 %>
	 
	
			<jsp:include page="footer.html"></jsp:include>
			<%
	}
	}
			%>
		
	
</body>
</html>