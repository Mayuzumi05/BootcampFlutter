void main(List<String> args) {
   print(range(10, 1));
   print(range(1, 10));
   print(range(10, 10));
}

range(num1, num2) {
  var i, number = [];
  if(num1>num2) {
    for(i=num1;i>=num2;i--){
      number.add(i);
    }
  } else if(num2>num1) {
    for(i=num1;i<=num2;i++){
      number.add(i);
    }
  } else {
    number.add(num1);
  }
  return number;
}