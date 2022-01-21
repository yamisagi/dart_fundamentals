extension RangeTo on int {
  List<int> rangeTo(int other) {
    if (other < this) {
      return [];
    }
    var list = [this];
    for (var i = this + 1; i <= other; i++) {
      list.add(i);
    }
    return list;
  }
}

void main() {
  for (var i in 1.rangeTo(5)) {
    print(i);
  }
  // output: [1, 2, 3, 4, 5]
}

//! Bu yazdığımız extensionda belirtilen sayının kendinden, ona verilen parametreye kadar giden bir liste oluşturulması sağlanıyor.
//* Defansif bir check ile karşılaşılabilecek bir hata önleniyor ve kendinden küçük bir sayı parametre olarak verilirse boş bir liste dönderiliyori,
//* Daha sonra burda sayının kendisine referans olan "this" anahtar sözcüğü kullanılarak eklenilecek liste oluşturuşıyor,
//* for loop ile kontrol sağlanıp her iterate edilen değerin listeye eklenmesi sağlanıyor. 