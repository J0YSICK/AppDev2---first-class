import 'dart:io';

void main() {
  print('Hello World');

  var name = "Joy";
  var age = 18;
  print("My name is ${name}. My age is ${age}");

  var n1 = 10;
  var n2 = 4;
  print("${n1} + ${n2} = ${n1 + n2}");

  //Reversing a number
  var givenNumber = 952;
  var reversedNumber = 0;

  while (givenNumber > 0) {
    //find the remainder
    var remainder = givenNumber % 10; //2, 5, 9
    reversedNumber = reversedNumber * 10 + remainder; //2, 25, 259
    givenNumber = givenNumber ~/ 10; //95, 5, 0
  }
  print(reversedNumber);

  //Fibonacci
  var num1 = 0;
  var num2 = 1;

  for (int i = 0; i < 5; i++) {
    stdout.write("${num1} ");
    stdout.write("${num2} ");
    num1 = num1 + num2;
    num2 = num1 + num2;
  }

  //Compute factorial
  var number = 5;
  var factorial = number;

  for (int i = 0; i < number; i++) {
    number--;
    factorial = factorial * number;
  }
  print(" ");
  print(factorial);

  //Nested loop
  for (int i = 0; i <= 4; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write("o ");
    }
    print("");
  }

  for (int i = 0; i <= 4; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write("${i} ");
    }
    print("");
  }

  var n = 0;
  for (int i = 0; i <= 4; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write("${++n} ");
    }
    print("");
  }

  for (int i = 0; i <= 4; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write("${j+1} ");
    }
    print("");
  }

  for (int i = 0; i <= 4; i++) {
    for (int j = 0; j < i; j++) {
      if(j==0){
        stdout.write("A ");
      } else if (j==1){
        stdout.write("B ");
      } else if (j==2){
        stdout.write("C ");
      } else{
        stdout.write("D ");
      }
    }
    print("");
  }
}
