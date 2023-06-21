class QuestionModel {
  const QuestionModel(
      {required this.text, required this.image, required this.answers});
  final String text;
  final String image;
  final List<AnswerModel> answers;
}

class AnswerModel {
  const AnswerModel({required this.text, required this.correctAnswer});
  final String text;
  final bool correctAnswer;
}

const QuestionModel s1 = QuestionModel(
  text: 'Paris',
  image: 'Paris',
  answers: [
    AnswerModel(text: 'Germany', correctAnswer: false),
    AnswerModel(text: 'Finland', correctAnswer: false),
    AnswerModel(text: 'France', correctAnswer: true),
    AnswerModel(text: 'Italy', correctAnswer: false),
  ],
);

const QuestionModel s2 = QuestionModel(
  text: 'Bern',
  image: 'BernSwitzerland',
  answers: [
    AnswerModel(text: 'Russia', correctAnswer: false),
    AnswerModel(text: 'Switherland', correctAnswer: true),
    AnswerModel(text: 'England', correctAnswer: false),
    AnswerModel(text: 'Spain', correctAnswer: false),
  ],
);

const QuestionModel s3 = QuestionModel(
  text: 'Brusel',
  image: 'BruselBelgium',
  answers: [
    AnswerModel(text: 'Makedonia', correctAnswer: false),
    AnswerModel(text: 'Portugal', correctAnswer: false),
    AnswerModel(text: 'Albania', correctAnswer: false),
    AnswerModel(text: 'Belgium', correctAnswer: true),
  ],
);

const QuestionModel s4 = QuestionModel(
  text: 'Copenhagen',
  image: 'CopenhagenDenmark',
  answers: [
    AnswerModel(text: 'Denmark', correctAnswer: true),
    AnswerModel(text: 'Ukrain', correctAnswer: false),
    AnswerModel(text: 'Poland', correctAnswer: false),
    AnswerModel(text: 'Norway', correctAnswer: false),
  ],
);

const QuestionModel s5 = QuestionModel(
  text: 'Berlin',
  image: 'Berlin',
  answers: [
    AnswerModel(text: 'Germany', correctAnswer: true),
    AnswerModel(text: 'Sweden', correctAnswer: false),
    AnswerModel(text: 'Greece', correctAnswer: false),
    AnswerModel(text: 'Turkey', correctAnswer: false),
  ],
);

List<QuestionModel> questionAnswerList = [
  s1,
  s2,
  s3,
  s4,
  s5,
];
