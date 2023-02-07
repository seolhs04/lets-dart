// normal function
void sayHello(String name) {
  print('Hello $name');
}

// fat arrow syntax
void sayHello2(String name) => 'Hi $name';

// named parameters
// args를 순서에 맞지 않아도 사용할 수 있게 해줌
// 기본 파라미터들은 모든 값이 required이지만 named 파라미터는 required를 지정하거나 default를 정의해야함.
String introduce({
  required String name,
  required int age,
  required String country,
}) {
  return 'my name is $name, my age is $age, my country is $country';
}

// optional parameter
// 대괄호 씌우고 default value 설정해야함.
String introduce2(String name, int age, [String? country = '']) {
  return 'my name is $name, my age is $age, my country is $country';
}

// 삼항연산자 사용가능
String changeUpper(String? name) => name != null ? name.toUpperCase() : 'hello';
// ?? operator도 사용가능
String changeUpper2(String? name) => name?.toUpperCase() ?? 'hello';
// ??= operator
// 값이 없다면 값 할당
void example1() {
  String? value1;
  value1 ??= 'seol';
}

// typedef
// 미리 타입을 지정하는 방법 type alias
// like interface or Type in TypeScript
typedef ListOfInt = List<int>;
ListOfInt reverseListOfNumbers(ListOfInt list) {
  var reversed = list.reversed;
  return reversed.toList();
}

// dart의 함수는 1급 객체 시민으로 콜백 사용가능
void callbackTest(Function(String a) func) {
  func('hello');
}

void main() {
  // named parameters 사용법
  print(introduce(name: 'seol', age: 28, country: 'seoul'));
  print(introduce2('seol', 28));
  changeUpper(null);
}
