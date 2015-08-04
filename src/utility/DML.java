package utility;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DML
{
	static Connection con = null;
	static Statement stmt = null;
	static ResultSet rs = null;
	
	public static int generateID(String table, String column)
	{
		int id = 1;
		
		try
		{
			con = DBUtil.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select max(" + column + ") from " + table);
			if(rs.next())
			{
				id = rs.getInt(1) + 1;
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(rs, stmt, con);
		}
		
		return id;
	}
	
	public static boolean executeUpdate(String sql)
	{
		try
		{
			con = DBUtil.getConnection();
			stmt = con.createStatement();
			stmt.executeUpdate(sql);
			return true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeAllDBResources(rs, stmt, con);
		}
		return false;
	}
}
