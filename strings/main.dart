void main(){
  

  /*var single = 'A single quoted string';
  var double="A double quoted string";
  var mixed = "Mary's old bag ";
  var multi = '''
we use triple quotes
to represent multiline text
it preserves indentation''';

print(single);
print(double);
print(mixed);
print(multi);*/
String  text = "dart is fun ";
var hello =text.replaceRange(8,11,"open source");
print(hello);

//string interpolation 
var name ="Aden";
var age= 22;
print("$name has had an ID for ${age-18}years");

// raw strings 
var regular="this is a new line: \n add a tab \t followed by some more text";// treates the \n as a new line and \t  new tab
print(regular);
var raw = r"this is a new line: \n add a tab \t followed by some more text";// adding the r makes it treated as a normal string

// Index 
var fruit ="Avocado";
print (fruit[0]);
print (fruit[1]);
print (fruit[2]);
print (fruit[3]);
print (fruit[4]);
print (fruit[5]);
print (fruit[6]);

//String methods
var email=" MAILISHA@GMAIL.COM ";
var cleanEmail =email.toLowerCase();
print(cleanEmail);
print(cleanEmail.trimLeft());//removes white space from left
print(cleanEmail.trimRight());//removes white space from right
print(cleanEmail.trim());//removes white spaces from both sides

//Split 
var stmt="I went to the market on Sturday";
var words=stmt.split("market");// breaks the string anywhere it finds the delemeter in the brackets and, 
print(words);//[I went to the,  on Sunday] removes market and puts a comma and a space
var word=stmt.split("");// every character on its own
print(word);//[I,  , w, e, n, t,  , t, o,  , t, h, e,  , m, a, r, k, e, t,  , o, n,  , S, t, u, r, d, a, y]
var row="Apple, Lenovo, Hp,Dell, Toshiba";
var laptops=row.split(",");
print(laptops);//[Apple,  Lenovo,  Hp, Dell,  Toshiba]


// Substring
print(stmt.substring(7,19));// start index to end index , the 19th index is not included//to the marke
print(stmt.substring(14));//start index to the end //arket on Sturday

//search and inspect
var city= "San Francisco";
print(city.startsWith("S"));// true
print(city.endsWith("O"));// "O" is caps so it prints out false
print(city.contains("r"));//true
print(city.contains("Fran"));//true

// index of 
print(city.indexOf ("a"));//1// returns the index of the first "a"
print(city.lastIndexOf ("a")); //6// returns the last instance of the letter"a"
print(city.lastIndexOf ("an"));// 6
print(city.indexOf ("and"));//-1 because the substring doesv not exist
print(city.indexOf ("x"));//-1 the character does not exist

//Mutability
print(city.replaceFirst("a","e"));//Sen Francisco
print(city.replaceAll("a","e"));//Sen Frencisco// replaces all instances 
print(city.replaceAll("an","gd"));//Sgd Frgdcisco

//Pad function
var myNum="7";
print(myNum.padLeft(3,"x"));//xx7
var year= "03"; // the first and the second characters are occupied already
print(year.padLeft(3,"20"));// 3 now represents the third character which in this case is "20"
// 2003



//string buffer
var letters= ["a","b", "c","d","e", "f","g","h"];
/*var combined ="";// creates  8 new strings in memory to come up with the last one 
for (var letter in letters){
  combined =letter;
}
 print(combined); */   //h
 var buffer= StringBuffer();
 for (var letter in letters){
  buffer.write(letter);
 }
 var combined =buffer.toString();// collects all the strings needed to be combined creates only one string in memory
 print(combined); //abcdefgh

}