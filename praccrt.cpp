#include<iostream>
#include<vector>
using namespace std;
int mul_inv(int a,int b)
{
	int b0=b,t,q=0;
		int x0=0,x1=1;
		//cout<<"\nIn the mul_inv"<<endl;
		//cout<<endl<<a<<" "<<b<<" "<<q<<" ";
		
		if(b==1) return 0;
		while(a>1)
		{						
			q=(a/b);
		//	cout<<endl<<a<<" "<<b<<" "<<q<<" "<<a%b;
			t=b;
						
			b=a%b;a=t;
			//if(b==0){ break;}
			t=x0;
			x0=x1-q*x0;
			x1=t;
		}
		if(x1<0) x1+=b0;
		cout<<"\nx1= "<<x1;
		return x1;

}

int answer(vector<int>a,vector<int>n)
{
	int M=1;long ans=0;
	for(int i=0;i<n.size();i++)
		M=M*n[i];
	for(int i=0;i<n.size();i++)
		{
			int p = M/n[i];
			ans = ans + a[i]*p*mul_inv(p,n[i]);
		}
	return ans%M;	
}

int main()
{
	vector<int> a;
	vector<int> n;
	int eq;
	int t1,t2;
	
	cout<<"Enter the number of equations : ";
	cin>>eq;
	
	for(int i=0;i<eq;i++)
	{
		cout<<"Enter pair <a , n> number : ";
		cin>>t1>>t2;
		a.push_back(t1);
		n.push_back(t2);
	}
	
	cout<<endl<<answer(a,n);
	return 0;
}
