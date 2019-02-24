#include<iostream>
#include<vector>
#include<math.h>

using namespace std;
long long mul_inverse(long long a,long long b)
{
	long long b0=b;
	long long q,t;
	long long x1=1,x0=0;
	if (b==1) return 1;
	while(a>1)
	{
		q=a/b;
		t =b;
		b=a%b;
		a=t;
		t= x0;
		x0 = x1-q*x0;
		x1=t;		
	}
	if(x1<0)
	x1+=b0;
return x1;	
}
long long gcd(long long a,long long b)
{
	if(b==0)
		return a;
	
	return gcd(b,a%b);
}
int main()
{
	long p,q,m;
	long long phi,n;
	
	cout<<"Enter P and Q prime numbers: ";
	cin>>p>>q;
	
	phi = (p-1)*(q-1);
	n = p*q;
	cout<<endl<<"phi :"<<phi;
	cout<<endl<<"n :"<<n;
	long long e = 0;
	
	long i=2;
	while(i<phi)
	{
		if(gcd(phi,i)==1)
		{
			e=i;
			break;
		}
		i++;
	}
	
	long long d = mul_inverse(e,phi);
	//double d;
	/*i=-1;
	while(1)
	{
		
		d = (double)(1 - phi*(i) )/e;
		if(modf(d,&d)==0.00)
			break;
		i--;
	}
	*/
	cout<<endl<<"e :"<<e<<"  d :"<<d<<endl;
	
	cout<<endl<<"message : ";
	cin>>m;
	long long c=1;
	for(long long i=1;i<=e;i++)
		c=(c*m)% n;
	cout<<endl<<"cipher text : "<<c;
	
	cout<<endl<<"deciphering text.... ";
	
	long long text=1;
	for(long long i=1;i<=d;i++)
		text=(text*c)% n;
	cout<<endl<<"decipher text : "<<text;
	return 0;
}
