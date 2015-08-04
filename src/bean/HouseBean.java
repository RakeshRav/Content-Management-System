package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.sun.org.apache.bcel.internal.generic.GETSTATIC;

import utility.DBUtil;
import utility.DML;

public class HouseBean
{
	int id;
	String title="",address1="",address2="",landmark="",city="",state="",type="",available_for="",max_people="",person="",contact="",email="",date="",isAvalable="";
	String shared="",single="";
	String desc="",our_service="";
	String beds="",mattresses="",tables="",sofasets="",dining_table="",wall_furnishing="",availability="",not_available1="";
	String led="",auto_wash="",refridgerator="",utensils="",gas_stove="",not_available2="";
	String wifi="",e_bills="",w_bills="",tv_bills="",flat_bills="",gas_bills="",not_available3="";
	
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	public HouseBean() {
		// TODO Auto-generated constructor stub
	}
	
//	public HouseBean(int id,String title,String address1,String address2,String landmark,String city,String state,String type,String available_for,String shared,String single,String max_people,
//			String person,String contact,String email)
//	{
//		this.id = id;
//		this.title = title;
//		this.address1 = address1;
//		this.address2 = address2;
//		this.landmark = landmark;
//		this.city = city;
//		this.state = state;
//		this.type = type;
//		this.available_for = available_for;
//		this.shared = shared;
//		this.single = single;
//		this.max_people = max_people;
//		this.person = person;
//		this.contact = contact;
//		this.email = email;
//		this.availability = availability;
//		
//	}
	
	

	
	public HouseBean(int id, String landmark,String city,String state,String type,String available_for, String date, String isAvalable, String shared, String single)
	{
		this.id = id;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.type = type;
		this.available_for = available_for;
		this.isAvalable = isAvalable;
		this.date = date;
		this.shared = shared;
		this.single=single;
		
	}

