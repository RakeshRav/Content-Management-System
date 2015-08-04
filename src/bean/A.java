package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import utility.DBUtil;

public class A {

	public static void main(String[] args) {
Date d = new Date();
		String day = d.getDate()+"";
		String month = (d.getMonth()+1)+"";
		String year = (d.getYear()+1900)+"";
		String date = day+"/"+month+"/"+year;
		System.out.println(date);
		
		int i = 1;
		int j = i/3;
		System.out.println(j);
		
			ArrayList<String> images = new ArrayList<>();
			
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "select cover from cover_image order by id asc ";
			
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
			
			
			for (String image : images) {
				System.out.println(image);
			}
		

	}
}
