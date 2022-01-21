///! Extension yani eklentiler kodumuza daha fazla işlev katmak daha anlaşılır olması için oluşturduğumuz küçük kod bloklarıdır
extension NumberParsing on String {
  int? toIntOrNull() => int.tryParse(this);
}
//! Görüldüğü gibi extension ExtensionIsmi on Type{} şeklinde oluşturulur.
//! Fakat Extension ismi verilmeyedebilir, eğer extensionu başka bir dosyada tutacaksak ve başka yerlerden çağımamız gerekecekse isim verilmesi şart.
void main(){
  
}