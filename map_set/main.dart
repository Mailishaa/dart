void main(){
  var phones={        // can be crated using a pair of curly braces 
    "tecno":14999.0,
    "Samsung":25000.0,
    "oppo":10901.0,
    "redmi":8700.0,
  };
  print(phones);
    Map <String, double> phones2={    // we can explicitly state the type  
    "tecno":14999.0,
    "Samsung":25000.0,
    "oppo":10901.0,
    "redmi":8700.0,
  };


Map<String, dynamic> person={
  "name":"Jane",
  "gender":"female",
  "age": 20
  
};
print(person["name"]);//Jane
print(person["age"]);//20

person ["location"]="Kirinyaga";// to add a value and a key to an existing Map
print(person);// prints including the location
person["age"] = 21;// to  update an existing value 
person.putIfAbsent("resident",()=> true);// resident: true, if resident was present in the original map it would print false

  // add all(add a map to another )
  var details={
    "height":172,
    "hobby":"singing",
    "smokes":false
  };
  person.addAll(details);// the details from the second map are added to the frist one
  print(person);//{name: Jane, gender: female, age: 21, location: Kirinyaga, resident: true, height: 172, hobby: singing, smokes: false}
// to check if a map contains a particular key or a particular value
print(person.containsKey("phone"));// false  print("your fine is ${finescount} KES"); , because there is no such key
print(person.containsKey("gender"));// true ,
print(person.containsValue("Jane"));// true, the value "jane" is present in the map 
print(person.containsKey("resident"));//true
// to remove a value (bothe the key and the value have to go )
person.remove("location");
print(person);
print(person.isEmpty);
print(person.isNotEmpty);


//Use of a map constractor using the  Map() function 
var country =Map();
country["name"]="Zimbabwe";
country["president"]="Emerson Mnangagwa";
country["population"]= 150000000;
print(country);

// can also be created from another map by use of .from
var countryCopy= Map.from(country);


// can also be created from another map by use of Map.of 
var countryCopy2= Map.of(country);
print(countryCopy2);

//create from itearables

var fruits =["Mango","Apple","banana","orange"];
var fruitMap= Map.fromIterable(
  fruits
,
key:(fruit)=> fruit.toString().substring(0,2),
value:(fruit)=>fruit,
);
// print(fruitMap);
// var count=[4,5,6,7,8];
// var fruitCountMap=Map.fromIterables(fruits,count);
// print(fruitCountMap);
 

//a function that gives a list of strings returns a map of the number of occurences of each string

 var fruits2 = ['apple', 'banana', 'orange', 'banana', 'kiwi', 'apple'];
  Map<String, int> counts = {};

  for (var fruit in fruits2) {
    counts[fruit] = (counts[fruit] ?? 0) + 1;
  }

  print(counts); 
  


  // Define the map of country codes to country names
  Map<String, String> countries = {
    'KE': 'Kenya',
    'US': 'United States',
    'JP': 'Japan',
    'BR': 'Brazil',
  };
print(countries);
  //Iterate using .entries
  for (var entry in countries.entries) {
    print('${entry.key}: ${entry.value}');
  }


  
}


