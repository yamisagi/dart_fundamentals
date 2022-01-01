void main() {
  // OPERATORS (https://dart.dev/guides/language/language-tour#operators)

  /* 
    (+ - / *)    ---> Basit Matematik Operatorleri
    (%) ---> Mod Alma
    (~/) <<Truncate>> ---> Kalansız bölme
    (++) ---> expression +1
    (--) >>>>> expression -1
  
  */

  // TYPE CONV. EXAMPLE

  double tempFarenheit = 90;
  double celcius = (tempFarenheit - 32) / 1.8;
  print("Current F is $tempFarenheit and current C is $celcius");

  // .toStringAsFixed(*) methodu ile point numberleri fixleyebiliriz.

  print(
      "Current F is $tempFarenheit and current C is ${celcius.toStringAsFixed(1)}");

  // INCREMENT AND DECREMENT
  int number = 1;
  number = number + 1;
  number += 1;
  number++;
  // Yukarıdaki ifadelerin hepsi aynı işlemi yapıyor.
  print(number); // 4 Çıktısı verir.

  // Fakat dikkat edilmesi gereken iki kullanım var,
  number++;
  ++number;
  // İkisi de aynı işlemi yapıyor fakat işlem önceliğinde bir değişme yaparak,
  // EXAMPLE;
  int x = 1;
  int y = x++;
  print("x : $x ,, y : $y"); // Çıktıda x: 2 ye ,, y: 1 e eşit oldu ,
  // Nedeni y değişkenini önce x in değerine atıyor
  // Daha sonra x değişkenini 1 artırıyor.
  // Diğer kullanımında ise
  int z = 1;
  int w = ++z;
  print("z : $z ,, w : $w"); // Çıktısında görüldüğü gibi  z: 2 ,, z: 2 -ye eşit oldu,
                             // Bunun nedeni ise z değerini önce 1 artırıp sonra w değişkenine atadı. 
}
