package p1;
public class Student
{
	private int roll,marks;
	private String name,city;
	public Student()
	{
		roll=marks=0;
		name=city=null;
	}
	public void setRoll(int roll)
	{
		this.roll=roll;
	}
	public int getRoll()
	{
		return roll;
	}
	public void setName(String name)
	{
		this.name=name;
	}
	public String getName()
	{
		return name;
	}
	public void setCity(String city)
	{
		this.city=city;
	}
	public String getCity()
	{
		return city;
	}
	public void setMarks(int marks)
	{
		this.marks=marks;
	}
	public int getMarks()
	{
		return marks;
	}

}