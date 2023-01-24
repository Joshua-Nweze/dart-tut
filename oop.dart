
class FirstName{
  String firstName;

  FirstName(this.firstName);

  void showFirstName(){
    print(firstName);
  }
}

class FullName extends FirstName{
  String surName;

  FullName(this.surName, String firstName) : super(firstName);

  void showFullName(){
    showFirstName();
    print(surName);
  }

}

void main(){
  var me = FullName("Nweze", "Josh");
  me.showFullName();

}