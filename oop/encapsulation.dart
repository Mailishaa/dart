void main(){
  var tyra = Person ("Tyra", 45,"123637696"); // an instance of the object 
  print(tyra._name); // how to access it 
  print(tyra._age);
  print(tyra._accountNo);
}
class Person{
  String _name; // we start with underscores to make them private
  int _age;
  String _accountNo;

  Person(this._name, this._age, this._accountNo); // the constractor for the person class

  //public getters
  String getName()=>_name;    // a getter , so that it can be accessed in another function since it is private
  int getAge()=>_age;

  // String get name () =>_name;
  //String get name()=>_name;

 //public setters
  void setName(String newName){   // we can use  
  //set name(String newName) instead 
    _name = newName; // the setter  asigns the new name to the name property
  }
  void setAge(int newAge){   
    // set age(int newAge)                 // the setter also allows for validation 
    if(newAge>0 && newAge <=130){             // in this case we validate that the age is between 0 -130
      _age=newAge;
    }else{
      throw ArgumentError("Age must be between 0-130");
    }
  }
  
   // the accout number remains secret and we use it only for verification , so we do not use a getter 
    //no one will be able to see the account number 
  bool verifyAccountNo(String accNo){  
    return _accountNo ==accNo;  
  }

}