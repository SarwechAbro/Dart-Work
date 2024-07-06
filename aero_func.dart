void main() {
  List<int> numbers = [30, 50, 90, 10, 52, 63, 69, 80];
  var result = numbers.where((element) => element < 50).toList();

  print(result);
}
