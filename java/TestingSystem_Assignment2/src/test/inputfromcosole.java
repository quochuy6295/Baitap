package test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;
import java.util.Scanner;

public class inputfromcosole {

	public static void main(String[] args) throws ParseException {
		themaccount();
	}

//		while(true) {
//			System.out.println("so 1 la tao account");
//			System.out.println("so 2 la tao department");
//			System.out.println("moi ban nhap vao chuc nang ban muon su dung:");
//			Scanner CreateAccounts = new Scanner(System.in);
//			switch (CreateAccounts.nextInt()) {
//			case 1:
//				taoaccount();
//				break;
//			case 2:
//				taodepartment();
//				break;
//			default:
//				System.out.println("moi ban nhap lai");
//				break;
//			}
//			CreateAccounts.close();
//	}
//	}
//		
////Question 1: Viết lệnh cho phép người dùng nhập 3 số nguyên vào chương trình//
////		Scanner scan = new Scanner(System.in);
////		System.out.println("moi nguoi dung nhap 3 so:");
////	for(int i =01 ; i< 3 ;i++)
////		{
////		System.out.println("moi ban nhap so thu "+ i+ " ");
////		int nhapso = scan.nextInt();
////		System.out.println("so ban vua nhap "+ nhapso);
////	}
//	/*Question 2: Viết lệnh cho phép người dùng nhập 2 số thực vào chương trình*/
////	System.out.println("moi nguoi dung nhap 2 so:");
////	for(int i =0 ; i< 2 ;i++)
////		{
////		System.out.println("moi ban nhap so thu "+ i+ " ");
////		float nhapso = scan.nextFloat();
////		System.out.println("so ban vua nhap "+ nhapso);
////	}
////	scan.close();
//	/*Question 3: Viết lệnh cho phép người dùng nhập họ và tên*/
////	System.out.println("moi bạn nhập vào ho va ten");
////	String s1 = scan.next();
////	System.out.println("input"+ s1 +"\n");	
//	/*Question 4: Viết lệnh cho phép người dùng nhập vào ngày sinh nhật của họ*/
////	Scanner scanner = new Scanner(System.in);
////	System.out.println("moi ban nhap ngay sinh theo dịnh dang dd/MM/yyyy:");
////	String birthday = scan.next();
////	
////	String pattern = "dd/MM/yyyy";
////	SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
////	Date date = dateFormat.parse(birthday);
////	System.out.println("input:"+date);
////	scanner.close();
//	/*Question 5: Viết lệnh cho phép người dùng tạo account (viết thành method)
//	Đối với property Position, Người dùng nhập vào 1 2 3 4 5 và vào
//	chương trình sẽ chuyển thành Position.Dev, Position.Test,
//	Position.ScrumMaster, Position.PM*/
////}
//	public static void taoaccount() {
//	String ten1 = "Position.Dev";
//	String ten2 = "Position.Test";
//	String ten3 = "Position.ScrumMaster";
//	String ten4 = "Position.PM";
//	
//	Scanner scanner = new Scanner(System.in);
//	System.out.println("id cua nguoi nhap");
//	int s1 = scanner.nextInt();
//	System.out.println("id nguoi nhap"+" " + s1);
//	System.out.println("user nguoi nhap");
//	String s2 = scanner.next();
//	System.out.println("user nguoi nhap"+" " + s2);
//	System.out.println("fullname");
//	String s3 = scanner.next();
//	System.out.println("fullname"+ " " +s3);
//	System.out.println("position");
//	int s4 = scanner.nextInt();
//	switch(s4)
//	{
//	case 1:
//		System.out.println(ten1);
//		break;
//	case 2: 
//		System.out.println(ten2);
//		break;
//	case 3:
//		System.out.println(ten3);
//		break;
//	case 4:
//		System.out.println(ten4);
//		break;
//	default :
//		System.out.println("moi ban nap lại");}
//	scanner.close();
//	}
//	public static void taodepartment() {
//		Scanner scanner = new Scanner(System.in);
//		System.out.println("moi ban nhap vao id bo phan");
//		int s1 = scanner.nextInt();
//		
//		System.out.println("moi ban nhap vao ten bo phan");
//		String s2 = scanner.next();
//		scanner.close();}}}
//	/*Question 7: Nhập số chẵn từ console*/
////	Scanner scanner = new Scanner(System.in);
////	System.out.println("moi ban nhap vao 1 so");
////	int i = scanner.nextInt();
////	if(i%2==0)
////	{
////		System.out.println("so ban vua nhap la="+i);
////	}
////	else 
////	{
////		System.out.println("ban da nhap sai so");
////	}
////	scanner.close();
//		
//	/*Question 9: Viết method cho phép người dùng thêm group vào account
//Bước 1: In ra tên các usernames của user cho người dùng xem
//Bước 2: Yêu cầu người dùng nhập vào username của account
//Bước 3: In ra tên các group cho người dùng xem
//Bước 4: Yêu cầu người dùng nhập vào tên của group
//Bước 5: Dựa vào username và tên của group người dùng vừa chọn, hãy thêm
//account vào group đó .*/
	public static void themaccount() {
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

		// insert position//
		Position account1 = new Position();
		account1.positionID = 1;
		account1.positionName = PositionName.SCRUMMASTER;

		Position account2 = new Position();
		account2.positionID = 2;
		account2.positionName = PositionName.DEV;

		Position account3 = new Position();
		account3.positionID = 4;
		account3.positionName = PositionName.PM;

		Position account4 = new Position();
		account4.positionID = 3;
		account4.positionName = PositionName.TEST;

		// insert account//

		Account acc1 = new Account();
		acc1.accountID = 1;
		acc1.email = "nam0205@gmail.com";
		acc1.username = "duynam";
		acc1.fullName = "nguyenduynam";
		acc1.position = account3;
		acc1.createDate = LocalDate.of(2020, 04, 01);
		acc1.joinDate = LocalDate.of(2020, 04, 06);
		acc1.department = sale;

		Account acc2 = new Account();
		acc2.accountID = 2;
		acc2.email = "dung0132@gmail.com";
		acc2.username = "dungquan";
		acc2.fullName = "quanthidung";
		acc2.position = account2;
		acc2.createDate = LocalDate.of(2020, 02, 20);
		acc2.joinDate = LocalDate.of(2020, 04, 06);
		acc2.department = security;

		Account acc3 = new Account();
		acc3.accountID = 3;
		acc3.email = "cuongpham23@gmail.com";
		acc3.username = "cuongpham";
		acc3.fullName = "phamvancuong";
		acc3.position = account1;
		acc3.createDate = LocalDate.of(2018, 04, 12);
		acc3.joinDate = LocalDate.of(2020, 05, 06);
		acc3.department = marketting;

		Account acc4 = new Account();
		acc4.accountID = 4;
		acc4.email = "tungnghiem@gmail.com";
		acc4.username = "tungnghiem";
		acc4.fullName = "nghiemxuantung";
		acc4.position = account4;
		acc4.createDate = LocalDate.of(2019, 12, 10);
		acc4.joinDate = LocalDate.of(2019, 10, 06);
		acc4.department = it;

		// insert group //
		Group hnt = new Group();
		hnt.groupID = 2;
		hnt.groupName = "hnt";
		hnt.CreateDate = LocalDate.of(2007, 02, 01);

		Group hoya = new Group();
		hoya.groupID = 4;
		hoya.groupName = "hoya";
		hoya.CreateDate = LocalDate.of(2005, 01, 10);

		Group cha = new Group();
		cha.groupID = 2;
		cha.groupName = "cha";
		cha.CreateDate = LocalDate.of(2009, 05, 10);

		Group lg = new Group();
		lg.groupID = 1;
		lg.groupName = "lg";
		lg.CreateDate = LocalDate.of(2001, 10, 01);

		// insert typequestion //
		Typequestion type1 = new Typequestion();
		type1.typeID = 2;
		type1.typeName = "Essay";

		Typequestion type2 = new Typequestion();
		type2.typeID = 1;
		type2.typeName = "Essay";

		Typequestion type3 = new Typequestion();
		type3.typeID = 3;
		type3.typeName = "Multiple-choice";

		Typequestion type4 = new Typequestion();
		type4.typeID = 4;
		type4.typeName = "Yes or No";

		// insert Categoryquestion//
		Categoryquestion c1question = new Categoryquestion();
		c1question.categoryID = 1;
		c1question.categoryName = "C++";

		Categoryquestion c2question = new Categoryquestion();
		c2question.categoryID = 2;
		c2question.categoryName = "C";

		Categoryquestion c3question = new Categoryquestion();
		c3question.categoryID = 4;
		c3question.categoryName = "Ruby";

		Categoryquestion c4question = new Categoryquestion();
		c4question.categoryID = 5;
		c4question.categoryName = "Postman";

		// insert Question//
		Question cau1 = new Question();
		cau1.questionId = 2;
		cau1.content = "SQL lÃ  tá»« viáº¿t táº¯t cá»§a:";
		cau1.categoryId = c3question;
		cau1.typeID = type2;
		cau1.creatorId = 2;
		cau1.createDate = LocalDate.of(2005, 02, 06);

		Question cau2 = new Question();
		cau2.questionId = 1;
		cau2.content = "Cac cach lap co so du lieu:";
		cau2.categoryId = c4question;
		cau2.typeID = type3;
		cau2.creatorId = 1;
		cau2.createDate = LocalDate.of(2005, 01, 10);

		Question cau3 = new Question();
		cau3.questionId = 3;
		cau3.content = "Tac dung cua cau lenh";
		cau3.categoryId = c2question;
		cau3.typeID = type2;
		cau3.creatorId = 3;
		cau3.createDate = LocalDate.of(2005, 05, 12);

		Question cau4 = new Question();
		cau4.questionId = 5;
		cau4.content = "ram vÃ  rom co tac dung gi";
		cau4.categoryId = c3question;
		cau4.typeID = type4;
		cau4.creatorId = 3;
		cau4.createDate = LocalDate.of(2007, 05, 12);

		// insert answer //
		Answer traloi1 = new Answer();
		traloi1.answerId = 2;
		traloi1.content = "insert into";
		traloi1.questionId = cau2;
		traloi1.isCorrect = true;

		Answer traloi2 = new Answer();
		traloi2.answerId = 1;
		traloi2.content = "delete tap tin";
		traloi2.questionId = cau3;
		traloi2.isCorrect = false;

		Answer traloi3 = new Answer();
		traloi3.answerId = 3;
		traloi3.content = "cac cau lenh trong sql";
		traloi3.questionId = cau2;
		traloi3.isCorrect = true;

		Answer traloi4 = new Answer();
		traloi4.answerId = 4;
		traloi4.content = "insert into";
		traloi4.questionId = cau1;
		traloi4.isCorrect = false;

		// insert exam //
		Exam bai1 = new Exam();
		bai1.examId = 1;
		bai1.code = "g265";
		bai1.title = "khao sat trinh do cua sinh vien";
		bai1.categoryId = c4question;
		bai1.duration = LocalTime.of(01, 30);
		bai1.createId = acc4;
		bai1.createDate = LocalDate.of(2008, 01, 03);

		Exam bai2 = new Exam();
		bai2.examId = 2;
		bai2.code = "f254";
		bai2.title = "tim hieu cau truc may tinh";
		bai2.categoryId = c1question;
		bai2.duration = LocalTime.of(00, 50);
		bai2.createId = acc4;
		bai2.createDate = LocalDate.of(2008, 06, 12);

		Exam bai3 = new Exam();
		bai3.examId = 5;
		bai3.code = "e144";
		bai3.title = "danh gia dau ra";
		bai3.categoryId = c2question;
		bai3.duration = LocalTime.of(00, 45);
		bai3.createId = acc3;
		bai3.createDate = LocalDate.of(2008, 05, 01);

		Exam bai4 = new Exam();
		bai4.examId = 4;
		bai4.code = "k54";
		bai4.title = "cac cau lenh trong co so du lieu";
		bai4.categoryId = c3question;
		bai4.duration = LocalTime.of(00, 30);
		bai4.createId = acc4;
		bai4.createDate = LocalDate.of(2007, 02, 04);

		/* update */
		Account[] accountOfDepartment1 = { acc1, acc2 };
		it.employees = accountOfDepartment1;

		Account[] accountOfDepartment2 = { acc3, acc4 };
		sale.employees = accountOfDepartment2;

		Account[] accountOfDepartment3 = { acc4, acc2 };
		security.employees = accountOfDepartment3;

		Account[] accountofgroup1 = { acc1 };
		hnt.participants = accountofgroup1;

		Account[] accountofgroup2 = { acc2, acc2 };
		hoya.participants = accountofgroup2;

		Account[] accountofgroup3 = { acc3, acc1 };
		cha.participants = accountofgroup3;

		Account[] accountofgroup4 = { acc4 };
		lg.participants = accountofgroup4;

		Group[] groupOfAccount1 = { hnt, cha };
		acc1.groups = groupOfAccount1;

		Group[] groupOfAccount2 = { hoya };
		acc2.groups = groupOfAccount2;

		Group[] groupOfAccount3 = { hoya, cha };
		acc3.groups = groupOfAccount3;

		Group[] groupOfAccount4 = { lg };
		acc4.groups = groupOfAccount4;

		Exam[] questionInExam1 = { bai1, bai2 };
		cau1.exams = questionInExam1;

		Exam[] questionInExam2 = { bai3, bai2 };
		cau2.exams = questionInExam2;

		Exam[] questionInExam3 = { bai1, bai4 };
		cau3.exams = questionInExam3;

		Exam[] questionInExam4 = { bai1 };
		cau4.exams = questionInExam4;

		Account[] accounts = { acc1, acc2, acc3, acc4 };
		Group[] groups = { hnt, hoya, cha, lg };
		Scanner scanner = new Scanner(System.in);
		for (int i = 0; i < accounts.length; i++) {
			System.out.println(accounts[i]);
		}
		System.out.println("moi ban nhap vao user ban muon tao");
		String username1 = scanner.next();
		for (int i = 0; i < accounts.length; i++) {
			if (username1 == accounts[i].username) {
				System.out.println("ban da nhap dung username"+ username1);
			} else {
				System.out.println("ban da nhap sai username");
			}
		}

		for (int i = 0; i < groups.length; i++) {
			System.out.println(groups[i]);
		}
		System.out.println("moi ban nhap vao group ban muon tham gia");
		String group1 = scanner.next();
		for (int i = 0; i < groups.length; i++) {
			if (group1 == groups[i].groupName) {
				System.out.println("group ban đã nhập là:"+ group1);
			} else {
				System.out.println("ban da nhap sai group");
			}
		}
		
		
		
		
	}
}
