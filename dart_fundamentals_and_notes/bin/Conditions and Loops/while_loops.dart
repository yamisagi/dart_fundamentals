/// While ve For döngüleri.

void main() {
  // WHILE döngüsü bir koşul true verdiği sürece belirli kod bloğunu çalıştırmaya yarar.
  // Örneğin;
  int i = 0;
  while (i < 10) {
    print("*" * i);
    i++;
  }
  // Bu küçük blokta içerisindeki print() state 9 kere yazdırdık 10<10 false dönderdiği için döngümüz durdu.
  //******************************************************************************************************
  //
  /*FOR döngüsünde ise
  // for (initialization;condition;increment or decrement){
              ^              ^          ^
              |              |          |
  (  Bir değişken atama ) ( Koşul ) (  Değişkeni Artırma veya Azaltma  )
  (    var i = 0        ) ( i<10  ) (     i++            )
  
    BİRŞEYLER YAP,ÇALIŞTIR(ÇALIŞMASI İSTENİLEN KOD BLOĞU)...


   }
   Şeklinde yapılır */
  for (int i = 0; i <= 10; i++) {
    print("*" * i);
    // Yukarıda WHILE döngüsü ile yaptığımız işlemin aynısını FOR döngüsü ile yapmış olduk.
  }
}
