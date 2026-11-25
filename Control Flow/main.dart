void main(){
  int age =21;
  if(age<18){
    print("minor");
  }else if (age>=18 && age <35){
    print("youth");
  }else{
    print("OLd");
  }

for  (var i=1; i<=5; i++){  // for loop- where you need a counter
  print(i);
}

var friends=["Mary","Tom","Ann"];   //for - in  used  when we have a collection of items
for(var friend in friends) {
  print("hello $friend");
}    
friends.forEach((f)=>print("Hi $f")); // forEach


int count=0;   // while loop // evaluatest the condition first then run the code
while(count<5){
  print(count);
  count++;// prints all the numbers from 0 to 4
}

count=0;   // do - while // runs the code first then evaluates the condition
do{
  print(count);
  count++;
}while(count<5);

var noisemakers=["Mary","Tom","Peter","John"];   // skip the current iteration and move to the next one
for(n in noisemakers){
if(n=="Peter"){
  continue;

}
print(n);

print(greeting("midnight"));
print(greeting("morning"));
}
String greeting(String timeOfDay){
  var greeting=switch(timeOfDay){
    "morning"=> "Good morning",
    "afternoon"=>"Good afternon",
    "evening"=> "Good Evening",
    _=>"Woza",
  };
  return greeting;
}
}