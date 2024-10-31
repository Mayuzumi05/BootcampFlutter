void main(List<String> args) {
   print(range(30, 23, 3));
}

range(num1, num2, step) {
  var i, number = [];
  if(num1>num2) {
    for(i=num1;i>=num2;i-=step){
      number.add(i);
    }
  } else if(num2>num1) {
    for(i=num1;i<=num2;i+=step){
      number.add(i);
    }
  } else {
    number.add(num1);
  }
  return number;
}