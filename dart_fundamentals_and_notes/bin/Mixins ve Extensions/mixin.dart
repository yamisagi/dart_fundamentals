/// Mixin'ler 
//! mixin keywordu ile oluşturulur ve bir class mixinden türetilmek isterse with keywordu kullanır
//! Ayrıca mixinler aksiyon içeren property ve method barındırmak için kullanılır bu yüzden adları jargonda fiil olan sözcüklerden seçilir.
//! Class'lar gibi constructorları yoktur ve instance da oluşturulamaz

mixin Breathing {
  void breathe() => print('breathing');
}
mixin Swimming {
  void swim() => print('swimming');
}

class Animal with Breathing {}

class Plant with Breathing {}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main() {
  // final breathing = Breathing();
  // final swimming = Swimming();
}