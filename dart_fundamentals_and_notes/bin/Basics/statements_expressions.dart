/// Statements and Expressions difference
void main() {
  // Statement bir değer tutmaz,
  // Expressions Runtime da bir değer tutabilir.
  // Expression'a -* 10+3 , age>18 ? "adult" : "child" *- gibi örnekler verilebilir.
  // Statement'e -* int a = b+3;  , print("I am Statement"); *-
  // gibi

  print("I am Statement"); // --  Bu bir Statementtir.
  //---------------------------------------------------
  int age = 19;
  String checkAge = age < 18 ? "Child" : "Adult"; // Bu bir Expression'dur.

}
