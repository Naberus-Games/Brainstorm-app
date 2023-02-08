import 'widgets/CustomCarousel.dart';
import 'widgets/PopupMenu.dart';
import 'widgets/SearchInput.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Color ThemeColor = Color(0xff74D9DF);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Files',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xfeD9D9D9),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.person, color: ThemeColor),
                        tooltip: 'Profile',
                        onPressed: () {
                          // const Popup(
                          //   menuList: [
                          //     PopupMenuItem(
                          //       child: Text('Option 1'),
                          //     ),
                          //     PopupMenuItem(
                          //       child: Text('Option 2'),
                          //     ),
                          //   ],
                          // );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SearchInput(
                    textController: TextEditingController(),
                    hintText: 'Search'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Recents',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
              const CarouselView()
            ],
          ),
        ),
        backgroundColor: const Color(0xff292828),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // const Popup(
            //   menuList: [
            //     PopupMenuItem(
            //       child: Text('Option 1'),
            //     ),
            //     PopupMenuItem(
            //       child: Text('Option 2'),
            //     ),
            //   ],
            // );
          },
          tooltip: 'New',
          backgroundColor: ThemeColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
