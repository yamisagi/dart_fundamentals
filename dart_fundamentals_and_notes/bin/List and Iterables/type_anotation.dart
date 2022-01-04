/// Listelerde var,const,final ve liste türü belirtme.

void main() {
  // Liste tanımlamak için bir kaç farklı yol var,
  // Örneğin;
  List myList1 = ["I", 1, true];
  // Type Anotation
  List<int> myList2 = [
    1,
    2,
    5,
  ]; // Köşeli parantez içine yazdığımız tür harici bir türde item ekleyemeyiz.
  var myList3 = <String>[
    "I",
    "Am",
    "EREN"
  ]; // Bu kısımda da List yerine var kullanarak tür belirttik.

  // Diğer yandan Liste tanımlarken,
  // var
  // const
  // final
  // Sözcüklerini kullanabiliriz
  // Aradaki farklar şu şekilde,
  var varList = ["e", "r", "e", "n"];
  varList = ["no"];
  // Yani bir listeyi var ile tanımladığımızda tekrardan başka bir listeye atayabiliyoruz.
  //******************* */
  final finalList = ["e", "r", "e", "n"];
  // finalList = ["no"]; --- şeklinde atama yapamayız, sadece bir kez atama yapılır, ama,
  finalList[0] =
      "r"; // final ile atama yaptığımız listenin elemanlarını değiştirebiliyoruz.
  // Son olarak const ile aynı final gibi tekrardan atama yapamayız ve listenin elemanını bile değiştiremeyiz.
  const constList = ["e", "r", "e", "n"];
  // constList = ["no"];
  //! CONST ile oluşturduğumuz Listemizi belirli bir indexindeki itemi değiştirebiliyor gibi görünüyor fakat değitirilemezler.
  constList[0] = "no"; //!  Bu satır bize compile-time da hata vermez 
                      //!   Çünkü assign (atama işlemi) Run-Time da çalışır, bu yüzden hata vermez çalışana kadar.
  
}
