class Student{
  var name;
  var age;
  var id;

  Student(){

  }

  showInfo(){
    print("Name: ${name}");
    print("Age: ${age}");
    print("ID: ${id}");
  }
}

class VanierStudent extends Student{
  VanierStudent(){
    print("Printing from child class");
  }
  showInfo(){
    super.showInfo();
  }
}

void main(){
  var s = Student();
  s.name = "Joy";
  s.age = 18;
  s.id = 6290479;
  s.showInfo();
}