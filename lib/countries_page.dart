import 'package:flutter/material.dart';
import 'package:sabak_18_capitals_test/continents_page.dart';
import 'package:sabak_18_capitals_test/features/model/countries_model.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({super.key});

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  Color buttonColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          spacing: 5,
          children: [
            AssetsImage(image: 'assets/images/previous.png', size: 40),
            AssetsImage(
              image: 'assets/images/lightbulb.png',
              size: 40,
            ),
            Text('43'),
            SizedBox(width: 20),
            Text('14'),
          ],
        ),
        actions: [
          Row(
            children: List.generate(
                3,
                (index) => const AssetsImage(
                      image: 'assets/images/heart.png',
                      size: 40,
                    )),
          ),
          const AssetsImage(image: 'assets/images/mentor.gif', size: 40),
        ],
      ),
      body: Column(
        spacing: 20,
        children: [
          const LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          Text(tests[2].question),
          AssetsImage(image: tests[2].capitalImage, size: 300),
          Expanded(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.only(top: 20),
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 1.5,
                crossAxisCount: 2,
                children: List.generate(4, (int san) {
                  return CardWidget(
                    onTap: () {
                      setState(() {
                        buttonColor =
                            Colors.grey; // Кайра баштапкы түскө кайтуу
                      });
                    },
                    onTapDown: (_) {
                      setState(() {
                        buttonColor = tests[2].answers[san].isTrue
                            ? Colors.green
                            : Colors.red;
                      });
                    },
                    onTapCancel: () {
                      setState(() {
                        buttonColor = Colors
                            .grey; // Басуу токтотулганда баштапкы түскө кайтуу
                      });
                    },
                    tests[2].answers[san].answer,
                    buttonColor: buttonColor,
                  );
                })),
          )
        ],
      ),
    );
  }
}

class AssetsImage extends StatelessWidget {
  const AssetsImage({
    super.key,
    required this.image,
    required this.size,
  });
  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: size,
    );
  }
}
