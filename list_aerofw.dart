void main() {
  List<dynamic> names = [
    [1, 'sarwech'],
    [2, 'abro']
  ];
  var result = names.firstWhere((name) => name);
  print(result);
}
