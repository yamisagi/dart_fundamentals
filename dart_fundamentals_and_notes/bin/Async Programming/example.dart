Future<void> counter(int number) async {
  for (int i = number; i >= 0; i--) {
    await Future.delayed(
      Duration(seconds: 1),
      () => print(i),
    );
  }
  print("Done");
}

void main() async {
  await counter(5);
}
