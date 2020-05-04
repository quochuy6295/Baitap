package test;

import java.util.Scanner;

public class BaitapString {

//	private static final char SPACE = ' ';
	public static void main(String[] args) {
		nhapstring();
	}
	/*Question 1:
		Nhập một xâu kí tự, đếm số lượng các từ trong xâu kí tự đó (các từ có
		thể cách nhau bằng nhiều khoảng trắng );*/
//	public static void nhapstring() {
//		Scanner scan = new Scanner(System.in);
//		System.out.println("moi ban nhap vao 1 chuoi string");
//		String x = scan.next();
//		while (x == null) {
//			System.out.println("moi ban nhap lai chuoi");
//		}
//		int count = 0;
//		int i=0;
//		while (i <= x.length()) {
//			if(x.charAt(i) != SPACE) {
//				count +=1;
//			}
//		i++;
//		}
//		System.out.println(count);
//		scan.close();
//	public static void nhapstring() {
		/*Question 2:
			Nhập hai xâu kí tự s1, s2 nối xâu kí tự s2 vào sau xâu s1;*/
//		Scanner scan = new Scanner(System.in);
//		System.out.println("moi ban nhap vao chuoi s1");
//		String s1 = scan.nextLine();
//		System.out.println("moi ban nhap vao chuoi s2");
//		String s2 = scan.nextLine();
//		String s3 = new String();
//		s3 = s1.concat(s2);
//		System.out.println(s3);
//		scan.close();
//	public static void nhapstring() {
//		/*Question 3:
//Viết chương trình để người dùng nhập vào tên và kiểm tra, nếu tên chư
//viết hoa chữ cái đầu thì viết hoa lên*/
//		Scanner scan = new Scanner(System.in);
//		System.out.println("moi ban nhap vao doan chuoi ban muon tao");
//		String x = scan.nextLine();
//		String z = x.substring(0, 1).toUpperCase() + x.substring(1);
//		System.out.println(z);
//		scan.close();
//	public static void nhapstring() {
//		/*Question 4:
//			Viết chương trình để người dùng nhập vào tên in từng ký tự trong tên
//			của người dùng ra
//			VD:
//			Người dùng nhập vào "Nam", hệ thống sẽ in ra
//			"Ký tự thứ 1 là: N"
//			"Ký tự thứ 1 là: A"
//			"Ký tự thứ 1 là: M"*/
//	Scanner scan = new Scanner(System.in);
//	System.out.println("moi ban nhap vao gia tri muon nhap");
//	String x = scan.nextLine();
//	char kytu;
//	for(int i=0;i<x.length();i++)
//	{
//		kytu = x.charAt(i);
//		System.out.println(kytu);
//	}
//	scan.close();
//	public static void nhapstring() {
//		/*Question 5:
//			Viết chương trình để người dùng nhập vào họ, sau đó yêu cầu người
//			dùng nhập vào tên và hệ thống sẽ in ra họ và tên đầy đủ*/
//	Scanner scan = new Scanner(System.in);
//	System.out.println("moi ban nhap vao ho");
//	String x = scan.nextLine();
//	System.out.println("moi ban nhap vao ten");
//	String y = scan.nextLine();
//	System.out.printf("%s %s",x,y);
//	scan.close();
//	public static void nhapstring() {
//		/*Question 6:
//			Viết chương trình yêu cầu người dùng nhập vào họ và tên đầy đủ và
//			sau đó hệ thống sẽ tách ra họ, tên , tên đệm
//			VD:
//			Người dùng nhập vào "Nguyễn Văn Nam"
//			Hệ thống sẽ in ra
//			"Họ là: Nguyễn"
//			"Họ là: Văn"
//			"Họ là: Nam"*/
//	Scanner scan = new Scanner(System.in);
//	System.out.println("moi ban nhap vao 1 chuoi");
//	String x = scan.nextLine();
//	String[] y = x.split(" ");
//	for (String k:y) {
//		System.out.println(k);
//	}
//	scan.close();
	public static void nhapstring() {
		/*Question 7:
			Viết chương trình yêu cầu người dùng nhập vào họ và tên đầy đủ và
			chuẩn hóa họ và tên của họ như sau:*/
//	Scanner scan = new Scanner(System.in);
//	System.out.println("moi ban nhap vao ho va ten");
//	String x = scan.nextLine();
	/*a) Xóa dấu cách ở đầu và cuối của chuỗi người dùng nhập vào
	VD: Nếu người dùng nhập vào " nguyễn văn nam " thì sẽ
	chuẩn hóa thành "nguyễn văn nam"*/
//	System.out.println(x.trim());
	/*b) Viết hoa chữ cái mỗi từ của người dùng
	VD: Nếu người dùng nhập vào " nguyễn văn nam " thì sẽ
	chuẩn hóa thành "Nguyễn Văn Nam"(chưa ra)*/
//	String[] ar = x.split(" ");
//	String z = " ";
//	for(String k : ar) {
//		z = z + (x.substring(0,1).toUpperCase()+ x.substring(1));
//		z = z + " ";
//	}
//	System.out.println(z);
//	scan.close();
	/*Question 8:
		In ra tất cả các group có chứa chữ "Java"*/
//	String[] group = {"Java","devjava","c++","dep"};
//	String x = "Java";
//	boolean check = true;
//	for (int i=0;i<group.length();i++) {
//		if (group[i].contains(x)) {
//			check = true;
//		}else { check = false;}
//	if(check == true) {
//		System.out.println(group[i]);}
//	}
	/*Question 9:
		In ra tất cả các group "Java"*/
//	String[] group = {"Java","javaspirit","dev","C"};
//	String x = "java";
//	for(int i=0;i<group.length;i++) {
//		if(group[i].equalsIgnoreCase(x) == true) {
//			System.out.println(group[i]);
//		}
//	}
	/*Question 10:
			Kiểm tra 2 chuỗi có là đảo ngược của nhau hay không.
			Nếu có xuất ra “OK” ngược lại “KO”.
			Ví dụ “word” và “drow” là 2 chuỗi đảo ngược nhau.*/
//	Scanner scan = new Scanner(System.in);
//	System.out.println("moi ban nhap vao chuoi 1");
//	String x = scan.nextLine();
//	System.out.println("moi ban nhap vao chuoi 2");
//	String y = scan.nextLine();
//	String z = "";
//	for (int i = x.length()-1;i>=0;i--)
//	{
//		z += x.substring(i, i+1);
//	}
//	if (y.equals(z))
//	{
//		System.out.println("đay la chuỗi đảo ngược");
//	}else {
//		System.out.println("day khong phai la chuoi dao nguoc");
//	}
//	scan.close();
		/*Question 11: Character unique
		Tìm ký tự chỉ xuất hiện một lần trong chuỗi
		Nếu có nhiều hơn một thì xuất ra màn hình ký tự đầu tiên.
		Nếu không có ký tự nào unique xuất ra “NO”.*/
//	Scanner scan = new Scanner(System.in);
//	System.out.println("moi ban nhap vao chuoi");
//	String x = scan.nextLine();
//	boolean check = true;
//	for (int i =0;i<x.length()-1;i++)
//		for(int j=i+i;j<x.length();i++) {
//			if(x.charAt(i) == x.charAt(j)) {
//				check = true;
//			}
//			if(check = true) {
//				System.out.println("ky tu unique là:"+ x.charAt(i));
//			}else 
//			{
//				System.out.println("no");
//			}
//		}
//	scan.close();
	/*Question 12: Reverse String
	Đảo ngược chuỗi sử dụng vòng lặp*/
//	Scanner scanner = new Scanner(System.in);
//	System.out.println("moi ban nhap vao gia tri chuoi");
//    String s1= scanner.nextLine();
//    String ss="";
//    for (int i=s1.length()-1; i>=0; i--){
//         ss+=s1.charAt(i);
//     }
//     System.out.println(ss);
//     scanner.close();
     /*Question 13: String not contains digit
     Kiểm tra một chuỗi có chứa chữ số hay không, nếu có in ra false ngược
     lại true.
     Ví dụ:
     "abc" => true
     "1abc", "abc1", "123", "a1bc", null => false*/
	/*Question 14: Replace character
	Cho một chuỗi str, chuyển các ký tự được chỉ định sang một ký tự khác
	cho trước.
	Ví dụ:
	"VTI Academy" chuyển ký tự 'e' sang '*' kết quả " VTI Acad*my"*/
//		Scanner scan = new Scanner(System.in);
//		System.out.println("moi ban nhap vao 1 chuoi");
//		String x = scan.nextLine();
//		System.out.println("moi ban nhap vao ky tu ban muon thay the");
//		String y = scan.nextLine();
//		System.out.println("moi ban nhap vao ky tu ban muon chuyen doi");
//		String k = scan.nextLine();
//		String z = x.replaceall(y,k);
//		System.out.println(z);
////		scan.close();
		/*Question 15: Revert string by word
		Đảo ngược các ký tự của chuỗi cách nhau bởi dấu cách mà không dùng
		thư viện.
		Ví dụ: " I am developer " => "developer am I".*/
//		Scanner scan = new Scanner(System.in);
//		System.out.println("moi ban nhap vao 1 chuoi");
//		String x = scan.nextLine();
//		x = x.trim();
//		String z ="";
//		String[] y = x.split(" ");
//		for(int i=y.length-1;i<=0;i--) {
//			z= z+i;
//		}
//		System.out.println(x);
//		System.out.printf("gia tri ban la %s",z);
//		scan.close();
		/*Question 16:
			Cho một chuỗi str và số nguyên n >= 0. Chia chuỗi str ra làm các phần
			bằng nhau với n ký tự. Nếu chuỗi không chia được thì xuất ra màn
			hình “KO”.*/
		/*Question 17: Character duplicate
		Tìm và in ra các ký tự xuất hiện nhiều hơn một lần trong String cho
		trước không phân biệt chữ hoa hay chữ thường. Nếu các ký tự trong
		chuỗi đều là duy nhất thì xuất ra “NO”.
		Ví dụ chuỗi “Java” thì có ký tự ‘a’.*/
		/*Question 18: Remove character duplicate
		Cho một chuỗi str, xoá các ký tự xuất hiện nhiều hơn một lần trong
		chuỗi và chỉ giữ lại ký tự đầu tiên*/
		/*Ví dụ: bananas => bans*/
		Scanner scan = new Scanner(System.in);
		System.out.println("moi ban nhap vao chuoi");
		String x = scan.nextLine();
		for (int i=0;i<x.length()-1;i++)
			for (int j =i+1;j <x.length();j++) {
				if (x.charAt(i) == x.charAt(j)){
					x.deleteCharAt(j);;
					j--;
				}
			}
	}
	}


	


