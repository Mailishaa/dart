import 'encapsulation.dart';
void main(){
  var tyra = Person("Tyra", 45,"5782470");
  print(tyra.getName());
  print(tyra.getAge());

  //print(tyra.name()); // hides internal implementation
  //print(tyra.age());
  
  tyra.setName("Tyra Kamau");
  tyra.setAge(100);
  //tyra.name "Tyra Kamau";
  //tyra.age 56;

  print(tyra.getName());
  print(tyra.getAge());

  print(tyra.verifyAccountNo("123324"));// returns false because the value is invalid

  

}