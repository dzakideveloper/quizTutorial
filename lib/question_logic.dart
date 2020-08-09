import 'package:quiz_tutorial/question.dart';

class QuestionLogic {
  int _questionNumber = 0;

  List<Question> _questionList = [
    Question("Apakah manusia boleh menyembah setan?", false),
    Question("Apakah manusia wajib menyembah Allah?", true),
    Question("Apakah kita wajib bertaubat kepada Allah?", true),
    Question("Bolehkah kita meninggalkan shalat?", false),
    Question("Jika kita meninggalkan shalat apakah kita akan diazhab?", true),
    Question("Jika manusia durhaka kepada orangtunya itu berdosa?", true),
    Question("Apakah makan babi itu boleh?", false),
    Question("apakah berpuasa itu baik?", true),
    Question("Apakah manusia akan mati?", true),
    Question("apakah makan ikan boleh?", true),
  ];

  String getQuestion() => _questionList[_questionNumber].question;

  int getQuestionNumberText() => _questionNumber + 1;

  int getTotalQuestionText() => _questionList.length;

  bool getCorrectAnswer() => _questionList[_questionNumber].answer;

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;
}
