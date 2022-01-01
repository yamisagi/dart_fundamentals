  /// DOCS : https://dart.dev/guides/language/language-tour#logical-operators
void main() {

  // Karşılaştırma Operatörler //
  // Bu Operatörler geriye bool türünden değer dönderirler.

  print(5 < 4); //Küçüktür.
  print(5 > 4); // Büyüktür.
  print(5 <= 4); // Küçük Eşittir.
  print(5 >= 4); // Büyük Eşittir.
  print(5 ==
      4); // * Eşittir. (** Atama operatörüne nazaran bu soru yönelticidir. "Eşit midir?")
  print(5 !=
      4); // * Eşit Değildir. (** Atama operatörüne nazaran bu soru yönelticidir. "Eşit değil midir?")

  // Mantıksal Operatörler //
  // Mantıksal operatörlerde yolu belirlememizde bir ya da daha fazla etken varsa programın karar vermesinde yardımcı olur.

  /* 
  && - Ve (AND)
  || - Ya da (OR)
  !  - Değil (NOT)
   */
  print("*******************************");
  print(5 < 2 &&
      4 < 3); // Returns - false *-- ifadelerin hepsi true ise true aksi halde false dönderir.
  print(5 > 6 ||
      4 > 2); // Returns - true  *-- ifadelerden en az biri true ise true ,hepsi false ise false dönderir.
  print(!(5 <
      2)); // Returns - true  *-- ifadenin tersini verir, yani dönderilen ifade true ise false ya da tam tersi.
  
}
