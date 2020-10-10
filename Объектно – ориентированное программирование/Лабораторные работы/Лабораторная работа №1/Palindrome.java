public  class Palindrome {
  public static void main(String[] args) {
    for(int i = 0; i < args.length; i++){
      System.out.println("Is a word '" + args[i] + "' palindrome? - " + isPalindrome(args[i]));
    }
  }

// return reverse s
  public static String reverseString(String s) {
    String result = "";

    for(int i = s.length() - 1; i >= 0; i--){
      result += s.charAt(i);
    }
    return result;
  }

// return true if s is palindrome
  public static boolean isPalindrome(String s) {
    String reverseS = reverseString(s);
    return s.equals(reverseS);
  }
}
