import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hxxstella_site/pages/home_app_bar.dart';
import 'package:hxxstella_site/pages/program_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.25);

  final List<String> _images = [
    "hobaektown.png",
    "hwashin.png",
    "redfog1.png",
    "redfog2.png",
    "take.png",
    "당신은시민입니다.png",
    "치즈고등학교.png",
  ];

  var _currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar height 330, content [ logo, menu(NEW, 홈, 대규모 콘텐츠, 공개 예정), search field, notification, profile image, dropdown menu(logout) ]
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const HomeAppBar(),
          //  horizontal card selector
          Expanded(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                ProgramItem(program: programs[_currentItem % programs.length]),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ScrollConfiguration(
                      behavior: MyCustomScrollBehavior(),
                      child: PageView.builder(
                        padEnds: false,
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: 100,
                        onPageChanged: (index) {
                          _currentItem = index;
                          setState(() {});
                        },
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: _currentItem == index
                                        ? Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          )
                                        : null,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/${_images[index % _images.length]}"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
