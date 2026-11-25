//list iteration
void main(){
var myNums=[1,2,3,4,5];
for(var num  in myNums){
  print(num);// prints the individual values one after the other , each being on its own line.
}

myNums.forEach((n)=> print(n));//also prints the individual values

var squares=myNums.map((n)=>n*n).toList();
print(squares);//[1,4,9,16,25]
print(squares.runtimeType);// List<int>

var odds =myNums.where((n)=>n%2!=0).toList();
print(odds);
var evens =myNums.where((n)=>n%2==0).toList();
print(evens);

//any & every
var hasNegatives=myNums.any((n)=> n<0);// as long as any item in the list meets the specified condition
print(hasNegatives);//false
var hasEvens= myNums.any((n)=> n%2==0);
print(hasEvens);
var lessThan6 =myNums.every((n)=> n<6);//every item in the list must satisfy the condition
print(lessThan6);//true

//sort
var ages=[12,5,61,7,19,22,15,13];
ages.sort();//smallest to largest
print(ages);
ages.sort((a,b)=> b.compareTo(a));// largest to smallest
print(ages);

//reverse
var peeps=["Grace","Mary","Hellen","Joy","Queen"];
var rev= peeps.reversed.toList();
print(rev);

//combining lists
var africa=["Malawi","Namibia","DRC","Ghana"];
var asia=["China","Malaysia","Taiwan"];
var countries = [...africa, ...asia];
print(countries);

var nested=[[1,2,3,],[3,4,5],[6,7,8,9]];
var flat=nested.expand((ls)=>ls).toList();
print(flat);


print(myNums.isEmpty);
print(myNums.isNotEmpty);

//first even number/last odd

var firstEven=myNums.firstWhere((n)=> n%2==0);
print(firstEven);
var lastOdd= myNums.lastWhere((n)=> n%2!=0);
print(lastOdd);

//get range
print(myNums.getRange(0, 4));

//sublist
var x= myNums.sublist(0,4);//last index is optional and exclusive
print(x);

//join
var details=["kdk134a","Subaru","Forester","Red","32"];
print(details.join(" "));
print(details.join("\n"));

//fold
var sum =myNums.fold(0,(a,b)=> a+b);//collapses the entire list into one by perforning and operation on them
print(sum);v

var folded= details.fold("",(a,b)=> "$a$b");
print(folded);


//collection control
var present =false;// Timothy is not printed/ but if changed to true all the names are printed
var atendees =["Mary","Jane", if (present)"Timothy"];
print(atendees);//["Mary","Jane"]

var vegeterian = false ; //returns [tea, coffe, cocoa, eggs]  when changed to true it returns  [tea, coffe, cocoa, sweet potato]
var menu=["tea","coffe","cocoa", if(vegeterian)"sweet potato" else"eggs"];
print(menu);

var numbers = [1,2,3,4,5];
var doubled =[for (var n in numbers) n*2];// doubles the numbers 
print (doubled); //[2, 4, 6, 8, 10]

var evenDoubled=[
  for(var n in numbers)
    if(n.isEven)n*2
  ];
  print (evenDoubled);//[4, 8]

var groups=[
  ["Lion","Rhino","Eliphant"],
  ["Quail","Weaverbird"],
  ["Crocodile","Lizard"]
];
var flatlist=[for(var row in groups)...row];// works the same way as .expand
print(flatlist);

//function that takes in a list of ages and returns a list containing only the minors from the original list 

print(getMinors([12,13,14,15,19,22,32]));
}
List<int>getMinors(List<int>ages){//for you to return a value from a function you must specify the return type. therefore we cannot use void in this case
 return ages.where((age)=> age<18).toList();

}