	public HouseBean(int id,String title,String address1,String address2,String landmark,String city,String state,String type,String available_for,String shared,String single,String max_people,
			String person,String contact,String email,String availability,String desc,String our_service,String beds,String mattresses,String tables,String sofasets,
			String dining_table,String wall_furnishing,String led,String auto_wash,String refridgerator,String utensils,String gas_stove,
			String wifi,String e_bills,String w_bills,String tv_bills,String gas_bills,String flat_bills,String not_available1,String not_available2,String not_available3) 
	{
		this.id = id;
		this.title = title;
		this.address1 = address1;
		this.address2 = address2;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.type = type;
		this.available_for = available_for;
		this.shared = shared;
		this.single = single;
		this.max_people = max_people;
		this.person = person;
		this.contact = contact;
		this.email = email;
		this.availability = availability;
		this.desc = desc;
		this.our_service = our_service;
		this.beds = beds;
		this.mattresses = mattresses;
		this.tables  = tables;
		this.sofasets = sofasets;
		this.dining_table = dining_table;
		this.wall_furnishing = wall_furnishing;
		this.led = led;
		this.auto_wash = auto_wash;
		this.refridgerator = refridgerator;
		this.utensils = utensils;
		this.gas_stove = gas_stove;
		this.wifi = wifi;
		this.e_bills = e_bills;
		this.w_bills = w_bills;
		this.tv_bills = tv_bills;
		this.flat_bills = flat_bills;
		this.gas_bills = gas_bills;
		this.not_available1=not_available1;
		this.not_available2=not_available2;
		this.not_available3=not_available3;
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getDate() {
		return date;
	}

	public void setId(String date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAvailable_for() {
		return available_for;
	}

	public void setAvailable_for(String available_for) {
		this.available_for = available_for;
	}

	public String getMax_people() {
		return max_people;
	}

	public void setMax_people(String max_people) {
		this.max_people = max_people;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	

	public String getSingle() {
		return single;
	}

	public void setSingle(String single) {
		this.single = single;
	}

	public String getShared() {
		return shared;
	}

	public void setShared(String shared) {
		this.shared = shared;
	}

	public  String getAvailability() {
		
		return isAvalable;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getOur_service() {
		return our_service;
	}

	public void setOur_service(String our_service) {
		this.our_service = our_service;
	}

	public String getBeds() {
		return beds;
	}

	public void setBeds(String beds) {
		this.beds = beds;
	}

	public String getMattresses() {
		return mattresses;
	}

	public void setMattresses(String mattresses) {
		this.mattresses = mattresses;
	}

	public String getTables() {
		return tables;
	}

	public void setTables(String tables) {
		this.tables = tables;
	}

	public String getSofasets() {
		return sofasets;
	}

	public void setSofasets(String sofasets) {
		this.sofasets = sofasets;
	}

	public String getDining_table() {
		return dining_table;
	}

	public void setDining_table(String dining_table) {
		this.dining_table = dining_table;
	}

	public String getWall_furnishing() {
		return wall_furnishing;
	}

	public void setWall_furnishing(String wall_furnishing) {
		this.wall_furnishing = wall_furnishing;
	}

	public String getLed() {
		return led;
	}

	public void setLed(String led) {
		this.led = led;
	}

	public String getAuto_wash() {
		return auto_wash;
	}

	public void setAuto_wash(String auto_wash) {
		this.auto_wash = auto_wash;
	}

	public String getRefridgerator() {
		return refridgerator;
	}

	public void setRefridgerator(String refridgerator) {
		this.refridgerator = refridgerator;
	}

	public String getUtensils() {
		return utensils;
	}

	public void setUtensils(String utensils) {
		this.utensils = utensils;
	}

	public String getGas_stove() {
		return gas_stove;
	}

	public void setGas_stove(String gas_stove) {
		this.gas_stove = gas_stove;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}

	public String getE_bills() {
		return e_bills;
	}

	public void setE_bills(String e_bills) {
		this.e_bills = e_bills;
	}

	public String getW_bills() {
		return w_bills;
	}

	public void setW_bills(String w_bills) {
		this.w_bills = w_bills;
	}

	public String getTv_bills() {
		return tv_bills;
	}

	public void setTv_bills(String tv_bills) {
		this.tv_bills = tv_bills;
	}

	public String getFlat_bills() {
		return flat_bills;
	}

	public void setFlat_bills(String flat_bills) {
		this.flat_bills = flat_bills;
	}

	public String getGas_bills() {
		return gas_bills;
	}

	public void setGas_bills(String gas_bills) {
		this.gas_bills = gas_bills;
	}
	
	public void setNot_available1(String not_available) {
		this.not_available1=not_available;
	}
	
	public String getNot_available1() {
		return not_available1;
	}

	
	public void setNot_available2(String not_available) {
		this.not_available2=not_available;
	}


	public String getNot_available2() {
		return not_available2;
	}

	public void setNot_available3(String not_available) {
		this.not_available3=not_available;
	}
	
	public String getNot_available3() {
		return not_available3;
	}

	public boolean insert() {
		
		Date d = new Date();
		String day = d.getDate()+"";
		String month = (d.getMonth()+1)+"";
		String year = (d.getYear()+1900)+"";
		String date = day+"/"+month+"/"+year;
		//System.out.println(date);
		
		try {
			String sql = "insert into Basic_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, id);
			pstmt.setString(2, address1);
			pstmt.setString(3, address2);
			pstmt.setString(4, landmark);
			pstmt.setString(5, city);
			pstmt.setString(6, state);
			pstmt.setString(7, type);
			pstmt.setString(8, available_for);
			pstmt.setString(9, shared);
			pstmt.setString(10, single);
			pstmt.setString(11, max_people);
			pstmt.setString(12, person);
			pstmt.setString(13, contact);
			pstmt.setString(14, email);
			pstmt.setString(15, availability+"");
			pstmt.setString(16, title);
			pstmt.setString(17, date);
			pstmt.setString(18, day);
			pstmt.setString(19, month);
			pstmt.setString(20, year);
			
			pstmt.executeUpdate();
			
			
			sql = "insert into desc1 values(?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, our_service);
			pstmt.setString(3, desc);
			
			pstmt.executeUpdate();
			
			sql = "insert into furniture values(?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, beds+"");
			pstmt.setString(2, mattresses+"");
			pstmt.setString(3, tables+"");
			pstmt.setString(4, sofasets+"");
			pstmt.setString(5, dining_table+"");
			pstmt.setString(6, wall_furnishing+"");
			pstmt.setInt(7, id);
			pstmt.setString(8, not_available1);
			
			pstmt.executeUpdate();
			

			sql = "insert into appliances values(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, led+"");
			pstmt.setString(2, auto_wash+"");
			pstmt.setString(3, refridgerator+"");
			pstmt.setString(4, utensils+"");
			pstmt.setString(5, gas_stove+"");
			pstmt.setInt(6, id);
			pstmt.setString(7, not_available2);
			
			pstmt.executeUpdate();

			sql = "insert into amenities values(?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, wifi+"");
			pstmt.setString(2, e_bills+"");
			pstmt.setString(3, w_bills+"");
			pstmt.setString(4, tv_bills+"");
			pstmt.setString(5, gas_bills+"");
			pstmt.setString(6, flat_bills+"");
			pstmt.setInt(7, id);
			pstmt.setString(8, not_available3);
			
			pstmt.executeUpdate();
			
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(rs, pstmt, con);
		}
		
		return false;
		
	}
		
	public boolean update()
	{
		//eventId = DML.generateID(DBConstants.TABLE_EVENT, DBConstants.COL_EVENT_ID);
		
		
		String sql = "update Basic_details set address1=?,address2=?,landmark=?,city=?,state=?,type=?,available_for=?,shared=?,single=?,max_people=?,person=?,contact=?,email=?,availability=?,title=? where id ="+id;
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, address1);
			pstmt.setString(2, address2);
			pstmt.setString(3, landmark);
			pstmt.setString(4, city);
			pstmt.setString(5, state);
			pstmt.setString(6, type);
			pstmt.setString(7, available_for);
			pstmt.setString(8, shared);
			pstmt.setString(9, single);
			pstmt.setString(10, max_people);
			pstmt.setString(11, person);
			pstmt.setString(12, contact);
			pstmt.setString(13, email);
			pstmt.setString(14, availability+"");
			pstmt.setString(15, title);
			
			pstmt.executeUpdate();
		}
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				DBUtil.closeAllDBResources(null, pstmt, con);
			}	
		
		try
		{
		
			sql = "update desc1 set our_services=?,description=? where id ="+id;
			con = DBUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, our_service);
			pstmt.setString(2, desc);
			
			pstmt.executeUpdate();
		}
		
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(null, pstmt, con);
		}	
	
