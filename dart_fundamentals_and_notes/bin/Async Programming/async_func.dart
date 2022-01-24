///! Future Class ile çalışırken .then.whenComplete gibi kafa karıştırıcı methodlarla çalışmak yerine
///! Async await ve bununla entegre olarak try-catch bloklarıyla çalışmak daha kolaydır.
// future_class.dart dosyasındaki örnek ile aynı methodu kullanarak async-await yapısı ile durumu ele alacağız.

Future<String> fetchOrders() =>
    Future.delayed(Duration(seconds: 2), () => "Order Complete");

// Future Classı çağıracağımız method async yapısı ile oluşturulmuş olmalı.
Future<String> myAsyncMethod() async {
  final order = await fetchOrders();
  try {
    print("Order is on call");
    print(order);
  } catch (e) {
    print(e);
  } finally {
    print("Job is done");
  }
  return order;
}
//! Yukarıda oluşturduğumuz method ile,
//* async bir body ekleyerek .then.whenComplete gibi methodları kullanmadan "await instance" yapısını kullanarak oluşturduk.
//* Ardından olası hataları engellemek için .catchError yerine ((try-catch-finally)) bloklarını kullanıp daha anlaşılır kod yazdık. 

void main() {
  myAsyncMethod();
}
