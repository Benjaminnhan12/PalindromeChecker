public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String clean = onlyLetters(fix(word));
  if(clean.equals(reverse(clean)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i>=0; i--){
      sNew += str.substring(i,i+1);
    }
    // System.out.println(sNew);
    return sNew;
}
public String fix(String str)
{
  String fix = "";
  for(int i = 0; i<str.length(); i++){
    if(!str.substring(i,i+1).equals(" "))
      fix += str.substring(i,i+1);
  }
  // System.out.println(fix);
  return fix.toLowerCase();
}

public String onlyLetters(String sString){
  String fix = "";
  for(int i=0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i)))
    fix += sString.substring(i,i+1);
  }
  return fix;
}

