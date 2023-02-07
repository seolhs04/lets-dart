// dart파일을 실행시키면 자동적으로 main 함수를 찾아 실행한다.
// 세미콜론 무조건 찍어야함

void main() {
  print('hello world');
}

// 변수 선언에는 두가지 방법이 존재함 var or Type
void value() {
  // var로 변수선언을 해도 자동 타입 추론이 됨
  // dart의 변수는 업데이트가 가능함
  var value1 = 'kim';
  value1 = '김';

  String value2 = 'seol';

  // dynamic으로 변수를 선언하면 모든 타입이 들어올수 있음.
  dynamic value3 = 'hello';
  value3 = 1;

  // ?기호로 null값 허용할수 있음
  String? value4 = 'world';
  value4 = null;

  // const와 같음. 재할당이 불가능함.
  final value5 = 'cannot change';
  final String value6 = 'cannot change 2';

  // late 키워드를 사용하면 마치 var와 같이 초기 변수를 할당하지 않아도 된다.
  // 변수할당을 해준 뒤에 사용이 가능하다.
  late String value7;
  value7 = 'hi';

  // flutter의 const는 compile time 상수이다.
  // 빌드가 되기전 프론트에서만 알고있는 정보를 정할 때  사용한다.
  // 예를들어 fetched data같은 경우에는 사용하지 않는다.
  const MAX_VALUE = 12;
}
