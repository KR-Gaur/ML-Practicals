import java.io.*;
import java.math.*;
import java.util.*;

public class crt {
	static int m_inverse(int a,int m){
		int i;
	//	a = a % m;
		for(i=0;i<m;i++)
		
			if((a*i)%m==1)
				return i;	 
		
	return 1;
	}
	
	static int answer(int[] a,int[] m)
	{
		int k=a.length;
		int product=1;
		for(int i=0;i<k;i++)
		{
			product=product*m[i];  //  calculate M
		}
		int result=0;
		for(int i=0;i<k;i++){
			int pp=product/m[i];  // calculate m
			result=result+a[i]*m_inverse(pp,m[i])*pp;	
		}
		return result%product;
	}
	public static void main(String[] args)
	{
		Scanner input=new Scanner(System.in);
		System.out.println("Enter Size:");
		int size=input.nextInt();
		int[] a =new int[size];
		int[] m =new int[size];
		for(int i=0;i<size;i++)
		{
			System.out.println("Enter a"+(i+1));
			a[i]=input.nextInt();
		}
		for(int i=0;i<size;i++)
		{
			System.out.println("Enter m"+(i+1));
			m[i]=input.nextInt();
		}
		System.out.println(answer(a,m));
	}

}
