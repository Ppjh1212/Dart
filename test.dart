//데이터 타입과 널 안정성
void main(){
  // 실수형 <-> 정수형
  int i1 = 10;
  double d1 = 10.0;
  double d2 = i1.toDouble();
  int i2 = d1.toInt();
  
  // 문자열 <-> 정수형, x.runtimeType x타입확인
  int i3 = 10;
  String s1 = '10';
  String s2 = i3.toString();
  int i4 = int.parse(s1);

  // 초기화시 변경x, 선언시 변경o
  final int i5 = 1;
  
  // const는 const끼리
  String s3 = 'hello';
  const String s4 = 'world';
  final String s5 = 'helloworld';
  const String s6 = '$s4';
  final String s7 = '$s3, $s4, $s5';

  // 초깃값의 타입에 따라 타입 결정
  var a = 1;
  a = 10;

  // 제네릭 타입은 다른 타입의 값 변경x
  List list1 = [10, 'hello', true];
  list1[0] = 20;
  List<int> list2 = [10, 20 ,30];

  // (데이터 크기, 초깃값), 데이터 크기 초과 설정o, 
  var list3 = List<int>.filled(3, 0);
  var list4 = List<int>.filled(3, 0, growable: true);
  var list5 = List<int>.generate(3, (index) => index * 10, growable: true);
  
  // List와 유사, 중복 데이터x
  Set<int> set1 = {10, 20, 30};

  // <키 : 밸류>, 키를 이용한 데이터 접근
  Map<String, String> map1 = {'one':'hello', 'two':'world'};
  map1['one'] = 'not world';

  // 타입마다 널 허용가능
  int? nint;
  String? nstr; 
  var v1 = null;
  int? i6;
  var v2 = i6; //int?
  
  // as - 명시적 형변환
  int i7 = 10;
  int? i8 = 20;
  i7 = i8 as int; 

  // 초기화 미루기
  late int i9;

  // ! - null확인
  int i10 = 10;
  i10!;

  // null허용 변수 접근엔 ?사용
  String? s8 = "hello";
  int? i11 = 11;
  print(s8?.isEmpty); //문자열 비어있는지
  print(i11?.isEven); //짝수인지 홀수인지
  List<int>? list6 = [10, 20, 30];
  //print('list[0]: ${list6?[0]}');

  // ??= - null이면 대입x
  int? data1;
  data1 ??= 10;

  // ?? - null이면 대체
  String? s9 = 'hello';
  String? result = s9 ?? 'world';
}