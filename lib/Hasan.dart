import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Hasan extends StatefulWidget {
  @override
  _HasanState createState() => _HasanState();
}

class _HasanState extends State<Hasan> {
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      title: "قصه احد الملوك",
      body: "في عام ٦٣٦ هجريا امر السلطان حسن ببناء مسجد و استمر العمل فيه ٣ سنين متواصله",
      image: Center(child: Image.asset("image/sultan.png", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "ولاكن ...",
      body: "و كان يريد تصميم ٤ ماذن ولكن عند بناء المآذنه الثالثه سقطت و توفي عدد من الناس فقرر ان يبني منارتين فقط",
      image: Center(child: Image.asset("image/mosque.jpg", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "المدارس..",
      body: "كان المسجد يحتوي علي اربع مدارس لتعليم الدين و اصوله و كانت اكبر مدرسه هيا الحنفيه ",
      image: Center(child: Image.asset("image/school.jpg", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        pages: listPagesViewModel,
      showSkipButton: true,
      skip: const Icon(Icons.skip_next),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () {
          Navigator.pop(context);
    },
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.blueAccent,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          )
      ),
    );
  }
}
