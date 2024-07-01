// 클래스와 생성자
main(){
  Data(1, 2);
  // Data.printData();

}

// 멤버 초기화 생성자 단순화
class User{
  late int age;
  late String name;
  User(this.name, this.age);
  // User(String name, int age) : this.name = name, this.age = age{} // 초기화 목록
}

// 리스트 데이터 초기화
class MyClass{
  late int data1;
  late int data2;

  MyClass(List<int> args) : this.data1 = (args[0]), this.data2 = (args[1]){}
}

// 클래스 멤버 함수의 반환값 초기화ioikmmmmikmmmmmmmmmmmmmmmmmmmmmmmmmm]
class Data{
  late int data1;
  late int data2;

  Data(int arg1, int arg2) : this.data1 = calFun(arg1), this.data2 = calFun(arg2){}

  static int calFun(int arg){
    return arg * 10;
  }
  printData(){
    print('$data1, $data2');

  }
}