package p1;
import java.sql.*;
import java.util.ArrayList;
public class Connect {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public Connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			//step2 create  the connection object  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_student","root","");  
			System.out.println("Connected");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean save_records(int roll,String sname,String city,int marks)
	{
		boolean b=false;
		try {
			String sql="INSERT INTO tbl_student(roll,sname,city,marks)VALUES(?,?,?,?)";
			ps=con.prepareStatement(sql);			
			ps.setInt(1, roll);
			ps.setString(2,sname);
			ps.setString(3,city);
			ps.setInt(4,marks);
			int n=ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}
	public boolean update_records(int roll,String sname,String city,int marks)
	{
		boolean b=false;
		try {
			String sql="UPDATE tbl_student SET sname=?,city=?,marks=? WHERE roll=?";
			ps=con.prepareStatement(sql);			
			ps.setInt(4, roll);
			ps.setString(1,sname);
			ps.setString(2,city);
			ps.setInt(3,marks);
			int n=ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}
	public boolean delete_records(int roll)
	{
		boolean b=false;
		try {
			String sql="DELETE FROM  tbl_student WHERE roll=?";
			ps=con.prepareStatement(sql);			
			ps.setInt(1, roll);
			int n=ps.executeUpdate();
			if(n>0)
				b=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}
	public ArrayList<Student> getRecords()
	{
		ArrayList<Student> arr=new ArrayList<Student>();
		String sql="SELECT roll,sname,city,marks FROM tbl_student ORDER BY roll";
		try{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next())
			{
				Student s=new Student();
				s.setRoll(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setCity(rs.getString(3));
				s.setMarks(rs.getInt(4));
				arr.add(s);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return arr;
	}
	public ArrayList<Student> getRecordsByRoll(int roll)
	{
		ArrayList<Student> arr=new ArrayList<Student>();
		String sql="SELECT roll,sname,city,marks FROM tbl_student WHERE roll=?";
		try{
			ps=con.prepareStatement(sql);
			ps.setInt(1,roll);
			rs=ps.executeQuery();
			if(rs.next())
			{
				Student s=new Student();
				s.setRoll(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setCity(rs.getString(3));
				s.setMarks(rs.getInt(4));
				arr.add(s);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return arr;
	}
}
