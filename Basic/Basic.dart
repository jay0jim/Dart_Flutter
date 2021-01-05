main(List<String> args) {
  var str = '''
  hello
  this is 
  multiple line
  String
  ''';
  print(str);

  String str2 = 'Hello';
  print(str2);

  List l1 = ['aaa', 'bbb', 'ccc'];
  l1.add('333');
  l1.add(112);
  l1.add(true);
  print(l1);

  // 类型转换
  var numStr = '12423';
  var myNum = double.parse(numStr);
  print(myNum);

  // try catch
  var priceStr = '';
  double price;
  try {
    price = double.parse(priceStr);
    print(price);
  } catch (e) {
    print('原始值出错');
  }

  String aaa;
  if (aaa == null) {
    print('aaa is null');
  } else if (aaa.isEmpty) {
    print('aaa is empty');
  } else {
    print(aaa);
  }
}
