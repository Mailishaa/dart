void main(){
  var banker = Banker("Peter", 25);
  //banker.talk("what is your account number");
  banker.eat();
 /*  banker.sleep();
  banker.countMoney([100,200,50,500]); */

  var farmer = Farmer("Jova", 29);
  //farmer.talk("The rains are due soon");
  farmer.eat();
 /*  farmer.sleep();
  farmer.cultivateLand(); */

  var doctor = Doctor("Queen", 20);
  //doctor.talk("How are you today?");
  doctor.eat();
 /*  doctor.sleep();
  doctor.treatPatient("Nancy", "headache"); */


}

class Person{
  String name;
  int age;

  Person(this.name,this.age);

  void talk(String words){
    print(words);
  }
  
  void eat(){
    print("yum");
  }

  void sleep(){
    print("zzzzzzzzzz");
  }

}

class Banker extends Person{
  String name;
  int age;

  Banker(this.name,this.age) :super(name,age); // super is areference to the parent class

  /* void talk(String words){
    print(words);
  }                                 // these lines have been repeated, for each class we now only have to write it in the parent class and eliminate it fromthe other classes
  
  void eat(){
    print("yum");
  }

  void sleep(){
    print("zzzzzzzzzz");
  } */
  int countMoney(List<int> notes){
    var total =0;
    notes.forEach((note) => total +=note);
    return total;
  }
  
}
class Farmer extends Person{
  String name;
  int age;

  Farmer(this.name,this.age) :super(name,age);

  void cultivateLand(){
    print("dig,dig,dig");
  }

  @override                  // we override the eat function to replace the word "yum " and write our own implementation
  void eat() {               // it behaves differently from the other classes that still use the super class
    
    //super.eat();
    print("I am eating the food that I grew in my farm");
  }
}
class Doctor extends Person{
  String name;
  int age;

  Doctor(this.name,this.age) :super(name,age);


  void treatPatient(String patientName, String illness){
    print("Treating$patientName for $illness");
  }
}