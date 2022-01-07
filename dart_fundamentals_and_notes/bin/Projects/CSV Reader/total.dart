import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print("Usage is 'dart total.dart <inputfile.csv>");
    exit(
        1); // exit(); Dart diline özgü bir method'tur. Eğer exit(code); code = 0 ise herhangi bir hata alınmazsa || code = non-zero bir hata alınırsa kullanılır.

  }
  final inputFile = args.first;
  print("Reading .. \n$inputFile");
  final file = File(inputFile).readAsLinesSync(encoding: utf8);

  final durationByTag = <String, double>{};

  file.removeAt(
      0); // ilgili CSV dosyasının ilk elemanını sildik çünkü verileri değil açıklamaları içeriyordu.

  for (var line in file) {
    final values = line.split(
        ","); // Tüm satırları virgül ile ayırıp bize bir liste dönderecek.

    final durationStr = values[3].replaceAll(
        '"', ''); // Dönderilen listedeki, 3. Indexteki eleman Duration time,
    final duration = double.parse(durationStr);

    final tags = values[5].replaceAll(
        '"', ''); // Dönderilen listedeki, 3. Indexteki eleman Tag'lerimiz.

    //! Tüm Çift tırnak işaretlerini boş string ile değiştirmemizin(silmemizin) amacı Boş Map'imize Update işlemi yaptığımızkt zaman type hatası vermesin.

    final previousTotal = durationByTag[
        tags]; // Her loop döndüğünde taglari tutacak bir değişken oluşturduk.
    // Fakat .csv dosyamızda null değerler olabilir bunu kontrol edecek bir logic gerek.
    if (previousTotal == null) {
      durationByTag[tags] = duration;
    } else {
      durationByTag[tags] = previousTotal + duration;
    }
  }
  for (var entry in durationByTag.entries) {
    final durationFix = entry.value.toStringAsFixed(1);
    final tag = entry.key == ""
        ? "Uncatagorized"
        : entry
            .key; //! Burda kullandığımız ternary operatörün sebebi ise for loopta keyleri gezerken
    //! "" gibi null bir değere denk gelirse bunu adlandırmak.
    print("$tag : $durationFix");
  }
}
