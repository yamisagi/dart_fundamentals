void main() {
  const String text = 'I like pizza';
  const String topping = 'with tomatoes';
  var favourite = '$text $topping';
  final String newText = favourite.replaceAll('pizza', 'pasta');
  favourite = 'Now I like curry';
  print(newText);


} 
 /* Çözülmeden önce **

 void main() {
  String text = 'I like pizza';
  String topping = 'with tomatoes';
  String favourite = '$text $topping';
  String newText = favourite.replaceAll('pizza', 'pasta');
  favourite = 'Now I like curry';
  print(newText);
}
  */