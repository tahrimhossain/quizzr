import 'package:quizzr/Models/CustomQuizDetails.dart';
import 'package:quizzr/Models/Quiz.dart';

class CustomQuizState {
  CustomQuizState();
}

class LoadingState extends CustomQuizState {
  LoadingState() : super();
}

class ErrorState extends CustomQuizState {
  ErrorState() : super();
}

class NonExistentQuizState extends CustomQuizState{
  NonExistentQuizState():super();
}

class ShowQuestionState extends CustomQuizState {
   CustomQuizDetails details;
   int score;
   int index;
   Quiz quiz;

  ShowQuestionState(this.details, this.score, this.index, this.quiz) : super();
}

class ShowAnswerState extends CustomQuizState {
   CustomQuizDetails details;
   int score;
   int index;
   String chosenAnswer;
   Quiz quiz;

  ShowAnswerState(
      this.details, this.score, this.index, this.chosenAnswer, this.quiz)
      : super();
}

class ErrorUploadingScoreState extends CustomQuizState {
  CustomQuizDetails quizDetails;
  int score;
  int total;

  ErrorUploadingScoreState(this.quizDetails,this.score, this.total) : super();
}

class ShowScoreState extends CustomQuizState {
  int score;
  int total;
  ShowScoreState(this.score,this.total) : super();
}
