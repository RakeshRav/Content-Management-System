<%@page import="java.util.List"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@page import="bean.HouseBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link href="css/style1.css" rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap-custom.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link href="css/header.css" rel="stylesheet">

<link href="css/3-col-portfolio.css" rel="stylesheet">
<script src="js/jquery.js"></script>

<script src="js/bootstrap.min.js"></script>

<script>
<script type="text/javascript">
(function() {

var img = document.getElementById('container').firstChild;
img.onload = function() {
    if(img.height > img.width) {
        img.height = '100%';
        img.width = 'auto';
    }
};

}());
</script>

<title>Our Houses</title>
</head>
<body style="padding: 0px; font-family: 'Open Sans', sans-serif;
    color: #FFFFFF;
    line-height: 22px;
    font-size: 14px;">

 <jsp:include page="menu.html"></jsp:include>

    <!-- Page Content -->
    <div class="container">

        
		<%
		int size = 0,loop=0;
        int count = 0;
		ArrayList<String> images = HouseBean.getCoverImages();
		List<HouseBean> houseList = HouseBean.getHouses("");
		size = images.size();
		
		if(size==0)
		{
			%>
			
					<!-- Page Header -->
	        <div class="row">
	            <div class="col-lg-12">
	                <h1 class="page-header" style="color: black;">Sorry :(
	                    <small>No Houses Available</small>
	                </h1>
	            </div>
	        </div>
	        <!-- /.row -->

		<%
		}
		else
		{
			
			%>
			<!-- Page Header -->
	        <div class="row">
	            <div class="col-lg-12">
	                <h1 class="page-header" style="color: black; ">Our Houses
	                    <small>There are many more to come</small>
	                </h1>
	            </div>
	        </div>
	        <!-- /.row -->

			<%
			loop = size/3;
			loop++;
			for(int i = 0; i < loop; i++)
			{
				if(count != size)
				{
					%>
						<div class="row">
						<%
						for(int j = 0; j < 3; j++)
						{
							
							if(count != size)
							{
								%>
									<div class="col-md-4 portfolio-item"  style="margin-bottom: 15px; margin-right: -8px; padding-right: 0px; margin-top: -8px;">
				                
				                <div style="width: 100%; height: 180px; background-image:url('images/cover/<%=images.get(count) %>'); background-repeat: no-repeat; background-size:cover">
								
				                </div>
				                
					                <div style="background-color: #F5F4F4; margin-top: 4px; height: 90px;"  id="h3hover ">
					            	<table style="width: 100%">
					            	<tr>
					            		<td style="width: 85%;">
						                <h3 style="margin: 5px;     padding: 10px; padding-bottom: 2px;" >
						                    <a style="color: #757080;" href="ViewHouse.jsp?id=<%=houseList.get(count).getId()%>"><%=houseList.get(count).getLandmark() %> <small><%=houseList.get(count).getCity() %></small></a>
						                </h3>
						                <table cellpadding="10px" class="" style="font-size: small;color: #757080;"">
											<tr><td style="padding-left: 10px;"><b><%=houseList.get(count).getType() %> Flat<b></td><td><b>Available</b></td></tr>
											
						                </table>
						                </td>
						                <td>
						                <%
						                	String gender = houseList.get(count).getAvailable_for();
						                	if(gender.equals("Boys/Girls"))
						                	{
						                		gender="Family";
						                	}
						                	
						                %>
						                <img src="images/gallery/<%=gender %>1.png" tool-tip="<%=houseList.get(count).getAvailable_for()%>">
						                </td>
									</tr>	
									
					            	</table>    
					                </div>
				                
				                </div>
										
								<%
								System.out.println(count);
								count++;
							}
						}						
						
				}
				%>
			             </div>			    
				<%
			}
			%>
						

		

        <hr>
        <%
		}
		%>

        <!-- Pagination -
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
        -- /.row -->

    </div>
    <!-- /.container -->


</body>
</html>