// Mini Projede - Bir order listesi ve bir de orderdaki isimlerin fiyatlarını tutan bir map'in
// fiyatını hesaplayan fonksiyon tanımladık.

void main() {
  const pizzaPrices = {
    'sosisli': 30.5,
    'vegan': 27.5,
    'klasik': 29.9,
  }; // Fiyat.
  
  const order = ['sosisli', 'klasik']; // Verilen sipariş.

  orderCal(order, pizzaPrices);
}

void orderCal(List order, Map prices) {
  // Burda Parametre olarak bir Liste ve bir de Map istedik.
  var total = 0.0; // Bir counter tanımladık
  for (var item in order) {
    // For loop ile parametre olarak istenen Listeyi dolaş,
    final price = prices[
        item]; // Map'in içindeki o Itemin tutarını price değişkenine atanıyor her loop'ta
    if (price != null) {
      // Null olmadığı sürece total sayacını price ile topla,
      total += price;
    }
  }
  print('Toplam Giren: ${total}TL canım benim.');
   
}
