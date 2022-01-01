enum Math {
  plus,
  minus,
  multiply,
  divide,
}
void main() {
  const a = 4;
  const b = 2;
  const op = Math.multiply;
  switch (op) {
    case Math.plus:
      print(a + b);
      break;
    case Math.minus:
      print(a - b);
      break;
    case Math.multiply:
      print(a * b);
      break;
    case Math.divide:
      print(a / b);
      break;
  }
}
