import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IbnTawlon extends StatefulWidget {
  @override
  _IbnTawlonState createState() => _IbnTawlonState();
}

class _IbnTawlonState extends State<IbnTawlon> {
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      title: "قصه احد الملوك",
      body: "كان هناك امير يدعي باحمد ابن طولون طلب من المهندس سعيد بن كاتب بتصميم مسجد وعين للماء",
      image: Center(child: Image.asset("image/horse.jpg", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "ولاكن ...",
      body: "عند مرو احمد ابن طولون غرست رجل الفرس في الطين بسبب الماء",
      image: Center(child: Image.asset("image/water.png", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "توقع خاطئ..",
      body: "فتوقع الامير ان المهندس اداد ان يقتله فقام بحبسه",
      image: Center(child: Image.asset("image/prison1.png", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "افراجه للمهندس",
      body: "فقرر الملك بان يخرجه من السجن فشرط ان ياتي بفكره تعجبه للمسجد",
      image: Center(child: Image.asset("image/sultan.png", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "الفكره",
      body: "فاقترح المهندس ان يتم وضع ٣٠٠ عامود في المسجد فوافق احمد ابن طولون و اخرجه من المسجد",
      image: Center(child: Image.asset("image/col.png", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "المائذنه",
      body: "و اخذ شكل المائذنه من الحضاره العراقيه و اخذ شكل حلزوني للمائذنه",
      image: Center(child: Image.asset("image/manara.jpg", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "المداخل",
      body: "و قرر ان يكون تصميم المسجد من ١٩ مدخل",
      image: Center(child: Image.asset("image/door.png", height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "الشبابيك",
      body: "و ١٢٨ شباك موزعين حول اركان المسجد و ملونين",
      image: Center(child: Image.asset("image/windowsxp.jpg", height: 175.0)),
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
      },  dotsDecorator: DotsDecorator(
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
