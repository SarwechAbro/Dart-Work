void main() {
  List<String> names = ['sarwech', 'mehdi', 'ali', 'rehman'];
  var result = names.map((e) => e[0].toUpperCase() + e.substring(1) + ' Abro');
  print(result);
}
