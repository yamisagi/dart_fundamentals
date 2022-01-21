///! Assert deyimi yararlı bir hata ayıklama aracıdır ve boole koşullarını test etmek için kullanılır. Bir boolean koşulu yanlışsa, assert ifadesi normal yürütmeyi bozar.

class PositiveInt {
  const PositiveInt(this.value)
      : assert(value >= 0, 'Value cannot be negative'); // Burda belirttiğimiz value değeri 0 dan büyük olmazsa error message olarak verdiğimiz string değeri çağırılır.
  final int value;
}

void signIn(String email, String password) {
  assert(email.isNotEmpty); //! assert keywordu sadece constructorlarda değil methodlarda da kullanılır.
  assert(password.isNotEmpty);
}

void main() {
  // Error
  const list = [1, 2, 3];
  // print(list[4]);
  signIn('', '');
  // const invalidAge = PositiveInt(-1); //! Bize -1 değeri verdiğimiz için bizim ayarladığımız hata mesajını verdi.
  // print(invalidAge);
}