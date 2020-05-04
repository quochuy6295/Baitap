package test;

import java.util.Random;
import java.util.Scanner;

public class Extraassigment {

	public static void main(String[] args) {
		Scanner scanner =new Scanner(System.in);
		int z = scanner.nextInt();
		System.out.println("so ban vua nhap la"+z);
		int k = 2;
		int dem = 0;
		while(dem == z ) {
			isPrimeNumber(k) = true;
			{
				System.out.println();
				dem++;
			}
			k++;
		}
		
			}

			
		
		
//	public static void nhapso() {
		/*Viết chương trình nhập vào một số thực. Đơn vị tính cho số này là centimet
		(cm).
		Hãy in ra số tương đương tính bằng foot (số thực, có 2 số lẻ thập phân) và inch
		(số thực, có 2 số lẻ thập phân).
		Với 1 inch = 2.54 cm và 1 foot = 12 inches.*/
//		Scanner scanner =new Scanner(System.in);
//		System.out.println("moi ban nhap vao 1 so theo don vi centimet");
//		float x = scanner.nextFloat();
//		final float z= 2.54f;
//		final int t=12;
//		float k = x/z;
//		float p = k/t;
//		System.out.printf("gia tri theo inch la: %.2f",k);
//		System.out.printf("gia tri theo foot la: %.2f",p);
//		scanner.close();
//	}
//	public static void sovuanhap()
//	{	
//		/*Question 3:
//			Viết chương trình nhập vào 4 số nguyên.
//			Hiển thị ra số lớn nhất và nhỏ nhất
//			Ví dụ:
//			nhập vào 4 số 1,2,3,4 thì kết quả là:
//			Số lớn nhất là: 4
//			Số nhỏ nhất là: 1*/
//		Scanner scanner =new Scanner(System.in);
//		System.out.println("moi ban nhap vao 4 so bat kỳ");
//		int x = scanner.nextInt();
//		int y = scanner.nextInt();
//		int z = scanner.nextInt();
//		int t = scanner.nextInt();
//		int k = x;
//		if(k<=y) {
//			k=y;
//		}
//		if(k<=z) {
//			k=z;}
//		if(k<=t)
//		{
//			k=t;}
//	
//		int j=y;
//		if(j>=x) {
//			j=x;
//		}
//		if(j>=z) {
//			j=z;}
//		if(j>=t) {
//			j=t;
//		}
//		System.out.println("so lon nhat la=1"+k);
//		System.out.println("so nho nhat la="+j);
//		scanner.close();
//		}
	
//	public static void hieuhaiso() {
//		Scanner scanner = new Scanner(System.in);
//		System.out.println("moi ban nhap vao 2 so bat ky");
//		int x = scanner.nextInt();
//		int y = scanner.nextInt();
//		int result = x-y;
//		if (result<0) {
//			System.out.println("so thu nhat nho hon so thu hai");}
//			else if(result>0) {
//			System.out.println("so thu hai lon hon so thu nhat");}
//			else {
//			System.out.println("hai so bang nhau");}
//	}
//	public static void chiahet() {
//		Scanner scanner = new Scanner(System.in);
//		System.out.println("moi ban nhap vao 2 so");
//		int x = scanner.nextInt();
//		int y = scanner.nextInt();
//		if(x%y == 0) {
//			System.out.println("x chia het cho y");
//		}
//		else {
//			System.out.println("x khong chia het cho y");
//		}
//	public static void thanhtichhocsinh() {
//		Scanner scanner = new Scanner(System.in);
//		System.out.println("moi ban nhap vao 3 điểm cua sinh vien");
//		int x = scanner.nextInt();
//		int y = scanner.nextInt();
//		int z = scanner.nextInt();
//		int diemtrungbinh = (x*2+y+z);
//		if (diemtrungbinh>=9) {
//			System.out.println("loai xuât sắc");}
//		else if (8<= diemtrungbinh && diemtrungbinh>9){
//				System.out.println("loai gioi");}
//		else if(7<= diemtrungbinh && diemtrungbinh>8) {
//				System.out.println("loai kha");}
//		else if(6<= diemtrungbinh && diemtrungbinh>7) {
//				System.out.println("loai trung binh kha");}
//		else if(5<= diemtrungbinh && diemtrungbinh>6) {
//				System.out.println("loai trung binh ");}
//			else {
//				System.out.println("loai kem");
//			}
//		}
//	}
	/*exercise 2:*/
/*Question 1:
Nhập số liệu cho dãy số thực a0 , a1 ,..., an-1 .
Hãy liệt kê các phần tử xuất hiện trong dãy đúng một lần*/
//	public static void nhapgiatrivaoday() {
//		Scanner scanner = new Scanner(System.in);
//		System.out.println("nhap gia tri cua mang");
//		int n = scanner.nextInt();
//		int[] dayso = new int[n];
//		for(int i=0; i<dayso.length;i++) {
//			Random random = new Random();
//			dayso[i]= random.nextInt(100);
//		}
//		for(int i=0;i<dayso.length;i++)
//		{
//			System.out.println("gia tri cac phan tu la"+ " "+dayso[i]);
//		}
//		
//		for (int i=0;i<=dayso.length-1;i++) {
//			boolean check = true;
//			for (int j=i+1;j<dayso.length;j++) {
//				if(dayso[i]==dayso[j]) {
//					check = false;
//				}}
//				if(check == true) {
//					System.out.println(dayso[i]);
//					}
//			}
//		}
//}
	
	
////	
//	public static void taobangsao() {
//		Scanner scanner = new Scanner(System.in);
//		int n = scanner.nextInt();
		
		
	
		
	
	/*Viết chương trình nhập vào 4 số nguyên.
	Hiển thị ra số lớn nhất và nhỏ nhất
	Ví dụ:
	nhập vào 4 số 1,2,3,4 thì kết quả là:
	Số lớn nhất là: 4
	Số nhỏ nhất là: 1*/
//		public static void nhapsonguyen() {
//			Scanner scanner =new Scanner(System.in);
//			System.out.println("moi ban nhap vao 4 so bat kỳ");
//			int x = scanner.nextInt();
//			int y = scanner.nextInt();
//			int z = scanner.nextInt();
//			int t = scanner.nextInt();
//			int[] mang = {x,y,z,t};
//			int k = mang[1];
//			for(int i=0; i<mang.length;i++) {
//				if(k <mang[i]) {
//					k = mang[i];
//				}}
//			System.out.println(k);
//			int l = mang[1];
//			for(int i=0; i<mang.length;i++) {
//				if(mang[i]<l) {
//					l = mang[i];
//				}}
//			System.out.println(l);
//		}
//	}

//
//	public int[] xoa(int[] Input,int num) {
//		int i =0 ;
//		while(i< Input.length) {
//			if (Input[i] == num) {
//				input = Arrays.Utils.remove()
//			}
//			
//			
//		}
//	public static void songuyento() {
////	tim so nguyen to tu 1 den 100//
//		for(int i =0 ;i<100;i++)
//			if(i%i == 0) {
//				System.out.println(i);
//			}	
//	}
	public static boolean isPrimeNumber(int x) {
		for(int i=2;i<(x-1);i++) {
			if(x%i != 0) {
				return true;
			};
		}
				return false;
			}
			}

	
	
		


			
			
		
		
		
	

		

