package test;

import java.util.Random;
import java.util.Scanner;

public class baitap3 {

	public static void main(String[] args) {
//		float account1 = 5240.5f;
//		float account2 = 10970.055f;
//		int x = (int) account1;
//		int z = (int) account2;
//		System.out.printf("%d %d",x,z);
		Random random =new Random();
		int a = random.nextInt(99999);
//		String s = String.valueOf(a);
//		String s = a + " ";
//		switch(s.length())
//		{
//		case 1:
//			System.out.println("0000s");
//			break;
//		case 2:
//			System.out.println("000s");
//			break;
//		case 3:
//			System.out.println("00s");
//			break;
//		case 4:
//			System.out.println("0s");
//			break;
//		default:
//			System.out.println(s);
//		}
//		System.out.printf("%05d",a);
//		String s = String.valueOf(a);
//		String s = a + " ";
//		System.out.println(s);
//		System.out.println(s.substring(3,5));
		Scanner scanner = new Scanner(System.in);
		int x = scanner.nextInt();
		Scanner scanner1 = new Scanner(System.in);
		int y = scanner1.nextInt();
		float z = x/y;
		System.out.println(z);
		scanner.close();
		scanner1.close();
		
	}
}



