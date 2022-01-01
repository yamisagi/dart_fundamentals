void main() {
  // Expression true ya da false döndermesine göre atama yapmaya yarar.
  // Kullanımı >>> exp1 ? exp2 : exp3; ---> exp1 true ise exp2 dönderir , false ise exp3 dönderir.  
  // Zorunluluklar>>> exp1 bool türünden olmalı >>>  exp2 ve exp3 aynı türden değerler olmalı 
  // Örneğin;
  int age = 18;
  String check = age >= 18 ? "Adult" : "Child";
  print(check);
  // Örnekteki gibi age 18'e eşit olduğu için true dönderdi ve "Adult" çıktısı verdi
  // false dönderseydi "Child" çıktısı alacaktık.



}
