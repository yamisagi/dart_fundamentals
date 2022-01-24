///! Programlama dilinde future class'ın kullanımı

// Örnek ile açıklayacak olursa bir cafede order alıp çıktı vermeni sağlayacak bir script yazmak gerekirse

Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 3),
      () => "Order is ready",
    );
// Bu şekilde kullanılabilir.
//* Future sınıfından türetilmiş delayed methodunu kullarak program çalışırken delay ekledik,
//* Duration cinsinden 3 saniye sonra bir anonim fonksiyonla geriye bir mesaj bıraktık.
void main() {
  print("Program started");
  // Programın başladığını anlamak için bir mesaj.
  fetchUserOrder()
      .then((order) => print(
          order)) //! .then ile Future Classında işlemimiz bitince çalışmasını istediğimiz kısmı oluşturduk. 
          //? Burda parametre olarak verdiğimiz order değişkeni Future methodumuzun geriye döndermesini istediğimiz method. 
      .catchError((onError) => print("$onError occured")) //! İşlem sırasında bir hata yakalanırsa yakalıyıp feedback vermesini sağlar
      .whenComplete(() => "Job is done"); //! Ve tüm işlemler bitince çalışan blok.
}
