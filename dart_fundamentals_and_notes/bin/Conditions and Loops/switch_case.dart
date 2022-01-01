
///! SWITCH - CASE blokları.

void main() {
/*

!   Aynı IF-ELSE bloğu gibi işler fakat yapısı farklıdır.
*  Örneğin;
?  Ele alınması gereken yaş ile ilgili bir durumlar var ve 
?  bunun için  Switch-Case kullanmamız gerekiyor
*/

  const age = 17;
  switch (age) {
    case 18:
      print("Teenage");
      break;
    case 20:
      print("Adult");
      break;
    case 30:
      print("Grown-Up!");
      break;
    default:
      print("You should grow fast!");
      break;
  }

  // Örnekteki gibi kullanabiliriz.
  //! Ayrıca  yukarıdaki gibi int değerinden olmasına gerek yok
  String name = "Eren";
  switch (name) {
    case "Mahmut":
      print("Yanlış");
      break;
    case "Eren":
      print("Doğru");
      break;
  }
  //* Gibi .
}
