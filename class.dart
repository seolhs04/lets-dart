class Player {
  // 이럴때 late를 사용
  late String name;
  late int age;

  // 생성자 (constructor)
  Player(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void sayHello() {
    print('my name is $name');
  }
}

// 생성자에 args가 변수로 그대로 들어가는 경우 생략해서 적기 가능
// 함수에서 봤던 dart언어의 특징으로 named argument를 작성하고 싶은 경우 중괄호로 감싸고 사용하면된다.
class Player1 {
  String name;
  int age;

  Player1({
    // required 대신에 default값을 지정해줘도 되지만, 보통 이게 나은거 같음.
    required this.name,
    required this.age,
  }) {}
}

class Player2 {
  String name, team;
  int age, xp;

  Player2(
      {required this.name,
      required this.team,
      required this.age,
      required this.xp});

  // named constructor
  // 미리 지정해놓은 방식에 따라 인스턴스를 생성할 수 있음.
  // :과 ,로 구분해줌
  Player2.createBlueTeam({
    required this.name,
    required this.age,
  })  : this.xp = 0,
        this.team = 'blue';

  // named argument를 사용안했을 때
  Player2.createRedTeam(this.name, this.age)
      : this.xp = 0,
        this.team = 'red';
}

// 추상화 클래스
abstract class animal {
  void walk() {}
}

class Cat extends animal {
  @override
  void walk() {
    print('cat walk');
  }
}

class Dog extends animal {
  @override
  void walk() {
    print('dog walk');
  }
}

// class 상속
class Human {
  final String name;

  Human({required this.name}) {}

  void sayHello() {
    print('hi my name is $name');
  }
}

enum Team { blue, red }

class Player5 extends Human {
  final Team team;

  // 부모 class의 constructor에 전달하기 위해 super()에 값을 전달함
  Player5({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and i play for $team');
  }
}

// mixin class
class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void run() {
    print('runn');
  }
}

// mixin 클래스는 with과 같이 쓰며 상속과는 다르다.
// 생성자가 없는 클래스의 property만 가져오고 싶을 때 사용
class StrongAndQuickRunner with Strong, QuickRunner {}

void main() {
  var player = Player('seol', 28);

  var player1 = Player1(
    name: 'kim',
    age: 29,
  );

  var bluePlayer = Player2.createBlueTeam(name: 'seol', age: 27);
  var redPlayer = Player2.createRedTeam('kim', 87);

  // 이미 생성한 인스턴스의 속성값을 변경할 때 사용할 수 있는 문법
  // ..age는 player.age와 똑같음
  // 생성자 키워드 마지막에 ; 빼고 변경하는 마지막 속성값뒤에만 ;을 붙임
  var player2 = Player2(name: 'seol', team: 'red', age: 28, xp: 1500)
    ..age = 21
    ..name = 'kim';

  var player5 = Player5(team: Team.blue, name: 'seol');
  player5.sayHello();
}
