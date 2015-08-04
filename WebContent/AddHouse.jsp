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
<meta name="author" content="">
    
<title>Homigo | Add House</title>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.min.css"/>

<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>


<script type="text/javascript" src="js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>


<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap-custom.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link href="css/header.css" rel="stylesheet">

<link href="css/main.css" rel="stylesheet">
<script type="text/javascript" src="js/validator.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/main.js"></script>
<script src="js/wow.min.js"></script>
<script>
function checkOut(type) {
	
	var check1 = document.getElementById("check1");
	var check2 = document.getElementById("check2");
	var check3 = document.getElementById("check3");
	var check4 = document.getElementById("check4");
	var check5 = document.getElementById("check5");
	var check6 = document.getElementById("check6");
	var check7 = document.getElementById("check7");
	var check8 = document.getElementById("check8");
	var check9 = document.getElementById("check9");
	var check10 = document.getElementById("check10");
	var check11 = document.getElementById("check11");
	var check12 = document.getElementById("check12");
	var check13= document.getElementById("check13");
	var check14 = document.getElementById("check14");
	var check15 = document.getElementById("check15");
	var check16 = document.getElementById("check16");
	var check17 = document.getElementById("check17");
	var check18 = document.getElementById("check18");
	var check19 = document.getElementById("check19");
	var check20 = document.getElementById("check20");
	
	if(type=='furniture')
	{
		if(check7.checked )
			{
				check1.checked = false;
				check1.disabled = true;
				
				check2.checked = false;
				check2.disabled = true;
				
				check3.checked = false;
				check3.disabled = true;
				
				check4.checked = false;
				check4.disabled = true;
				
				check5.checked = false;
				check5.disabled = true;
				
				check6.checked = false;
				check6.disabled = true;
				
			}
		else
			{
				
			check1.disabled = false;
			check2.disabled = false;
			check3.disabled = false;
			check4.disabled = false;
			check5.disabled = false;
			check6.disabled = false;

		}
	}
	
	if(type=='appliances')
	{
		if(check13.checked)
		{
			check8.checked = false;
			check8.disabled = true;
			
			check9.checked = false;
			check9.disabled = true;
			
			check10.checked = false;
			check10.disabled = true;
			
			check11.checked = false;
			check11.disabled = true;
			
			check12.checked = false;
			check12.disabled = true;
			
			
		}
		else
		{
			
		check8.disabled = false;
		check9.disabled = false;
		check10.disabled = false;
		check11.disabled = false;
		check12.disabled = false;
	
		}
	}
	if(type=='amenities')
	{
		if(check20.checked)
		{
			check14.checked = false;
			check14.disabled = true;
			
			check15.checked = false;
			check15.disabled = true;
			
			check16.checked = false;
			check16.disabled = true;
			
			check17.checked = false;
			check17.disabled = true;
			
			check18.checked = false;
			check18.disabled = true;
			
			check19.checked = false;
			check19.disabled = true;
			
		}
		else
		{
			
		check14.disabled = false;
		check15.disabled = false;
		check16.disabled = false;
		check17.disabled = false;
		check18.disabled = false;
		check19.disabled = false;
	
		}
	}
	if(type=='submit')	
	if(!(check1.checked || check2.checked || check3.checked|| check4.checked|| check5.checked|| check6.checked|| check7.checked))
		{
		
			alert("Please tick a checkbox");
			check1.focus();
			return false;
		}
	else if(!(check8.checked || check9.checked || check10.checked|| check11.checked|| check12.checked|| check13.checked))
		{
			alert("Please tick a checkbox");
			
			check8.focus();
			return false;
		
		}
		
	else if(!(check14.checked || check15.checked || check16.checked|| check17.checked|| check18.checked|| check19.checked|| check20.checked))
	{
		alert("Please tick a checkbox");
		check14.focus();
		return false;
	
	}
	return true;
	
}

function uncheckout(type) {
	var check20 = document.getElementById("check20");
	var check13 = document.getElementById("check13");
	var check7 = document.getElementById("check7");
	
	if(type=='furniture')
		{
			//alert("f");
			check7.checked = false;
		}
	else if(type=='appliances')
	{

		check13.checked = false;
	}
	else if(type=='amenities')
	{

		check20.checked = false;
	}
}

