<%@page import="bean.HouseBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">

<title>Homigo | List</title>

<link href="css/inner.css" type="text/css" rel="stylesheet">
<link href="css/elements.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap-custom.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<link href="css/header.css" rel="stylesheet">    
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>


</head>
<body>
	 <jsp:include page="menu.html"></jsp:include>
	
<%
	String action = request.getParameter("action");
%>	
	<div class="outer">
				<div class="row">
				<%
					if(action!=null)
					{
						if(action.equals("deleteSuccess"))
						{
							
				%>
				
				
				<div class="alert alert-danger" role="alert" style="margin-top:-15px; margin-left: 15px; padding: 10px; ">
					<h3 style="margin: 0px;" >House Successfully Deleted</h3>
				</div>
				<%

						}
						else if(action.equals("upSuccess"))
						{
							
				%>
				<div class="alert alert-success" role="alert" style="margin-top:-15px; margin-left: 15px; padding: 10px; ">
					<h3 >House Successfully Updated</h3>
				</div>
				<%

						}

					}
				%>
				<form action="#" method="post">
				<div class="form-group">
					<div class="col-sm-2">
						<input type="text" name="nameValue" placeholder="Search Event" class="form-control" value="">
					</div>
					<button type="submit" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Search by Intitution name or address or both">
						<span  class="glyphicon glyphicon-search" aria-hidden="true"></span> Search
					</button>
					<a href="AddHouse.jsp" class="btn btn-default" style="float: right;" data-toggle="tooltip" data-placement="left" title="Add a new Institution">
						<span  class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add New</a>
				</div>
				</form>
			
				<div class="alert alert-info" role="alert" style="margin-left: 15px; margin-bottom: 5px; padding: 2px 15px"><p>List of Houses</p></div>
			</div>
			
			<%
				List<HouseBean> houses = HouseBean.getHouses(" ");
				
				if(houses == null || houses.size() == 0)
				{
			%>
					<div class="alert alert-danger">No Houses available.</div>
			<%
				}
				else
				{
			%>
				
			<table class="table table-striped table-bordered">
				<tr>
					<td>#</td>
					<td>Image</td>
					<td>City</td>
					<td>Landmark</td>
					<td>Date</td>
					<td>Type</td>
					<td>For</td>
					<td>Availability</td>
					<td>Edit</td>
					<td>Delete</td>
					<td>View</td>
				</tr>
				<%
					int i = 1;
					for(HouseBean house : houses)
					{
				%>
						<tr>
							<td><%=i++ %></td>
							<td>
							<%
								ArrayList<String> images = HouseBean.getImages(house.getId());
								System.out.println(images);
								if(images != null && images.size() > 0)
								{
									String image = images.get(0);
									
							%>
									<img alt="" src="images/recent/<%=image %>" class="thumbnail" width="92px">
							<%	
								}
								else
								{
							%>
									<img alt="" src="images/no_available_image.gif" class="thumbnail" width="92px">
							<%	
								}
							%>
							</td>
							<td><%=house.getCity() %></td>
							<td><%=house.getLandmark() %></td>
							<td><%=house.getDate() %></td>
							<td><%=house.getType() %></td>
							<td><%=house.getAvailable_for() %></td>
							<td><%=house.getAvailability() %></td>
							<td>
								<a href="AddHouse.jsp?action=edit&id=<%=house.getId() %>" data-toggle="tooltip" data-placement="bottom" title="Edit">
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
							</td>
							<td>
		
								<span id="<%=house.getId() %>" class="glyphicon glyphicon-trash deleteRow" aria-hidden="true" data-toggle="modal" data-target="#myModal" data-toggle="tooltip" data-placement="bottom" title="Delete"></span>
								
								<!-- Button trigger modal -->


							<!-- Modal -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        <h4 class="modal-title" id="myModalLabel">Delete This Event</h4>
							      </div>
							      <div class="modal-body">
        								<p>Are You Sure ?</p>
      							  </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							        <a class="deleteLink" href="AddHouseServlet?action=delete&id="><button type="button" class="btn btn-primary">Delete</button></a>
							      </div>
							    </div>
							  </div>
							</div>
							</td>
							<td>
								<a href="ViewHouse.jsp?id=<%=house.getId() %>" data-toggle="tooltip" data-placement="bottom" title="View  details">
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
							</td>
						</tr>
				<%
					}
				%>
				
			</table>
			
			<%
				}
			%>
	</div>
	
<%	if(houses.size() <1)
	{
	 %>	
	<div style="margin-bottom: 320px;">
	</div>
<%	}
else if(houses.size() <2)
	
	{
	 %>	
	<div style="margin-bottom: 240px;">
	</div>
<%	}
else if(houses.size() <3)
	{
	 %>	
	<div style="margin-bottom: 170px;">
	</div>
<%	}
	 %>
	 
	
	

				<jsp:include page="footer.html"></jsp:include>
	
	
	<script type="text/javascript">
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	});

	$(function(){
		$('.deleteRow').click(function(){
			var oldlink = $('.deleteLink').attr('href');
			var newlink = "";
			var i = 0;
			var ch = oldlink.charAt(i++);
			
			while(ch!='=')
				{
					
					while(ch!='d')
					{
			
					newlink = newlink + ch;
					ch = oldlink.charAt(i++);
					}
					newlink = newlink + ch;
					ch = oldlink.charAt(i++);
					
				}
			newlink = newlink + ch;
			
			
			$('.deleteLink').attr('href', newlink + this.id);
		});
	});

</script>


</body>


</html>