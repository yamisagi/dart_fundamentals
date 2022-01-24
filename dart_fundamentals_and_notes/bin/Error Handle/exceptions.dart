///! Dart Dilinde aldığımız istisnai durumlara denir
///! Bu durumları ele almak için "throw,try-catch-finally,rethrow" gibi özel keywordlere ihtiyaç duyarız.

// ignore_for_file: deprecated_member_use

class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException(); // Bu kısımda eger değişkenimiz 0 a eşitse Exception sınıfından bir durum fırlatmasını söylüyoruz.
    }
  }
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void testFraction() {
  try { // Bu blok ilk önce denenir,
    final f = Fraction(3, 0);
    print(f.value);
  } on IntegerDivisionByZeroException catch (e) { // Eğer çalışmaz ise bu bloğa geçer ve IntegerDivisionByZeroException adlı istisnai durum ortaya çıkarsa bu blok çalışır,
    print(e);
    rethrow; // Tüm try kodu çalışıp bitince bu keyword hata fırlatır.
  } on Exception catch (e) { // Eğer yukarıdaki durum gerçekleşmezse bu blok çalışır.
    print(e);
  } finally { // Ve her durumda yukarıdaki bloklar çalıssa da çalışmasa da burası kesinlikle çalışır.
    print('testFraction done');
  }
  //! Belirtmek gerekirse özellikle istisnanın neyden kaynaklandığını düşündüğümüz bie exception yoksa
  //!catch(e){} şeklinde de kullanılır , illa on Exception gibi kullanmamıza gerek yok. 
}

void main() {
  testFraction();
  print('done');
}
