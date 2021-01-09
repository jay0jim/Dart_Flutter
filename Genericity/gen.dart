// 泛型

// 泛型方法
T getValue<T>(T value) {
  return value;
}

// 泛型类、泛型接口
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  T getByKey(String key) {
      
      throw UnimplementedError();
    }
  
    @override
    void setByKey(String key, T value) {
    
  }
  
}

main(List<String> args) {
  print(getValue(111));
}
