void main() {
  greeting('sarwech');
  var result = sum(5, 9);
  print(result);
}

sum(int a, int b) {
  return a + b;
}

greeting(String name) {
  print('hello $name');
}
