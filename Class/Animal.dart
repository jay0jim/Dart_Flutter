// 抽象类
abstract class Animal {
  // 抽象方法，子类必须实现
  void eat();
  void run();

  void printInfo() {
    print('This is abstract class - Animal.');
  }
}

///-----------------
class Dog extends Animal {
  @override
  void eat() {
    print('Dog eat.');
  }

  @override
  void run() {
    print('Dog run.');
  }
}

class Cat implements Animal {
  @override
  void eat() {
    print('Cat eat.');
  }

  @override
  void printInfo() {
    print('This is implement: Cat.');
  }

  @override
  void run() {
    print('Cat run.');
  }
}
