/* void main(){
      var shopping = {  // looping with forEach
       "milk":60,
       "bread":65,
       "sugar":100,
       "pen":20,
       "tealeaves":50
    };
    shopping.forEach((k,v){
        print("$k costs $v shillings");

    });

    // we can also loop using entry

    for (var entry in shopping.entries){
      print("${entry.key} cost ${entry.value} shillings");
    }

    // making a change in the original map

    var plusTax = shopping.map((k,v){
    return MapEntry(k,1.16*v);
    });
    print(plusTax);
    }


*/

//Set (unordered collection)
//set literals
void main(){
  var nums={3,4,7,12,5,43,7,1};
  print(nums);
  nums.add(1); // adding an existing element is not posssible
  nums.addAll({27,63,12});// addAll can be used to add a new set or a list to an existing set
  print(nums);
  nums.remove(12);
  nums.removeWhere((num)=>num%2!=0);// removes odd numbers
  print(nums);
  print(nums.first); // {3}  first and last are properties
  print(nums.last);//{63}
  var allOdd=nums.every((num)=>num%2!=0);
  print(allOdd);//false , because not all the numbers meet the condition
  var allOdd2=nums.any((num)=>num%2!=0);
  print(allOdd2);//true because some numbers are odd


//set constructor

var friends =Set();
friends.add("Diana");
friends.add("Femi");
friends.add("Claire");

// from and of
var copy=Set.from(nums);//creates dynamics
var copy2=Set.of(nums);//creates same data type


print(copy.runtimeType);  //_Set<dynamic>
print(copy2.runtimeType);//_Set<int>

//set operations
var a={1,2,3};
var b={3,4,5};
print(a.union(b));//{1,2,3,4,5}   // union can be done on more than two variables  a.union(b).union(c)
print(a.intersection(b));//{3}    // intersection can be done on more than two variables  a.intersection(b).intersection(c)
print(a.difference(b));//{1,2}
print(b.difference(a));//{4,5}

var citySet={"Madrid","Tokyo","Paris","CapeTown","New Delhi"};

for (var city in  citySet){
  print("I want to visit $city");
}
citySet.forEach((city)=>print("I want to visit $city"));


var upperCities=citySet.map((city)=> city.toUpperCase()).toSet();
print(upperCities);

// a function that retuns a list of all the duplicated elements from a list


} 
List<int>getDuplicates(List<int> nums){
  var unq=Set();
  List<int>dup=[];
  for(var num in nums){
    if (unq.contains(num)){
      dup.add(num);

    }else {

    }unq.add(num);

  }
  return dup;
}