// instance attributes and instance methods
import 'dart:async';

void main(){
  var person = Person();// implicit constructor with parameters, when calling there is no need to specify
  person.name ="Peter";
  person.age =48;
  person.introduce();
   var emma = Person();
   emma.name = "Emma";
   emma.age = 22;
   emma.introduce();

   //default contsuctor
   var audi= Car("AUdi", "Q5", 2015,false);
   var toyota = Car("Audi", "Q5", 2015,false);
   audi.start();
   toyota.start();

   //electric
  var tesla = Car.electric("Tesla", "m2",2024);
  var Subaru = Car.petrol("Subaru", "Impreza", 2012);
  //var bmw = Car. fromJson({"make": "BMW", "model": "MK3","year":2025, "isElectric":false});

  var emp1 = Employee("Janet",85000);
  var emp2 = Employee ("Kevin", 80000);

  print(emp1.name);// to invoke employee one attributes
  emp1.showEmployeeInfo();

   print(emp2.name);
  emp2.showEmployeeInfo();

  print(Employee.companyName);
  Employee.showTotalEmployees();

  var stud=Student("Grace",78, 8);
  stud.averageGrade();
  var stud2=Student.gender("John", 89, 8);
  print(stud2);
  
}
class Person{
   // fields/ attributes/ properties to hold data about the object
    String name= "";
    int age = 0;
    
  // methods- these are functions that define its behaviour
    introduce(){
      print("Hi my name is $name.I am $age years old") ; 
  }
}
class Car{
  String make;
  String model;
  int  year;
  bool isElectric;
//constructors - functions that help create an object out of the class

  Car(this.make,this. model, this.year, this.isElectric );// car has an explicit constructor where you have to specify the make, model and name
  Car.electric(this.make,this.model,this.year): isElectric = true;// specifies the value for the electric attributr
  Car.petrol(this.make, this.model,this.year): isElectric = false;
 /*  Car.fromJson(Map <String, dynamic> json):
  make= json["make"],
  model= json["model"],
  year= json["year"],
  isElectric = json ["isElectric"] */

  void start (){
    print("vroom");
   }
}
 class Employee{
  String name;
  double salary;
  //static fields- common to all objects
  static String companyName="KPLC";
  static int totalEmployees = 0;
  Employee(this.name,this.salary){
    totalEmployees++;
  }
// instance methods- unique to every object
  void showEmployeeInfo(){
    print("$name works at $companyName, earning $salary KES");
  }
  //static- method - shared by all objects
  static void showTotalEmployees(){
    print("Total Employees: $totalEmployees");
  }

 }
 class Student {
  String name;
  int grade;
  int courses;
  

  Student(this.name, this.grade, this.courses);

  void averageGrade(){
    
    print("$name has an average grade of ${grade~/courses}");
  
 }
 Student.gender(this.name, this.grade, this.courses);
 }
 


