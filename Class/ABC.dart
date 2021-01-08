// mixins测试
class A {
  String aInfo = 'This is A';

  void printInfoA() {
    print('This is A.');
  }

  void printInfo() {
    print('This is A - Common.');
  }
}

class B {
  String bInfo = 'This is B';

  void printInfoB() {
    print('This is B.');
  }

  void printInfo() {
    print('This is B - Common.');
  }
}

class U {
  String name;
  int xxx;
  U(this.name, this.xxx);

  void printInfo() {
    print('This is U - Common.');
  }
}

class C extends U with A, B {
  C(String name, int xxx) : super(name, xxx);

  @override
  void printInfo() {
    print('This is C - override.');
  }
}
