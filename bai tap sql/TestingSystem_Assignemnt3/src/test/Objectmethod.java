package test;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Scanner;

public class Objectmethod {

	public static void main(String[] args) {
				Question6();}
	    /*Question 1:
	    In ra thông tin của phòng ban thứ 1 (sử dụng toString())*/
//	    public static void Question1(){
//	    	// insert departmentID//
//			Department sale = new Department();
//			sale.departmentId = 2;
//			sale.departmentName = "sale";
//	        System.out.println(sale.toString());
	    /*Question 2:
	        	In ra thông tin của tất cả phòng ban (sử dụng toString())*/
//	public static void Question2(){
//	        Department sale = new Department();
//			sale.departmentId = 2;
//			sale.departmentName = "sale";
//
//			Department marketting = new Department();
//			marketting.departmentId = 3;
//			marketting.departmentName = "marketing";
//
//			Department it = new Department();
//			it.departmentId = 8;
//			it.departmentName = "it";
//
//			Department security = new Department();
//			security.departmentId = 6;
//			security.departmentName = "security";
//			Department[] department = {sale,marketting,it,security};
//			int x= department.length;
//			System.out.println(x);
//			for (int i =0; i<= department.length-1;i++)
//			{
//				System.out.println(department[i].toString());
//			}
	/*Question 3:
				In ra địa chỉ của phòng ban thứ 1*/
//	public static void Question3(){
//			Department sale = new Department();
//			sale.departmentId = 2;
//			sale.departmentName = "sale";
//	System.out.println(sale.hashCode());
	/*Question 4: Kiểm tra xem phòng ban thứ 1 có tên là "Phòng A" không?*/
//	public static void Question4(){
//		Department sale = new Department();
//		sale.departmentId = 2;
//		sale.departmentName = "sale";
//		String x = "Phong 4";
//		if (sale.departmentName.equalsIgnoreCase(x))
//		{
//			System.out.println("Phòng A có trong phòng ban 1");
//			}
//		else {
//			System.out.println("Phòng A không có trong phòng ban 1");}
	/*Question 5: So sánh 2 phòng ban thứ 1 và phòng ban thứ 2 xem có bằng nhau
	không (bằng nhau khi tên của 2 phòng ban đó bằng nhau)*/
//		public static void Question5(){
//			Department sale = new Department();
//			sale.departmentId = 2;
//			sale.departmentName = "sale";
//
//			Department marketting = new Department();
//			marketting.departmentId = 3;
//			marketting.departmentName = "marketing";	
//		
//		if(sale.departmentName.equals(marketting.departmentName)) {
//			System.out.println("hai phong ban giống nhau");
//		}else {
//			System.out.println("2 phòng ban khác nhau");
//		}
	public static void Question6(){
	/*Question 6: Khởi tạo 1 array phòng ban gồm 5 phòng ban, sau đó in ra danh
	sách phòng ban theo thứ tự tăng dần theo tên (sắp xếp theo vần ABCD)
	VD:
	Ăn gà
	Nơi Nghỉ ngơi
	Phòng Business
	Phòng Sale
	Uống nước*/
		Department[] department = new Department[5];
		Department sale = new Department();
		sale.departmentId = 2;
		sale.departmentName = "sale";

		Department marketting = new Department();
		marketting.departmentId = 3;
		marketting.departmentName = "marketing";

		Department it = new Department();
		it.departmentId = 8;
		it.departmentName = "it";

		Department security = new Department();
		security.departmentId = 6;
		security.departmentName = "security";
		
		Department aa = new Department();
		aa.departmentId = 1;
		aa.departmentName = "aa";
		Department[] department1 = {sale,marketting,security,aa};
		Department[].sortASC();
	}
	}
