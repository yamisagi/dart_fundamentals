void main() {
  List<int> allInt = [1, 5, 6, 8, 44, 55, 666, 7123];
  count(allInt);
}

int count(List<int> args) {
  int summ = 0;
  for (int i in args) {
    summ += i;
    print(summ);
  }

  return summ;
}
