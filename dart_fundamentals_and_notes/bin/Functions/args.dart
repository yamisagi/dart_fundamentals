void main() {
  describe("Eren",
      25); // Çağırdığımızda fonsiyonumuzu içesine gönderdiğimiz argümanları kullanarak daha esnek işlemler yapabilmemizi sağlar.
  // Bunun içerisine Type uygun olduğu sürece Değişkenler vb. objeleri de passlayabiliriz.
  //* Örneğin;
  const name = "Ez";
  const age = 25;
  describe(name, age); // Gibi .
}

//! Parametreler
// Parametreler bir fonsiyonun içerisinde yapılacak işleri kontrol edebilmemize, ve kodumuzun tekrarlanmadan düzenlenebilmesine yardımcı olurlar,
void describe(String name, int age) =>
    print("Hello it's $name and i am $age yo.");

//! Fonsiyonun Türü;
// Bir fonsiyonu tanımlarken fonksiyonun türünü adından veririz.
// Eğer bir fonsiyon geriye bir değer dönderiyorsa , dönderilen objenin türünü yazabiliriz.
//* Örneğin;
int count(List<int> args) {
  int summ = 0;
  for (int i in args) {
    summ = i + summ;
  }
  return summ; // Dönderilen obje //! int // türünden.
}
