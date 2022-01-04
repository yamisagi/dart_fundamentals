/// LISTELER Konusu
/// DOCS: https://api.dart.dev/stable/2.15.1/dart-core/List-class.html

void main() {
  var myList = [0, 1, 2.0, "Hello", true];
  myList[0] = 3; // Itemlere erişim ve item değerini değiştirme.
  print(myList);
  //! Yukarıdaki örnek listeye her türden eleman atadık. Bu da bize listelerin<dynamic> olabileceğini gösterir.

  //* Listelerde ve yenilenebilen türlerde elemanlara erişmek için for döngüleri kullanırız.
  //* İki şekilde de yapabiliriz bunu.
  //? Örneğin;
  for (var item in myList) {
    print(item);
  }

  //* Veya
  for (int i = 0; i < myList.length; i++) {
    print(myList[i]);
  }
  //! İki şekilde de aynı işlemi yapmış oluyoruz fakat 
  //! 17. satırda itemlere erişebilmek için index numaralarını kullanmış olduk ki bu daha daha uzun kod yazmamıza neden oldu.


}
