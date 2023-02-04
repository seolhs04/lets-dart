void main() {
  // 기본 자료형
  String name = 'seol';
  bool alive = true;
  int age = 28;
  double money = 1.2;

  List<int> numbers = [
    1,
    2,
    3,
    4,
  ];
  // append
  numbers.add(5);
  // first index, last index
  print(numbers.first);
  print(numbers.last);

  // collection if
  List<int> numbers1 = [
    1,
    2,
    3,
    4,
    if (true) 5,
  ];

  // string interpolation
  var greeting = 'my name is $name, myage ${age}';
  var oldNumber = [1, 2, 3];
  var newNumber = [
    12,
    13,
    14,
    for (var num in oldNumber) "_$num",
  ];

  // map
  Map<String, Object> user = {
    'name': 'seol',
    'age': 28,
    'isMale': true,
  };

  // set
  Set<int> numberSet = {1, 2, 3, 4};
}
