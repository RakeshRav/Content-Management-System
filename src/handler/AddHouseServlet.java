package handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.HouseBean;
import utility.DML;

/**
 * Servlet implementation class AddHouseServlet
 */
public class AddHouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	String beds="0",mattresses="0",tables="0",sofasets="0",dining_table="0",wall_furnishing="0",not_available1="0";
	String led="0",auto_wash="0",refridgerator="0",utensils="0",gas_stove="0",not_available2="0";
	String wifi="0",e_bills="0",w_bills="0",tv_bills="0",flat_bills="0",gas_bills="0",not_available3="0";
	String title ;
	String address1;
	String address2;
	String landmark;
	String city;
	String state;
	String desc;
	String type;
	String available_for;
	String shared;
	String single;
	String max_people;
	String[] furniture;
	String[] appliances;
	String[] amenities;
	String our_service;
	String person;
	String contact;
	String email;
	String availability = "1";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHouseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action = request.getParameter("action");
		if (action.equals("add"))
		{
			insert(request,response);
		}
		else if (action.equals("update")) 
		{
			updateHouse(request,response);
		}
		else if (action.equals("delete")) 
		{
			deleteHouse(request,response);
		}		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action.equals("add"))
		{
			insert(request,response);
		}
		else if (action.equals("update")) 
		{
			updateHouse(request,response);
		}
		else if (action.equals("delete")) 
		{
			deleteHouse(request,response);
		}
	}

	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		//System.out.println(beds);
		int id = DML.generateID("Basic_details", "id");
		
				
		setRequestData(request, response);
		
		HouseBean hb = new HouseBean(id, title, address1, address2, landmark, city, state, type, available_for, shared, single, max_people, person, contact, email, availability, desc, our_service, beds,mattresses,tables,sofasets,dining_table,wall_furnishing, led,auto_wash,refridgerator,utensils,gas_stove, wifi,e_bills,w_bills,tv_bills,gas_bills,flat_bills, not_available1, not_available2, not_available3);
		
		if(hb.insert())
		{
			response.sendRedirect("addImages.jsp?id="+id);
		}
	}
	
	protected void updateHouse(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		


		setRequestData(request, response);
		
		HouseBean hb = new HouseBean(id, title, address1, address2, landmark, city, state, type, available_for, shared, single, max_people, person, contact, email, availability, desc, our_service, beds, mattresses, tables, sofasets, dining_table, wall_furnishing, led, auto_wash, refridgerator, utensils, gas_stove, wifi, e_bills, w_bills, tv_bills, gas_bills, flat_bills,not_available1, not_available2, not_available3);
		
		
		if(hb.update())
		{
			response.sendRedirect("addImages.jsp?id="+id);
		}
		else
		{
			response.getWriter().write("Bad Request");
		}
		
	}
	
	public void deleteHouse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		int id = Integer.parseInt(request.getParameter("id"));

		HouseBean hb = new HouseBean();
		hb.setId(id);
		
		if(hb.delete())
		{
			response.sendRedirect("HouseList.jsp?action=deleteSuccess");
		}
		else
		{
			response.getWriter().write("Bad Request");
		}
		
	}

	public void setRequestData(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{
		 title = request.getParameter("title");
		 address1 = request.getParameter("address1");
		 address2 = request.getParameter("address2");
		 landmark = request.getParameter("landmark");
		 city = request.getParameter("city");
		 state = request.getParameter("state");
		 desc = request.getParameter("description");
		 type = request.getParameter("type1");
		 available_for = request.getParameter("available_for");
		 shared = request.getParameter("shared");
		 single = request.getParameter("single");
		 max_people = request.getParameter("max");
		 furniture = request.getParameterValues("furniture");
		 appliances = request.getParameterValues("appliances");
		 amenities = request.getParameterValues("amenities");
		 our_service = request.getParameter("our");
		 person = request.getParameter("person");
		 contact = request.getParameter("number");
		 email = request.getParameter("email");
		 availability = "1";
		 beds="0";
		 mattresses="0";
		 tables="0";
		 sofasets="0";
		 dining_table="0";
		 wall_furnishing="0";
		 not_available1="0";
		 led="0";
		 auto_wash="0";
		 refridgerator="0";
		 utensils="0";
		 gas_stove="0";
		 not_available2="0";
		 wifi="0";
		 e_bills="0";
		 w_bills="0";
		 tv_bills="0";
		 flat_bills="0";
		 gas_bills="0";
		 not_available3="0";
		
			for (int i = 0; i < furniture.length; i++) {
				System.out.println(furniture[i]);
			}
			for (int i = 0; i < appliances.length; i++) {
				System.out.println(appliances[i]);
			}
			for (int i = 0; i < amenities.length; i++) {
				System.out.println(amenities[i]);
			}
			
		
		//System.out.println(type);
		
		for (int i = 0; i < furniture.length; i++) {
			if (furniture[i].equals("1")) {
				beds = "1";
			} 
			else if(furniture[i].equals("2")) 
			{
				mattresses = "1"; 	
			}
			else if(furniture[i].equals("3")) 
			{
				tables = "1";
			}
			else if(furniture[i].equals("4")) 
			{
				sofasets = "1";
			}
			else if(furniture[i].equals("5")) 
			{
				dining_table="1";
			}
			else if(furniture[i].equals("6")) 
			{
				wall_furnishing = "1";
			}
			else if(furniture[i].equals("7")) 
			{
				not_available1 = "1";
			}

		}
		
		for (int i = 0; i < appliances.length; i++) {
			if (appliances[i].equals("1")) {
				led = "1";
			} 
			else if(appliances[i].equals("2")) 
			{
				auto_wash= "1"; 	
			}
			else if(appliances[i].equals("3")) 
			{
				refridgerator = "1";
			}
			else if(appliances[i].equals("4")) 
			{
				utensils = "1";
			}
			else if(appliances[i].equals("5")) 
			{
				gas_stove="1";
			}
			else if(appliances[i].equals("6")) 
			{
				not_available2 = "1";
			}
			
		}

		for (int i = 0; i < amenities.length; i++) {
			if (amenities[i].equals("1")) {
				wifi = "1";
			} 
			else if(amenities[i].equals("2")) 
			{
				e_bills= "1"; 	
			}
			else if(amenities[i].equals("3")) 
			{
				w_bills = "1";
			}
			else if(amenities[i].equals("4")) 
			{
				tv_bills = "1";
			}
			else if(amenities[i].equals("5")) 
			{
				gas_bills= "1";
			}
			else if(amenities[i].equals("6")) 
			{
					flat_bills="1";
			}
			else if(amenities[i].equals("7")) 
			{
				not_available3 = "1";
			}

		}

	}

}
