//Arrow Functions - used when a function contains  a single use
void main(){
  print(square(17));
  print(square2(17));

  addition(23,18);
  print(sum(34,45));
  print(quotient(10,2));

  greet("Sylvester");

  var myNumbers=[1,2,3,4,5];
  myNumbers.forEach((int n) => print(n*n)); // callback  function  void callBack(){ } could worlk too

  doCalculation(5,8,(x,y) =>(x+y));
  doCalculation(5,8,(x,y) => (x*y));

  var times2=multiplyBy(2);
  var times3=multiplyBy(5);
  print(times2(5));
  print(times3(8));

  outerFunction();
  remainder (6,5);
  fact("dancing");
  registerUser(username:"Mailisha", password: "123456");
  vehcleDetails(["123334"],["hgghgdh"] ,[" nvbjhbhgu"], ["cbvhvhg"], ["speebjvhjvbh"]);
} 
int square(int x){
  return x*x;
}
int square2(int x)=> x*x;

//Anonymus notations
int addition(int x, int y){
  return x+y;
}

var sum =(int x, int y)=> x+y;

var quotient=(int a,int b)=> a/b;

var greet=(String name) => print("Hello $name");

//Higher order functon
void doCalculation(int x, int y, int Function (int,int) calculate){
  print(calculate(x,y));
}

Function multiplyBy(int x){
return(int y )=>x*y;
}

var globalVar="global";


void outerFunction(){
  var outerVar="outer";

void innerFunction(){
  var innerVar="inner";
  print(globalVar);
  print(outerVar);
  print(innerVar);
}
innerFunction();
print(globalVar);

}
int remainder (int f ,int g){
var rem = f % g;
print(rem);
return rem;

}
void fact( String fact){
  print("i love $fact");
}



void registerUser({required String username, required String
password}) {
print('Registering: $username');
}
// Must provide all required named parameters

  vehcleDetails(List regNumber,List Make , List model,List color,List speed){
 print("$regNumber,\n $Make,\n $model,\n $color \n $speed");
  }







 
   