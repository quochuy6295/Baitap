package test;

import java.time.LocalDate;
import java.time.LocalTime;

public class Exercise2 {

	public static void main(String[] args) {
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
		Account nam = new Account();
		nam.accountID = 1;
		nam.email = "nam0205@gmail.com";
		nam.username = "duynam";
		nam.fullName = "nguyenduynam";
		nam.position = account3;
		nam.createDate = LocalDate.of(2020,04,01);
		nam.joinDate = LocalDate.of(2020,04,06);
		nam.department = sale;
				
		Account dung = new Account();
		dung.accountID = 2;
		dung.email = "dung0132@gmail.com";
		dung.username = "dungquan";
		dung.fullName = "quanthidung";
		dung.position = account2;
		dung.createDate = LocalDate.of(2020,02,20);
		dung.joinDate = LocalDate.of(2020,04,06);
		dung.department = security;

		Account cuong = new Account();
		cuong.accountID = 3;
		cuong.email = "cuongpham23@gmail.com";
		cuong.username = "cuongpham";
		cuong.fullName = "phamvancuong";
		cuong.position = account1;
		cuong.createDate = LocalDate.of(2018,04,12);
		cuong.joinDate = LocalDate.of(2020,05,06);
		cuong.department = marketting;
		
		Account tung = new Account();
		tung.accountID = 4;
		tung.email = "tungnghiem@gmail.com";
		tung.username = "tungnghiem";
		tung.fullName = "nghiemxuantung";
		tung.position = account4;
		tung.createDate = LocalDate.of(2019, 12, 10);
		tung.joinDate = LocalDate.of(2019,10,06);
		tung.department = it;
		

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
		lg.creatorID = nam;

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
		bai1.createId = tung;
		bai1.createDate = LocalDate.of(2008, 01, 03);

		Exam bai2 = new Exam();
		bai2.examId = 2;
		bai2.code = "f254";
		bai2.title = "tim hieu cau truc may tinh";
		bai2.categoryId = c1question;
		bai2.duration = LocalTime.of(00, 50);
		bai2.createId = tung;
		bai2.createDate = LocalDate.of(2008, 06, 12);

		Exam bai3 = new Exam();
		bai3.examId = 5;
		bai3.code = "e144";
		bai3.title = "danh gia dau ra";
		bai3.categoryId = c2question;
		bai3.duration = LocalTime.of(00, 45);
		bai3.createId = cuong;
		bai3.createDate = LocalDate.of(2008, 05, 01);

		Exam bai4 = new Exam();
		bai4.examId = 4;
		bai4.code = "k54";
		bai4.title = "cac cau lenh trong co so du lieu";
		bai4.categoryId = c3question;
		bai4.duration = LocalTime.of(00, 30);
		bai4.createId = tung;
		bai4.createDate = LocalDate.of(2007, 02, 04);

		/*update*/
		Account[] accountOfDepartment1 = {nam,dung};
		it.employees = accountOfDepartment1;
		
		Account[] accountOfDepartment2 = {cuong,tung};
		sale.employees = accountOfDepartment2;
		
		Account[] accountOfDepartment3 = {tung,dung};
		security.employees = accountOfDepartment3;
		
		Account[] accountofGroup1 = {nam};
		hnt.participants = accountofGroup1;
		
		Group[] groupOfAccount1 = {hnt, cha};
		nam.groups = groupOfAccount1;
		
		Group[] groupOfAccount2 = {hoya};
		dung.groups = groupOfAccount2;
		
		Group[] groupOfAccount3 = {hoya, cha};
		cuong.groups = groupOfAccount3;
		
		Group[] groupOfAccount4 = {lg};
		tung.groups = groupOfAccount4;
		
		Exam[] questionInExam1 = {bai1, bai2};
		cau1.exams = questionInExam1;
		
		Exam[] questionInExam2 = {bai3, bai2};
		cau2.exams = questionInExam2;
		
		Exam[] questionInExam3 = {bai1, bai4};
		cau3.exams = questionInExam3;}}
		/*Question 5:
			Lấy ra số lượng account trong nhóm thứ 1 và in ra theo format sau:
			Nếu số lượng account = 1 thì in ra "Nhóm có một thành viên"
			Nếu số lượng account = 2 thì in ra "Nhóm có hai thành viên"
			Nếu số lượng account = 3 thì in ra "Nhóm có ba thành viên"
			Còn lại in ra "Nhóm có nhiều thành viên"*/
//		int x = nam.groups.length;
//		switch(x)
//		{
//			case 1: 
//				System.out.println("nhom co mot thanh vien");
//				break;
//			case 2:
//				System.out.println("nhom co hai thanh vien");
//				break;
//			case 3:
//				System.out.println("nhom co 3 thanh vien");
//				break;
//			}}}
		/*Question 6: Sử dụng switch case để làm lại Question 2*/
//		int x = dung.groups.length;
//		System.out.println(x);
//		switch(x) 
//		{
//		case 0:
//			System.out.println("nhan vien nay chua co group");
//			break;
//		case 1:
//			System.out.println("group cua nhan vien nay la" + " " +"hnt");
//			break;
//		case 2:
//			System.out.println("group cua nhan vien nay la" + " " +"hnt");
//			break;
//		case 3: 
//			System.out.println("Nhân viên này là người quan trọng, tham gia nhiều group");
//			break;
//		default:
//			System.out.println("Nhân viên này là người hóng chuyện, tham gia tất cả các group");
//		}
//		
		/*Question 7:  switch case để làm lại Question 4*/
//		int x = nam.position.positionID;
//		System.out.println(x);
//		switch(x)
//		{
//		case 2:
//			System.out.println("Đây là developer");
//			break;
//		default:
//			System.out.println("Người này không phải là developer");
//		}
//		}
//	}

		
