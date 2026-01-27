void main(){
  //
  // // LIST (like array)
  // var list1 = [52,34,95,23,2,81];
  // print(list1);
  //
  // // Finding the smallest value in the list
  // var smallest = list1[0];
  // for(int i = 1; i < list1.length; i++){
  //   if(list1[i] < smallest){
  //     smallest = list1[i];
  //   }
  // }
  // print(smallest);
  //
  // // SET (doesnt allow dupes)
  // var mySet = <String>{};
  //
  // mySet.add("apple");
  // mySet.add("melon");
  // mySet.add("lemon");
  // print(mySet.contains("pineapple"));
  // mySet.add("apple");
  // print(mySet);
  //
  //
  // //KEY-VALUE MAP
  // var myMap = <String, int> {};
  // myMap['apple'] = 100;
  // myMap['lemon'] = 200;
  // myMap['melon'] = 300;
  // print(myMap);
  //
  // print(myMap['lemon']);
  // myMap.remove('melon');
  //
  // print(myMap.containsKey('key'));
  //
  // var n1 = 11343;
  // var n2 = 754;
  // var n3 = 1501;
  //
  // var largest = n1;
  // if(n2 > largest){
  //   largest = n2;
  //   if(n3 > largest){
  //     largest = n3;
  //   }
  // } else if (n3 > largest){
  //   largest = n3;
  // }
  // print(largest);
  //
  // //ENHANCED FOR-LOOP
  // for(var i in list1){
  //   print(i);
  // }
  //
  // var table_no = 2;
  // var max = 10;
  // for(int i = 1; i <= max; i++){
  //   print("${table_no} * ${i} = ${table_no*i}");
  // }
  //
  // print(sum(45, 32));

  var newList = ['tim', 'tommy', 'katy', 'adam'];
  print(newList);
  newList.forEach((item) {
    print('${newList.indexOf(item)} : ${item}');
  });

  // LAMBDA EXPRESSSIONS / ARROW FUNCTION
  var multiply = (int a, int b) => a*b;
  var result  = multiply(3,5);

  print(factorial(6));
}
// FUNCTIONS
int sum(int i, int j){
  return i+j;
}

//RECURSION
int factorial(int num){
  if(num <= 1){
    return 1;
  }
  return num * factorial(--num);
}
