class Person {
  // 私有变量
  String _name;
  int _age;

  // 静态方法，相当于类方法
  static void personDescpribtion() {
    print('这是一个静态方法（类方法）');
  }

  // 默认构造函数，初始化列表（在调用构造函数前就赋值）
  Person()
      : _name = '',
        _age = 0 {}

  // 命名构造函数
  Person.withInfo(String name, int age) {
    this._name = name;
    this._age = age;
  }

  void getInfo() {
    print("${this._name} --- ${this._age}");
  }

  // setter and getter
  set personName(String name) {
    this._name = name;
  }

  set personAge(int age) {
    this._age = age;
  }

  get name {
    return this.name;
  }

  get age {
    return this.age;
  }
}

/////////////////////////////////////////////
/// 继承
class AsiaPerson extends Person {
  String work;

  @override
  void getInfo() {
    print('子类getInfo');
  }
}
