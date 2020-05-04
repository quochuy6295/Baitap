package test;

public class Department {
	int departmentId;
	String departmentName;
	Account[] employees;
	@Override
	public String toString() {
		String result = "";
		result = "id"+ departmentId +"\n"+ "fullname:" + departmentName;
		return result;
	}
}
