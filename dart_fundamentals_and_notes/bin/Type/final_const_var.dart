/// Difference between final - const keywords and usage of var.
void main() {
  /* FINAL sözcüğü daha sınırlayıcı şekilde değişken atamamızı,
     Böylece daha güvenli şekilde kod yazmamızı sağlar,
     '''
     /$ var a = "Hello";
     /$ a = "Merhaba";
     /$ print(a);
     >> Merhaba
     '''
    Şeklinde bir çıktı alırız fakat,

    '''
    /$ final a = "Hello";
    /$ a = "Merhaba";
    >>> final a can be set once.
    '''
    Şeklinde bir hata verir. Bunun nedeni ise bir değişkene final ile değer atarsak 
    Bu değer sadece bir kez atanır ve sonradan değiştirilemez.
    ** Kısaca final sözcüğü var sözcüğünün aksine ;
    ** -- Read-Only (Sadece bir kere atanabilir.)
    ** Bu da bize değiştirmememiz gereken değerleri unutup tekrardan atamamızı sağlayarak güvenli kod yazmamızı sağlar.
    ** Ve mümkün olduğunca ve kullanılabilecek yerlerde final kullanmamız tavsiye edilir.
    ****************************************************************************************************************
    CONST sözcüğü ise final sözcüğünden daha sınırlayıcıdır.
    const - Compile Time Constant olarak geçer, yani derleme zamanı sabiti.
    Bu da final sözcüğüne nispeten daha performanslı çalışmasını sağlar.
    ** Kısaca Const sözcüğü o değer daha kompile edilirken immutable edilir, yani değişmez şekilde sabitlenir.
    



  */
}
