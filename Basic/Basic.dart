main(List<String> args) {
  // var str = '''
  // hello
  // this is
  // multiple line
  // String
  // ''';
  // print(str);

  // String str2 = 'Hello';
  // print(str2);

  // List l1 = ['aaa', 'bbb', 'ccc'];
  // l1.add('333');
  // l1.add(112);
  // l1.add(true);
  // print(l1);

  // // 类型转换
  // var numStr = '12423';
  // var myNum = double.parse(numStr);
  // print(myNum);

  // // try catch
  // var priceStr = '';
  // double price;
  // try {
  //   price = double.parse(priceStr);
  //   print(price);
  // } catch (e) {
  //   print('原始值出错');
  // }

  // String aaa;
  // if (aaa == null) {
  //   print('aaa is null');
  // } else if (aaa.isEmpty) {
  //   print('aaa is empty');
  // } else {
  //   print(aaa);
  // }

  // List l1 = ['aaa', 'bbb'];
  // print(l1.join(' '));
  // print(l1.remove('ccc'));

  // var person = {
  //   'name': 'Tony',
  //   'sex': 'M',
  //   'height': '173',
  // };
  // print(person);
  // print(person.containsKey('a'));

  // var l2 = [1, 2, 3, 4];
  // List newList = [];
  // newList = l2.map((e) => e * 2).toList();
  // print(newList);
  // print(l2.where((element) => (element > 6)).isEmpty);
  // // print(l2.firstWhere((element) => (element > 6))); // 报错
  // print(l2.indexWhere((element) => (element > 6)));

  // var l2 = [1, 2, 3, 4];
  // modifyValue(l2);
  // print(l2);

  // print(printUserInfo('Tony'));
  // print(printUserInfo_Adv('Tony', sex: 'M', age: 30));

  // 闭包
  fn() {
    int a = 10;
    return () {
      a++;
      print(a);
    };
  }

  var b = fn();
  b();
  b();

  // print(a);
}

void modifyValue(List<int> l) {
  l[0] = -2;
  print(l);
}

// 可选参数
String printUserInfo(String name, [int age, String sex]) {
  return '姓名：$name ------ 年龄：$age --- 性别：$sex';
}

// 可选命名参数
String printUserInfo_Adv(String name, {int age, String sex}) {
  return '姓名：$name ------ 年龄：$age --- 性别：$sex';
}