</script>


</head>
<body>

 <jsp:include page="menu.html"></jsp:include>

	<%
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		String ref = "AddHouseServlet?action=add";
		HouseBean hb = new HouseBean();
		String actionValue = "Next";
		if(action!=null)
		{
			if(action.equals("edit"))
			{
				ref="AddHouseServlet?action=update&id="+id;
				hb = HouseBean.getEditData(Integer.parseInt(id));
				actionValue = "Update";
			}
			
		}
		System.out.print("1");
	%>
	
	
	<div class="outer">
		<center><h2>House Details <small>Fields marked by * are mandatory to fill</small></h2></center>
				<form action="<%=ref %>" method="post"  id="defaultForm" class="form-horizontal" data-toggle="validator">
					<div class="form-group">
					    <label for="title" class="col-sm-2 control-label">Title*</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" name="title" id="title" placeholder="Enter Title" value="<%=hb.getTitle()%>" data-error="Please give a title" required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
					
					<div class="form-group">
					    <label for="address1" class="col-sm-2 control-label">Address*</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" name="address1" id="address1" value="<%=hb.getAddress1() %>" placeholder="Address Line 1" data-error="Please Enter Your address so people find easily" required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
					
					<div class="form-group" >
					    <label for="address2" class="col-sm-2 control-label">Address*</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" name="address2" id="address2" value="<%=hb.getAddress2() %>" placeholder="Address Line 2" data-error="" required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
					
					<div class="form-group">
					    <label for="landmark" class="col-sm-2 control-label">Area*</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" name="landmark" id="landmark" value="<%=hb.getLandmark() %>" placeholder="Enter Area so people find you easily" data-error="Enter Area" required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
					
					<div class="form-group">
					    <label for="city" class="col-sm-2 control-label">City*</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" name="city" id="city" value="<%=hb.getCity() %>" placeholder="Enter city" data-error="Enter Your City" required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
					
					<div class="form-group">
					    <label for="state" class="col-sm-2 control-label">State*</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" name="state" id="state" value="<%=hb.getState() %>" placeholder="Enter state" data-error="Enter Your State" required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
					
					
					<div class="form-group">
					    <label for="description" class="col-sm-2 control-label">Description*</label>
					
					 	<div class="col-sm-8">
					      <input type="text" class="form-control" name="description" value="<%=hb.getDesc() %>" placeholder="Enter Description of the house" data-error="" required>  
					      <span class="help-block with-errors"></span> 
					 </div>
					 	   
					</div>
					
					
					 										
				<div class="form-group">
					<label for="type" class="col-sm-2 control-label">Type Of House*</label>
					    <div class="col-sm-8">
					    <%
					    	if(hb.getType().equals("1 BHK"))
					    	{
					    		
					    		%>
					    		<label class="radio-inline"><input type="radio" name="type1" checked="checked" value="1 BHK" required>1 BHK</label>
					    	<label class="radio-inline"><input type="radio" name="type1" value="2 BHK" required>2 BHK</label>
					    	<label class="radio-inline"><input type="radio" name="type1" value="3 BHK" required>3 BHK</label>
					   	 	
					    		<%
					    	}
					    	else if(hb.getType().equals("2 BHK"))
					    	{
								
					    		%>
					    		<label class="radio-inline"><input type="radio" name="type1"  value="1 BHK" required>1 BHK</label>
					    	<label class="radio-inline"><input type="radio" name="type1" checked="checked" value="2 BHK" required>2 BHK</label>
					    	<label class="radio-inline"><input type="radio" name="type1" value="3 BHK" required>3 BHK</label>
					   	 	
					    		<%		
					    	}
					    	else if(hb.getType().equals("3 BHK"))
					    	{
					    		%>
					    		<label class="radio-inline"><input type="radio" name="type1"  value="1 BHK" required>1 BHK</label>
					    	<label class="radio-inline"><input type="radio" name="type1" value="2 BHK" required>2 BHK</label>
					    	<label class="radio-inline"><input type="radio" name="type1" checked="checked" value="3 BHK" required>3 BHK</label>
					   	 	
					    		<%
					    	}
					    	else 
					    	{
					    		
					    		%><label class="radio-inline"><input type="radio" name="type1"  value="1 BHK" required>1 BHK</label>
					    	<label class="radio-inline"><input type="radio" name="type1" value="2 BHK" required>2 BHK</label>
					    	<label class="radio-inline"><input type="radio" name="type1" value="3 BHK" required>3 BHK</label>
					   	 	
					    		<%
					    	}
						    
					    %>
					     	
					   </div>
					</div>
				  
				  									
				<div class="form-group">
					<label for="available_for" class="col-sm-2 control-label">Available For*</label>
					    <div class="col-sm-8">
					    <%
					    	if(hb.getAvailable_for().equals("Boys"))
					    	{
					    		
					    		%>
					    	<label class="radio-inline"><input type="radio" name="available_for" checked="checked" value="Boys" required>Boys</label>
					    	<label class="radio-inline"><input type="radio" name="available_for" value="Girls" required>Girls</label>
					    	<label class="radio-inline"><input type="radio" name="available_for" value="Boys/Girls" required>Boys/Girls</label>
					   	 	
					    		<%
					    	}
					    	else if(hb.getAvailable_for().equals("Girls"))
					    	{
								
					    		%>
					    	<label class="radio-inline"><input type="radio" name="available_for"  value="Boys" required>Boys</label>
					    	<label class="radio-inline"><input type="radio" name="available_for" checked="checked" value="Girls" required>Girls</label>
					    	<label class="radio-inline"><input type="radio" name="available_for" value="Boys/Girls" required>Boys/Girls</label>
					   	 	
					    		<%		
					    	}
					    	else if(hb.getAvailable_for().equals("Boys/Girls"))
					    	{
					    		%>
					    			<label class="radio-inline"><input type="radio" name="available_for" value="Boys" required>Boys</label>
					    	<label class="radio-inline"><input type="radio" name="available_for" value="Girls" required>Girls</label>
					    	<label class="radio-inline"><input type="radio" name="available_for" checked="checked" value="Boys/Girls" required>Boys/Girls</label>
					   	
					    		<%
					    	}
					    	else 
					    	{
					    		%>
					    		<label class="radio-inline"><input type="radio" name="available_for" value="Boys" required>Boys</label>
						    	<label class="radio-inline"><input type="radio" name="available_for" value="Girls" required>Girls</label>
					    	<label class="radio-inline"><input type="radio" name="available_for" value="Boys/Girls"  required>Boys/Girls</label>
						   	 	
					    		<%
					    	}
						    
					    %>
					    
					   </div>
					</div>
					
				  <div class="form-group">
					<label for="rent_option" class="col-sm-2 control-label">Rent Options*</label>
						  
						  <div class="col-lg-6">
						    <div class="input-group">
						      <span class="input-group-btn">
						        <label class="btn btn-default">Shared
						      </span>
						      <input type="text" class="form-control" value="<%=hb.getShared() %>" name="shared" placeholder="Enter Value for shared" data-error="Enter Single Rent Option" required>
						 	  <span class="input-group-btn">
						        <label class="btn btn-default" >Single</button>
						      </span>
						      <input type="text" class="form-control" name="single" value="<%=hb.getSingle()%>" placeholder="Enter Value for Single" data-error="Enter Shared Rent Option" required>
						    </div><!-- /input-group -->
						  </div><!-- /.col-lg-6 -->
						</div>
						
					<div class="form-group">
					<label for="max" class="col-sm-2 control-label">Max People*</label>	
						 <div class="col-sm-8">
					      <input type="text" class="form-control" name="max" value="<%=hb.getMax_people() %>" id="max" placeholder="Enter No. of people" data-error="Enter Max No. of People" required>
					      <span class="help-block with-errors"></span>
					  	</div>
							</div>
							
							
					<div class="form-group">
					<label for="furniture" class="col-sm-2 control-label">Furniture</label>	
					<div class="col-sm-8">		
							<%
							if(hb.getBeds().equals("1"))
							{
								%>
									<label class="checkbox-inline"><input type="checkbox" onclick="uncheckout('furniture')" id="check1" checked="checked" name = "furniture" value="1" >Beds</label>
								<%
							}
							else
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" onclick="uncheckout('furniture')" id="check1" name = "furniture" value="1" >Beds</label>
								<%
							}
							
							%>
							<%
							if(hb.getMattresses().equals("1"))
							{
								%>
									<label class="checkbox-inline"><input type="checkbox" onclick="uncheckout('furniture')" id="check2" checked="checked" name = "furniture" value="2">Mattresses</label>
								
								<%
							}
							else
							{
								%>
								<label class="checkbox-inline"><input type="checkbox"id="check2" name = "furniture" onclick="uncheckout('furniture')" value="2">Mattresses</label>
								
								<%
							}
							
							%>
							
							<%
							if(hb.getTables().equals("1"))
							{
								%>
									<label class="checkbox-inline"><input type="checkbox" id="check3" checked="checked" name = "furniture" onclick="uncheckout('furniture')" value="3">Side/Centre table</label>
								<%
							}
							else
							{
								%>
									<label class="checkbox-inline"><input type="checkbox" id="check3" name = "furniture" onclick="uncheckout('furniture')" value="3">Side/Centre table</label>
								<%
							}
							
							%><%
							if(hb.getSofasets().equals("1"))
							{
								%>
									<label class="checkbox-inline"><input type="checkbox" id="check4" checked="checked" name = "furniture" onclick="uncheckout('furniture')" value="4">Sofa Sets</label>
								<%
							}
							else
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" name = "furniture"id="check4" onclick="uncheckout('furniture')"  value="4">Sofa Sets</label>
								<%
							}
							
							%><%
							if(hb.getDining_table().equals("1"))
							{
								%>
									<label class="checkbox-inline"><input type="checkbox" checked="checked" id="check5" name = "furniture" onclick="uncheckout('furniture')" value="5">Dining Table</label>
								<%
							}
							else
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" name = "furniture" id="check5" onclick="uncheckout('furniture')" value="5">Dining Table</label>
								<%
							}
							
							%><%
							if(hb.getWall_furnishing().equals("1"))
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "furniture" onclick="uncheckout('furniture')" id="check6" value="6">Wall Mounted Furnishing</label>

								<%
							}
							else
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" name = "furniture" id="check6" onclick="uncheckout('furniture')" value="6">Wall Mounted Furnishing</label>

								<%
							}
							
							%>
							<%
							if(hb.getNot_available1().equals("1"))
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" onclick="checkOut('furniture')" name = "furniture" id="check7" value="7">Not Available</label>

								<%
							}
							else
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" onclick="checkOut('furniture')"  name = "furniture" id="check7" value="7">Not Available</label>

								<%
							}
							
							%>
							
								</div>
								
							</div>
							
					<div class="form-group">
					<label for="appliances" class="col-sm-2 control-label">Appliances</label>	
					<div class="col-sm-8">
					
					<%
						if(hb.getLed().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked"  onclick="uncheckout('appliances')" name = "appliances" id="check8" value="1">LED TV</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "appliances" onclick="uncheckout('appliances')" id="check8" value="1">LED TV</label>
							
							<%
						}
					
					%>
					
					<%
						if(hb.getAuto_wash().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "appliances" id="check9" onclick="uncheckout('appliances')" value="2">Automatic Washing Machine</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "appliances" id="check9" onclick="uncheckout('appliances')" value="2">Automatic Washing Machine</label>
							
							<%
						}
					
					%><%
						if(hb.getRefridgerator().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "appliances" onclick="uncheckout('appliances')" id="check10" value="3">Refridgerator</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "appliances" id="check10" onclick="uncheckout('appliances')" value="3">Refridgerator</label>
							
							<%
						}
					
					%><%
						if(hb.getUtensils().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "appliances" onclick="uncheckout('appliances')" id="check11" value="4">Utensils</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "appliances" id="check11" onclick="uncheckout('appliances')" value="4">Utensils</label>
							
							<%
						}
					
					%>
					<%
						if(hb.getGas_stove().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "appliances" onclick="uncheckout('appliances')" id="check12" value="5">Gas Stove</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "appliances" id="check12" onclick="uncheckout('appliances')" value="5">Gas Stove</label>
							
							<%
						}
					
					%>		
					<%
							if(hb.getNot_available2().equals("1"))
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "appliances" onclick="checkOut('appliances')" id="check13" value="6">Not Available</label>

								<%
							}
							else
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" name = "appliances" onclick="checkOut('appliances')" id="check13" value="6">Not Available</label>

								<%
							}
							
							%>
					
								</div>
								
							</div>
							
					<div class="form-group">
							
					<label for="Amenities" class="col-sm-2 control-label">Amenities</label>	
					<div class="col-sm-8">		
						<%
						if(hb.getWifi().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "amenities" onclick="uncheckout('amenities')" id="check14" value="1">High Speed Wifi</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "amenities" id="check14" onclick="uncheckout('amenities')" value="1">High Speed Wifi</label>
							
							<%
						}
					
					
					
					if(hb.getE_bills().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "amenities" id="check15" onclick="uncheckout('amenities')" value="2">Electricity Bill</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "amenities" id="check15" onclick="uncheckout('amenities')" value="2">Electricity Bill</label>
							
							<%
						}
					
					
					if(hb.getW_bills().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "amenities" onclick="uncheckout('amenities')" id="check16" value="3">Water Bill</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "amenities" id="check16" onclick="uncheckout('amenities')" value="3">Water Bill</label>
							
							<%
						}
					
					if(hb.getTv_bills().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "amenities" id="check17" onclick="uncheckout('amenities')" value="4">TV Subscription Bills</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox"  name = "amenities" id="check17" onclick="uncheckout('amenities')" value="4">TV Subscription Bills</label>
							
							<%
						}
					
					if(hb.getGas_bills().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "amenities" id="check18" onclick="uncheckout('amenities')" value="5">Gas Connection Bills</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "amenities" id="check18" value="5">Gas Connection Bills</label>
							
							<%
						}
					
					if(hb.getFlat_bills().equals("1"))
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" name = "amenities" id="check19" onclick="uncheckout('amenities')" value="6">Flat Maintenance Bills</label>
							
							<%
						}
						else
						{
							%>
								<label class="checkbox-inline"><input type="checkbox" name = "amenities" id="check19" onclick="uncheckout('amenities')" value="6">Flat Maintenance Bills</label>
							
							<%
						}
					%>
					<%
							if(hb.getNot_available3().equals("1"))
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" checked="checked" onclick="checkOut('amenities')" id="check20"  name = "amenities" value="7">Not Available</label>

								<%
							}
							else
							{
								%>
								<label class="checkbox-inline"><input type="checkbox" name = "amenities" onclick="checkOut('amenities')" id="check20" value="7">Not Available</label>

								<%
							}
							
							%>
					
								</div>
								
							</div>
							
							
					<div class="form-group">
					    <label for="our" class="col-sm-2 control-label">Our Services*</label>
					
					 	<div class="col-sm-8">
					      <input type="text" class="form-control" name="our" value="<%=hb.getOur_service() %>" placeholder="Enter services provided by you" data-error="Enter Services" required>
					      <span class="help-block with-errors"></span>
					 </div><!-- /.col-lg-6 -->
					 	   
					</div>
					
					
						<div class="form-group">
					    <label for="name" class="col-sm-2 control-label">Contact Person*</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" name="person" value="<%=hb.getPerson() %>" id="person" placeholder="Enter person name" data-error="Enter person name" required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
				
					<div class="form-group">
					    <label for="number" class="col-sm-2 control-label">Contact No.*</label>
					    <div class="col-sm-8">
					      <input type="number" class="form-control" name="number" value="<%=hb.getContact() %>" id="number" placeholder="Enter contact no." data-error="Enter contact no." required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
				
					<div class="form-group">
					    <label for="email" class="col-sm-2 control-label">Email Id*</label>
					    <div class="col-sm-8">
					      <input type="email" class="form-control" name="email" id="email" value="<%=hb.getEmail() %>" placeholder="Enter Email Id" data-error="Enter a valid email" required>
					      <span class="help-block with-errors"></span>
					  	</div>
					</div>
				
					
					<div class="form-group">
					<label for="stream" class="col-sm-2 control-label"></label>
					<div class="col-sm-2">
						<button type="submit" class="form-control btn btn-primary" onclick="return checkOut('submit')" style="color: #fff; background-color: #428bca;  border-color: #357ebd;" ><span class='glyphicon glyphicon-chevron-right' ></span><%=actionValue %> </button>
					</div>
				</div>
			</form>
			</div>
			

				<jsp:include page="footer.html"></jsp:include>
	
				
</body>
</html>