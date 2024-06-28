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

  void soem({String? data1}){
    print('data1 : $data1');

    // 명명된 매개변수 선언 규칙 1. {} 2. 마지막 & 1번만 3. 명명된 매개변수 기본값 설정가능
    void some4(int data1, {String? data2, bool? data3}){}
    // 명명된 매개변수 호출 규칙 1. 명명된 매개변수에 데이터 전달안 할 수 있음 2. 데이터 전달시 이름 명시 3. 데이터 전달시 선언된 순서 상관x
    some4(data3 : true, 10, data2 : 'hi');
    
  }



}