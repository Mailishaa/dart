void main(){
   var city="KE_NAIROBI_2025";
  var results=city.trim().toLowerCase().replaceAll("_", " ");
   print(results);


//  print(receipt("Mangos",3,15));

//  print(isPalindrome("wow"));
//  print(isPalindrome2("Hello"));
// }
//  String receipt( String itemName, int quantity,double unitprice){

//     return"$quanWrite a function that implements a quicksort without using any built-in sorttity x $itemName@ $unitprice KES =${quantity*unitprice}KES";
//   }

//   bool isPalindrome(String s){
//     for(int i=0; i< s.length ~/2; i++){
//       if(s[i]!= s[s.length-1-i]){
//         return false;
//       }
//     }
//     return true;


//   }

//   bool isPalindrome2(String m){
//     String word= m.toLowerCase().split("").reversed.join("");
//     return m==word;

fineForMessage("you are a stupid person , fuck you and you are dumb and ugly");

  }

 int fineForMessage(String message){
   var count=0;
  var offensiveWords=["ugly","stupid","dumb"];
   for ( var worde in offensiveWords){
    if(message.contains(worde)){
       count++;

    }
    
   }
    var finescount= count * 10;
   print("your fine is ${finescount} KES"); 
    return finescount;
} 