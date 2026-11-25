void main(){
print(isPalindrome("Madam"));
}
bool isPalindrome(String word){
  var word2= word.toLowerCase();
 for(int i=0; i<word2.length~/2; i++){
  if(word2[i]!= word2[word2.length-1 -i]){
    return false;
  }
 }return true;
}
