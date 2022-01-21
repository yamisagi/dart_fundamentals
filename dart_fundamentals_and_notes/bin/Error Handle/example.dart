/// Bizden yapılması istenen şey Error-Handling ile aşağıdaki çıktıyı elde edebilmek.

class EmailAddress {
  EmailAddress(this.email) {
    //! Bu kısımda iki türlü yaklaşıöda bulunabiliriz,
    //! Assert ve Exceptions'ları kullanarak çözüm sağlayabiliriz,
    //?---------------------------------------------------------
    //* assert(email.isEmpty, "Email should not be empty");
    //* assert(!email.contains("@"), "Email should have @ sign");
    //?---------------------------------------------------------
    // Ya da
    if (email.isEmpty) {
      throw FormatException("Email should not be empty");
    }
    if (!email.contains("@")) {
      throw FormatException("$email should have @ sign");
    }
  }
  final String email;

  @override
  String toString() => email;
  // toString methodunu override etmemizdeki amaç
  // Exceptionumuzu görürken Instance of EmailAddress yerine daha okunabilir bir çıktı almak.
}

void main() {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on Exception catch (e) {
    print("All fault of $e");
  }
  // Desired output:
  // me@example.com
  // FormatException: example.com doesn't contain the @ symbol
}
