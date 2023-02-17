import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 240,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            controller: _pageController,
            itemCount: 4,
            itemBuilder: (context, index) => Customcarousel(
              title: index == 0
                  ? "Whiteboard"
                  : index == 1
                      ? "Notes"
                      : index == 2
                          ? "Script"
                          : "To-Do",
              image: index == 0
                  ? "https://imgs.search.brave.com/HB14see-Aink2I25XWHuDI7XX7lHccSFwUdyXzizn1E/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9kam53/NWEwd3N6a3kwLmNs/b3VkZnJvbnQubmV0/L2lua2ZhY3Rvcnl3/cC93cC1jb250ZW50/L3VwbG9hZHMvMjAx/Ni8xMC9DbGVhbmVk/LUV4YW1wbGUyLmpw/Zw"
                  : index == 1
                      ? "https://miro.medium.com/max/4096/1*JPIrVxzu4KmwD7aLf60Q5g.png"
                      : index == 2
                          ? "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Screenplay_example.svg/351px-Screenplay_example.svg.png"
                          : "https://assets.hongkiat.com/uploads/to-do-lists-by-hand/bj-start-here-future-log.jpg",
              onTap: () {},
              selected: false,
            ),
          ),
        ),
        AnimatedPageIndicatorFb1(
          currentPage: _currentPage,
          numPages: 4,
        )
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
              style: const TextStyle(fontSize: 15, color: Colors.white),
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
          const LinearGradient(colors: [Colors.lightBlue, Colors.lightBlue]),
      this.activeGradient = const LinearGradient(
          colors: [Colors.lightBlue, Colors.lightBlueAccent])})
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
