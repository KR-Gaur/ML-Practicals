import java.security.*;
import javax.xml.bind.DatatypeConverter;

public class sha1{

public static String hash(byte[] input,String algo)
{
	String hv="";
	try{
	MessageDigest md = MessageDigest.getInstance(algo);
	md.update(input);
	byte[] digest = md.digest();
	hv=DatatypeConverter.printHexBinary(digest).toLowerCase();
	}
	catch (Exception e){}
	return hv;
}

public static void main(String[]a){
String s = "abc";
	System.out.println("SHA-1 Hash of " +s+" =");
	System.out.println(hash(s.getBytes(),"SHA1"));
}

}




































/*import java.security.*;
import javax.xml.bind.DatatypeConverter;

public class sha1{

public static String hash(byte[] inputbytes,String algo)
{
	String hv="";
	try{
	MessageDigest md = MessageDigest.getInstance(algo);
	md.update(inputbytes);
	byte[] digestedbytes = md.digest();
	hv=DatatypeConverter.printHexBinary(digestedbytes).toLowerCase();
	}
	catch(Exception e){
	}
	return hv;
}

public static void main(String[]a){
	
	String s = "abc";
	System.out.println("SHA-1 Hash of " +s+" =");
	System.out.println(hash(s.getBytes(),"SHA1"));
	
	s = "123456789";
	System.out.println("SHA-1 Hash of " +s+" =");
	System.out.println(hash(s.getBytes(),"SHA1"));	
	
	
}
}*/