			try
			{
				
			sql = "update furniture set beds=?,mattresses=?,tables=?,sofasets=?,dining_table=?,wall_furnishing=?,not_available=?  where id="+id;
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, beds+"");
			pstmt.setString(2, mattresses+"");
			pstmt.setString(3, tables+"");
			pstmt.setString(4, sofasets+"");
			pstmt.setString(5, dining_table+"");
			pstmt.setString(6, wall_furnishing+"");
			pstmt.setString(7, not_available1);
			pstmt.executeUpdate();
			}
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				DBUtil.closeAllDBResources(null, pstmt, con);
			}	
		

			try
			{
			sql = "update appliances set led=?,automatic_wash=?,refridgerator=?,utensils=?,gas_stove=?,not_available=? where id="+id;
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, led+"");
			pstmt.setString(2, auto_wash+"");
			pstmt.setString(3, refridgerator+"");
			pstmt.setString(4, utensils+"");
			pstmt.setString(5, gas_stove+"");
			pstmt.setString(6, not_available2);
			
			pstmt.executeUpdate();
}
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				DBUtil.closeAllDBResources(null, pstmt, con);
			}	
		
			try
			{
			sql = "update  amenities set wifi=?,e_bill=?,w_bill=?,tv_bill=?,gas_bill=?,flat_bill=?,not_available=? where id="+id;
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, wifi+"");
			pstmt.setString(2, e_bills+"");
			pstmt.setString(3, w_bills+"");
			pstmt.setString(4, tv_bills+"");
			pstmt.setString(5, gas_bills+"");
			pstmt.setString(6, flat_bills+"");
			pstmt.setString(7, not_available3);
			
			pstmt.executeUpdate();
			return true;

			
}
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				DBUtil.closeAllDBResources(null, pstmt, con);
			}	
		

			return false;
		}
		
		


	
	public boolean delete()
	{
		//eventId = DML.generateID(DBConstants.TABLE_EVENT, DBConstants.COL_EVENT_ID);
			
		String sql = "delete from Basic_details where id ="+id;
		
		String sql1 = "delete from desc1 where id ="+id; 
		
		String sql2 = "delete from furniture where id ="+id; 
		String sql3 = "delete from appliances where id ="+id; 
		String sql4 = "delete from amenities where id ="+id; 
		String sql5 = "delete from image_names where id ="+id; 
		String sql6 = "delete from cover_image where id ="+id; 
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(sql1);
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(sql2);
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(sql3);
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(sql4);
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(sql5);
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(sql6);
			pstmt.executeUpdate();
			
			return true;
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(null, pstmt, con);
		}
		
		return false;
	}


	
	
	public static ArrayList<String> getImages(int id)
	{
		ArrayList<String> images = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from image_names where id = ?";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				images.add(rs.getString(2));
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(rs, pstmt, con);
		}
		
		return images;
	}

	
	public static ArrayList<String> getCoverImages()
	{
		ArrayList<String> images = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select cover from cover_image order by id asc";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				images.add(rs.getString(1));
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(rs, pstmt, con);
		}
		
		return images;
	}
	
	public static String getSingleCover(int id)
	{
		String image = "";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select cover from cover_image where id =?";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				image = rs.getString(1);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(rs, pstmt, con);
		}
		
		return image;
	}
	
	

	public static boolean insertImageName(int Id, String imageName)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into image_names values(?, ?)";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, Id);
			pstmt.setString(2, imageName);
			
			pstmt.executeUpdate();
			return true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(null, pstmt, con);
		}
		
		return false;
	}
	
	public static boolean insertCoverName(int Id, String imageName)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into cover_image values(?, ?)";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, Id);
			pstmt.setString(2, imageName);
			
			pstmt.executeUpdate();
			return true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(null, pstmt, con);
		}
		
		return false;
	}
	
	public static boolean deleteImageName(int Id, String imageName, String table)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql="";
		
		if (table.equals("cover")) {
			
			try
			{
				sql = "delete from cover_image where id = ? and cover = ?";

				con = DBUtil.getConnection();
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, Id);
				pstmt.setString(2, imageName);
				
				pstmt.executeUpdate();
				
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				DBUtil.closeAllDBResources(null, pstmt, con);
			}
			
			try
			{
				sql = "delete from image_names where id = ? and image_name = ?";
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, Id);
				pstmt.setString(2, imageName);
				
				pstmt.executeUpdate();
				return true;
		
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				DBUtil.closeAllDBResources(null, pstmt, con);
			}

		}
		else if (table.equals("photo")) {
			sql = "delete from image_names where id = ? and image_name = ?";
			try
			{
				con = DBUtil.getConnection();
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, Id);
				pstmt.setString(2, imageName);
				
				pstmt.executeUpdate();
				return true;
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			finally
			{
				DBUtil.closeAllDBResources(null, pstmt, con);
			}	
		}
		

		return false;
	}
	
	public static List<HouseBean> getHouses(String type)
	{
		ArrayList<HouseBean> list = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from Basic_details order by id asc";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			
			
			rs =pstmt.executeQuery();
			
			while(rs.next()){
//				HouseBean house = new HouseBean(rs.getInt(1), rs.getString("title"), rs.getString("address1"), rs.getString("address2"), rs.getString("landmark"),
//						rs.getString("city"), rs.getString("state"), rs.getString("type"), rs.getString("available_for"), rs.getString("shared"), rs.getString("single"), 
//						rs.getString("max_people"), rs.getString("person"), rs.getString("contact"), rs.getString("email"));
				
				HouseBean house = new HouseBean(rs.getInt("id"), rs.getString("landmark"), rs.getString("city"), rs.getString("city"), rs.getString("type"), 
						rs.getString("available_for"), rs.getString("dateNow"), rs.getString("availability"), rs.getString("shared"), rs.getString("single"));
				list.add(house);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(rs, pstmt, con);
		}
		
		return list;
	}
	
	public static HouseBean getEditData(int Id)
	{
		
		Connection con = null;
		PreparedStatement pstmt = null,pstmt1=null,pstmt2=null,pstmt3=null,pstmt4=null;
		ResultSet rs = null,rs1=null,rs2=null,rs3=null,rs4=null;
		HouseBean house = null;
		
		String sql = "select * from Basic_details where id= ?";
		String sql1 = "select * from desc1 where id= ?";
		String sql2 = "select * from furniture where id= ?";
		String sql3 = "select * from appliances where id= ?";
		String sql4 = "select * from amenities where id= ?";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt1 = con.prepareStatement(sql1);
			pstmt2 = con.prepareStatement(sql2);
			pstmt3 = con.prepareStatement(sql3);
			pstmt4 = con.prepareStatement(sql4);
			
			
			pstmt.setInt(1, Id);
			pstmt1.setInt(1, Id);
			pstmt2.setInt(1, Id);
			pstmt3.setInt(1, Id);
			pstmt4.setInt(1, Id);
			
			rs =pstmt.executeQuery();
			rs1 =pstmt1.executeQuery();
			rs2 =pstmt2.executeQuery();
			rs3 =pstmt3.executeQuery();
			rs4 =pstmt4.executeQuery();
			
			if(rs.next() && rs1.next() && rs2.next() && rs3.next() && rs4.next()){
				house = new HouseBean(rs.getInt("id"), rs.getString("title"), rs.getString("address1"), rs.getString("address2"), rs.getString("landmark"), rs.getString("city"), 
						rs.getString("state"), rs.getString("type"), rs.getString("available_for"), rs.getString("shared"), rs.getString("single"), rs.getString("max_people"), 
						rs.getString("person"), rs.getString("contact"), rs.getString("email"), rs.getString("availability"), rs1.getString("description"), rs1.getString("our_services"),
						rs2.getString("beds"), rs2.getString("mattresses"), rs2.getString("tables"), rs2.getString("sofasets"), rs2.getString("dining_table"), rs2.getString("wall_furnishing"),
						rs3.getString("led"), rs3.getString("automatic_wash"), rs3.getString("refridgerator"), rs3.getString("utensils"), rs3.getString("gas_stove"), rs4.getString("wifi"), 
						rs4.getString("e_bill"), rs4.getString("w_bill"), rs4.getString("tv_bill"), rs4.getString("gas_bill"), rs4.getString("flat_bill"),rs2.getString("not_available")
						,rs3.getString("not_available"),rs4.getString("not_available"));
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(rs, pstmt, con);
		}
		
		return house;
	}
	
	public static boolean getStatus(int id)
	{
		
		String sql = "select * from Basic_details where id = "+id;
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
		
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally 
		{
			DBUtil.closeAllDBResources(rs, pstmt, con);
		}
		return false;
	}


}
