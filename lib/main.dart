import 'widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_carousel.dart';

void main() {
  runApp(const MyApp());
}

const Color themeColor = Color(0xff74D9DF);

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
                          ?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ), //Change
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: PopupMenuButton(
                        icon: const Icon(Icons.person, color: themeColor),
                        color: const Color.fromRGBO(41, 40, 40, 1),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text(
                              'Profile',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Settings',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                          PopupMenuItem(
                            child: Text(
                              'Logout',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.red),
                            ),
                          ),
                        ],
                        tooltip: 'Profile',
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
                          ?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const CustomCarousel()
            ],
          ),
        ),
        backgroundColor: const Color(0xff292828),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: themeColor,
          child: PopupMenuButton(
            icon: const Icon(Icons.add),
            color: const Color.fromRGBO(41, 40, 40, 1),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  'Whiteboard',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Notes',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ],
            tooltip: 'New',
          ),
        ),
      ),
    );
  }
}
