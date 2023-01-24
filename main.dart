// import 'dart:math';
import 'dart:io';

String prompt(String msg){
  print(msg);
  String? answer = stdin.readLineSync();
  return answer!;
}

double promptDouble(msg){
  print(msg);
  String? num = stdin.readLineSync();
  return double.parse(num!);
}

class Questions {
  Questions(String question, double answer){
    this.question = question;
    this.answer = answer;
  }

  String? question;
  double? answer;
}

void main(){
  List<Questions> questions = [Questions("2+2", 4.0), Questions("2*3", 6.0), Questions("3-1", 2)];
  int score = 0;

  for (var question in questions) {
    double answer = promptDouble(question.question);

    if (answer == question.answer) {
      score++;
    }
  }

  prompt("Test ended");
  print("You're score is ${score}/${questions.length}");

}

// void chkEven(int val) {
//   if (val % 2 != 0) {
//     throw Exception("${val} is not an even number");
//   }
// }
// void main() {
//   void checker(){
//     try {
//       chkEven(98);
//     } catch (e) {
//       print(e);
//     } finally {
//       print("Check complete");
//     }
//   }

//   checker();
// }