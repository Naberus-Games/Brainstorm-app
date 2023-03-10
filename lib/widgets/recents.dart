import 'package:flutter/material.dart';
import '../models/recents_data.dart';

class Recents extends StatefulWidget {
  const Recents({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RecentsState createState() => _RecentsState();
}

class _RecentsState extends State<Recents> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const viewportFraction = 0.7;
    _pageController = PageController(
        initialPage: _currentPage, viewportFraction: viewportFraction);
    //final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    // Determines the type of the carousel.
    var mobileView = SizedBox(
      height: 240,
      child: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        controller: _pageController,
        itemCount: carouselDataList.length,
        itemBuilder: (context, index) => Customcarousel(
          title: carouselDataList[index].title,
          image: carouselDataList[index].thumbnail,
          onTap: () {},
          selected: false,
        ),
      ),
    );

    var desktopView = SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        itemCount: carouselDataList.length,
        itemBuilder: (context, index) => Customcarousel(
          title: carouselDataList[index].title,
          image: carouselDataList[index].thumbnail,
          onTap: () {},
          selected: false,
        ),
      ),
    );

    var animatedPageIndicatorFb1 = AnimatedPageIndicatorFb1(
      currentPage: _currentPage,
      numPages: carouselDataList.length,
    );

    return Column(
      children: [
        (screenWidth > 600) ? desktopView : mobileView,
        (screenWidth > 600)
            ? const Padding(padding: EdgeInsets.zero)
            : animatedPageIndicatorFb1
      ],
    );
  }
}

class Customcarousel extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  final bool selected;
  const Customcarousel(
      {required this.title,
      required this.image,
      required this.onTap,
      this.selected = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                image,
                width: 300,
                height: 175,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedPageIndicatorFb1 extends StatelessWidget {
  const AnimatedPageIndicatorFb1(
      {Key? key,
      required this.currentPage,
      required this.numPages,
      this.dotHeight = 10,
      this.activeDotHeight = 10,
      this.dotWidth = 10,
      this.activeDotWidth = 20,
      this.gradient =
          const LinearGradient(colors: [Color(0xff74D9DF), Color(0xff74D9DF)]),
      this.activeGradient = const LinearGradient(
          colors: [Color(0xff74D9DF), Colors.lightBlueAccent])})
      : super(key: key);

  final int
      currentPage; //the index of the active dot, i.e. the index of the page you're on
  final int
      numPages; //the total number of dots, i.e. the number of pages your displaying

  final double dotWidth; //the width of all non-active dots
  final double activeDotWidth; //the width of the active dot
  final double activeDotHeight; //the height of the active dot
  final double dotHeight; //the height of all dots
  final Gradient gradient; //the gradient of all non-active dots
  final Gradient activeGradient; //the gradient of the active dot

  double _calcRowSize() {
    //Calculates the size of the outer row that creates spacing that is equivalent to the width of a dot
    const int widthFactor = 2; //assuming spacing is equal to the width of a dot
    return (dotWidth * numPages * widthFactor) + activeDotWidth - dotWidth;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _calcRowSize(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          numPages,
          (index) => AnimatedPageIndicatorDot(
            isActive: currentPage == index,
            gradient: gradient,
            activeGradient: activeGradient,
            activeWidth: activeDotWidth,
            activeHeight: activeDotHeight,
          ),
        ),
      ),
    );
  }
}

class AnimatedPageIndicatorDot extends StatelessWidget {
  const AnimatedPageIndicatorDot(
      {Key? key,
      required this.isActive,
      this.height = 10,
      this.width = 10,
      this.activeWidth = 20,
      this.activeHeight = 10,
      required this.gradient,
      required this.activeGradient})
      : super(key: key);

  final bool isActive;
  final double height;
  final double width;
  final double activeWidth;
  final double activeHeight;
  final Gradient gradient;
  final Gradient activeGradient;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? activeWidth : width,
      height: isActive ? activeHeight : height,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
          gradient: isActive ? activeGradient : gradient,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
    );
  }
}
