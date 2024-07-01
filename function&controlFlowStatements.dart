//함수와 제어문
void main(){
  // 매개변수 타입에 맞는 데이터호출
  void some1(int? a){}
  some1(1);

  // 타입, 이름 생략 가능 -> dynamic타입
  void some2(b){
    b = 20;
  }

  // 함수 선언 시 null반환
  some3(){} 

  // 화살표 함수 
  void printUser() => print('hello');

  //명명된 매개변수
  void some4({String? data1}){
    print('data1 : $data1');

    // 명명된 매개변수 선언 규칙 1. {} 2. 마지막 & 1번만 3. 명명된 매개변수 기본값 설정가능
    void some5(int data1, {String? data2, bool? data3}){}
    // 명명된 매개변수 호출 규칙 1. 명명된 매개변수에 데이터 전달안 할 수 있음 2. 데이터 전달시 이름 명시 3. 선언된 순서 상관x
    some5(data3 : true, 10, data2 : 'hi');
    
  }

  // 명명된 필수 매개변수
  someFun({required int arg1}){
    print('result : $arg1');
  }

  // 옵셔널 위치 매개변수 선언 규칙 1. [] 2. 마지막에 사용 3. 기본인자 설정가능
  void some6(int arg1, [String? arg2, bool arg3 = false]){}
  // 옵셔널 위치 매개변수 호출 규칙 1. 매개변수 이름 생략 2. 선언된 순서에 맞춤
  some6(10, 'bush');

  // 함수를 함수 타입 객체에 대입가능
  int plus(int num){
    return num + 10;
  }
  int multiply(int no){
    return no * 10;
  }
  Function testFun(Function argFun){
    print('argFun : ${argFun(20)}');
    return multiply;
  }
  var result = testFun(plus);
  print('reslut : ${result(20)}');

  // 함수 타입 제한
  some(int f(int a)){
    f(30);
  }
  some((int a){
    return a + 10;
  });

  // 익명 함수(람다 함수)
  Function fun1 = (arg){
    return 0;
  };
  
  // 나누기 결과를 정수로 반환
  int a = 8;
  print('a ~/ 5 : ${a ~/ 5}');

  // is - true면 자동 형변환, as - 명시적 형변환 #118line
  Object obj1 = Printer();
  if(obj1 is Printer){
    obj1.some7();
  }

  Object obj2 = Printer();
  (obj2 as Printer).some7();

  // nullable객체일 땐 ?..사용 #124line
  var user = User()
    ..name = 'kkang'
    ..age = 10
    ..some();

  // for문 in연산자
  var list = [10, 20, 30];
  for(var x in list){
  print(x);
  }

  // try~on~finally
  some7(){
    throw FormatException('my exception');
  }
  try{
    print('step1');
    some7();
    print('step2');
  }on FormatException catch(e){ // 예외 객체 가져오기
    print('step3 $e');
  }on Exception{
    print('step4');
  }finally{
    print('step5');
  }
  
}

// getter / setter
String _name = 'Hello';
String get name{
    return _name.toUpperCase();
}
set name(value){
  _name = value;
}

class Printer{
  void some7(){
    print('엣힝');
  }
}

// cascade
class User{
  String? name;
  int? age;

  some(){
    print('name: $name, age: $age');
  }
}
