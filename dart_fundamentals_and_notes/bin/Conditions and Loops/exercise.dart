/* for i from 1 to 15
    if i is divisible by 3 and 5
        print "fizz buzz"
    otherwise if i is divisible by 3
        print "fizz"
    otherwise if i is divisible by 5
        print "buzz"
    otherwise
        print i
  **********************
  Algoritmasını for döngüsü ile yapacağız,
  1 den 15 e kadar olan sayılar
  eğer 3 e ve 5 e bölünebiliyorsa "fizz buzz"
  eğer sadece 3 ile bölünebiliyorsa "fizz"
  eğer sadece 5 ile bölünebiliyorsa "buzz"
  aksi halde o sayıyı ekrana yazdıracağız
*/
void main() {
  for (int i = 1; i <= 15; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("fizz buzz");
    } else if (i % 3 == 0) {
      print("fizz");
    } else if (i % 5 == 0) {
      print("buzz");
    } else {
      print(i);
    }
  }
}
