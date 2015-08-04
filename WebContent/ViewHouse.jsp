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

<title>Your Dream House</title>



<link href="css/full-slider.css" rel="stylesheet">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap-custom.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
    

    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->

<link href="css/style1.css" type="text/css" rel="stylesheet">

<link href="css/bootstrap.css" type="text/css" rel="stylesheet">



<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/jquery.js"></script>
<!-- Script to Activate the Carousel -->
<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
</script>


</head>
<body >

<%
    		String id = request.getParameter("id");
            		if(id==null)
            		{
            			out.write("Bad Request");
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

				        	ArrayList<String> images = HouseBean.getImages(Integer.parseInt(id));
				            HouseBean hb = HouseBean.getEditData(Integer.parseInt(id));
				            		
            			
    
    %>

    
    <!-- Full Page Image Background Carousel Header -->
    <header id="myCarousel" class="carousel slide" style="height: 100%">
        <!-- Indicators -->
        <ol class="carousel-indicators">
        		<%
        			if(images == null || images.isEmpty())
        				{
        				%>
        				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        				<%
        				}
        			else
        			{
        				int count=0;
        				for(String image : images)
        				{
        					if(count == 0)
        					{
        						count++;
        				%>
        				
        				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        				<%
        					}
        					else
        					{
        						
        						%>
                				<li data-target="#myCarousel" data-slide-to="<%=count %>" ></li>
                				<%
                				count++;
        					}
        				}
        			}
        				%>
        </ol>

        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
            	<%
        			if(images == null || images.isEmpty())
        				{
        				%>
				        	<div class="item active">
				                <!-- Set the first background image using inline CSS below. -->
				                <div class="fill" style="background-image:url('images/no_available_image.gif')"></div>
				                
				            </div>
	            		<%
        				}
        			else
        			{
        				int count=0;
        				for(String image : images)
        				{
        					if(count == 0)
        					{
        				%>
        				            <div class="item active">
							                <!-- Set the second background image using inline CSS below. -->
							                <div class="fill" style="background-image:url('images/full/<%=image%>');"></div>
							                
							            </div>
							            

        				<%
        				count++;
        					}
        					else
        					{
        						%>
							            <div class="item">
							                <!-- Set the second background image using inline CSS below. -->
							                <div class="fill" style="background-image:url('images/full/<%=image%>');"></div>
							                
						            </div>
                				<%
        					}
        				}
        			}
        				%>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span cla-ss="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>

    </header>
    <div class="line1">
    	
    </div>
    
	<div class="row" style="padding: 0px 10px;">
	  <div class="col-xs-12 col-md-4">
	  <table align="center" class="table">
	  
	  	<tr style="padding-top: 30px;"><td style="padding-left: 10%"></td><td><h3><b><%=hb.getType() %> Flat</b></h3></td></tr>
	  	<tr><td></td><td><h4><%=hb.getLandmark() %></h4></td></tr>
	  	<tr><td></td><td><h4><%=hb.getCity() %></h4></td></tr>
	  		
			
		</table>	
	  		<p ><br>
				  			  		
	  </div>
	  <div class="col-xs-12 col-md-4">
	  	<table align="center" style="table-layout: center;" class="table" >
	  		<tr style="padding-top: 30px;">
	  		<%
	  			String gender = hb.getAvailable_for();
	  			String type = hb.getType();
	  			if(gender.equals("Boys/Girls"))
	  			{
	  				gender = "family";
	  			}
	  		%>
	  			<td style="padding-left: 10%"></td>
	  			<td style="padding: 30px 20px 0px 20px;"><img src="images/gallery/<%=gender %>logo.png" alt="bhk"></td>
	  			<td style="padding: 20px 20px;"><img src="images/gallery/3bhk.png" alt="bhk"></td>
	  			<td style="padding: 20px 20px;"><img src="images/gallery/max6.png" alt="max"></td>
	  		</tr>
	  		<tr>
	  			<td></td>
	  			<td style="padding-left: 20px;"><h4><%=hb.getAvailable_for() %></h4></td>
	  			<td><h4><%=type %> Flat</h4></td>
	  			<td><h4>max <%=hb.getMax_people() %> people</h4></td>
	  		</tr>
	  		<tr>
	  			<td></td>
	  			<td></td>
	  			<td></td>
	  			<td></td>
	  		</tr>
	  	</table>
	  </div>
	  <div class="col-xs-12 col-md-4">
	  <table class="table" align="center">
	  	<tr style="padding-top: 30px;"><td style="padding-left: 10%"></td><td><h3><b>Rent Options</b></h3></td></tr>
	  	<tr><td></td><td><h4>Single: <%=hb.getSingle() %></h4></td></tr>
	  	<tr><td></td><td><h4>Shared: <%=hb.getShared() %></h4></td></tr>
	  		
			
		</table>	
	  </div>
	  
	</div>
	
    <div class="line1">
    	
    </div>
    
	
	   <section id="feature" >
        <div class="container">
        	
        		<div class="panel panel-primary">
				  <div class="panel-heading" >
				    <h3 class="panel-title" style="font-size: 20px;">About The Flat</h3>
				  </div>
				  <div class="panel-body" >
				  <ul style="font-size: 17px;">
				  	<li><%=hb.getDesc() %></li>
				  </ul>
					    
				  </div>
				</div>
				
        	
        		<div class="panel panel-primary">
				  <div class="panel-heading" >
				    <h3 class="panel-title" style="font-size: 20px;">Features</h3>
				  </div>
				  <div class="panel-body" style="padding: 0px;">
					<table class="table table-striped">
							<tr>
								<td><h3>Furniture</h3></td>
								<td>
									<table class="table table-striped table-bordered">
											
											<ul>
        				<%
        					if(hb.getBeds().equals("1"))
        					{
        						%>
        							<tr><td><li>Beds</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getMattresses().equals("1"))
        					{
        						%>
        							<tr><td><li>Mattresses</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getTables().equals("1"))
        					{
        						%>
        							<tr><td><li>Side/Center Table</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getSofasets().equals("1"))
        					{
        						%>
        							<tr><td><li>Sofa Sets</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getDining_table().equals("1"))
        					{
        						%>
        							<tr><td><li>Dining Table</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getWall_furnishing().equals("1"))
        					{
        						%>
        							<tr><td><li>Wall Mount Furnishing</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getNot_available1().equals("1"))
        					{
        						%>
        							<tr><td><li>No Facility</li></td></tr>
        						<%
        					}
        				%>
        				
        				
        				
        			</ul>
									</table >				
								</td>
							</tr>
							<tr>
								<td><h3>Appliances</h3></td>
								<td>
									<table class="table table-striped table-bordered">
											        				<ul>
			        		<%
        					if(hb.getLed().equals("1"))
        					{
        						%>
        							<tr><td><li>LED TV</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getAuto_wash().equals("1"))
        					{
        						%>
        							<tr><td><li>Automatic Washing Machine</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getRefridgerator().equals("1"))
        					{
        						%>
        							<tr><td><li>Refridgerator</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getUtensils().equals("1"))
        					{
        						%>
        							<tr><td><li>Utensils</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getGas_stove().equals("1"))
        					{
        						%>
        							<tr><td><li>Gas Stove</li></td></tr>
        						<%
        					}
        				%>
        				
        				<%
        					if(hb.getNot_available2().equals("1"))
        					{
        						%>
        							<tr><td><li>No Facility</li></td></tr>
        						<%
        					}
        				%>
        				
			        	</ul>
											
									</table>				
								</td>
							</tr>
							<tr>
								<td><h3>Amenities</h3></td>
								<td>
									<table class="table table-striped table-bordered">
											<ul>
	        		
        				<%
        					if(hb.getWifi().equals("1"))
        					{
        						%>
        							<tr><td><li>High Speed Wifi</li></td></tr>
				
        						<%
        					}
        				%>
        				<%
        					if(hb.getE_bills().equals("1"))
        					{
        						%>
        							<tr><td><li>Electricity Bill</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getW_bills().equals("1"))
        					{
        						%>
        							<tr><td><li>Water Bill</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getTv_bills().equals("1"))
        					{
        						%>
        							<tr><td><li>TV Subscription Bill</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getGas_bills().equals("1"))
        					{
        						%>
        							<tr><td><li>Gas Bill</li></td></tr>
        						<%
        					}
        				%>
        				<%
        					if(hb.getFlat_bills().equals("1"))
        					{
        						%><tr><td><li>Flat Maintenance Bill</li></td></tr>
        						<%
        					}
        				%>
        				
        				<%
        					if(hb.getNot_available3().equals("1"))
        					{
        						%>
        							<tr><td><li>No Facility</li></td></tr>
        						<%
        					}
        				%>
	        	</ul>
	        	
									</table>				
								</td>
							</tr>
					</table>
				  </div>
				</div>
						
						 		<div class="panel panel-primary">
				  <div class="panel-heading" >
				    <h3 class="panel-title" style="font-size: 20px;">Our Services</h3>
				  </div>
				  <div class="panel-body" >
				  <ul style="font-size: 17px;">
				  	<li><%=hb.getOur_service() %>    </li>
				  </ul>
					
				  </div>
				</div>
				 <div class="panel panel-primary">
				  <div class="panel-heading" >
				    <h3 class="panel-title" style="font-size: 20px;">Landlord Details</h3>
				  </div>
				  <div class="panel-body" >
						<table>
							<tr>
								<td style="padding: 10px;"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></td><td><%=hb.getPerson() %></td>
							</tr>
							<tr>
								<td style="padding: 10px;"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span></td><td><%=hb.getContact() %></td>
							</tr>
							<tr>
								<td style="padding: 10px;"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></td><td><%=hb.getEmail() %></td>
							</tr>
						</table>
			        	
				  </div>
				</div>
		
	</div>
       	
        	
        	   
        	
        	
        </div><!--/.container-->
    </section><!--/#feature-->
  
     
    </div>
    <!-- /.container -->
	 <jsp:include page="footer.html"></jsp:include>
	    
    <%

            		}
            		}
    
    %>
	
</body>
</html>