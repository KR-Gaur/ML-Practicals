import java.util.*;
 
class rsa_java_no
{
    public static void main(String args[])
    {
            Scanner sc=new Scanner(System.in);

            int p,q,n,z,d=0,e,i;

            System.out.println("Enter the number to be encrypted and decrypted");
            int msg=sc.nextInt();

           int  c,msgback;
            System.out.println("Enter 1st prime number p");
            p=sc.nextInt();
            
            System.out.println("Enter 2nd prime number q");
            q=sc.nextInt();
            sc.close();
            n=p*q;
            z=(p-1)*(q-1);
            
            System.out.println("the value of z = "+z); 
            
            for(e=2;e<z;e++)
            {
                if(gcd(e,z)==1)            // e is for public key exponent
                { 
                    break;
                }
            }

            System.out.println("the value of e = "+e); 
            
            for(i=0;i<=9;i++)
            {
                int x=1+(i*z);
                if(x%e==0)      //d is for private key exponent
                {
                    d=x/e;
                    break;
                }
            }

            System.out.println("the value of d = "+d); 
            //c=(Math.pow(msg,e))%n;
            c = powmod(msg,e,n);
            System.out.println("Encrypted message is : -");
            System.out.println(c);

            //msgback=(Math.pow(c,d))%n;
            msgback = powmod(c, d, n);
            System.out.println("Derypted message is : -");
            System.out.println(msgback);
    
    }
    static int  powmod(int a,int  e,int  n)
    {    int accum = 1;
        int x = e ;   // Scan the bits of the exponents
        int apow = a; // Successive powers, a^(2^n)
        while (x != 0)
{             
    if (x %2 == 1)
                  
    accum = (accum * apow) % n;
             
    x =x/2;
             
    apow  = (apow*apow)%n;
}
        return accum;
    } 

   
    static int gcd(int e, int z)
    {
        if(e==0)
            return z; 
        else
            return gcd(z%e,e);
    }
}
