class CountriesModel {
  final String question;
  final String capitalImage;
  final List<Answer> answers;

  CountriesModel({
    required this.question,
    required this.capitalImage,
    required this.answers,
  });
}

class Answer {
  final String answer;
  final bool isTrue;

  Answer({required this.answer, required this.isTrue});
}

CountriesModel test1 = CountriesModel(
  question: "Түштүк Кореянын борбору",
  capitalImage: "assets/countries/seaul.jpg",
  answers: [
    Answer(answer: "Гуанджоу", isTrue: false),
    Answer(answer: "Сеул", isTrue: true),
    Answer(answer: "Вашингтон", isTrue: false),
    Answer(answer: "Токио", isTrue: false),
  ],
);
CountriesModel test2 = CountriesModel(
  question: "Африканын борбору",
  capitalImage: "assets/countries/Ethiopian_highlands.png",
  answers: [
    Answer(answer: "Заир", isTrue: false),
    Answer(answer: "Сахара", isTrue: false),
    Answer(answer: "Африка", isTrue: true),
    Answer(answer: "Конго", isTrue: false),
  ],
);
CountriesModel test3 = CountriesModel(
  question: "Австралия борбору",
  capitalImage: "assets/countries/cidnei.png",
  answers: [
    Answer(answer: "Аргентина", isTrue: false),
    Answer(answer: "Австралия", isTrue: true),
    Answer(answer: "Англия", isTrue: false),
    Answer(answer: "Чили", isTrue: false),
  ],
);

List<CountriesModel> tests = [test1, test2, test3];
List<Map<String, dynamic>> continents = [
  {'name': 'Asia', 'tests': tests},
  {'name': 'Africa', 'tests': tests},
  {'name': 'Australia', 'tests': tests},
];