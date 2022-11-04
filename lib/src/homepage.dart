import 'package:flutter/material.dart';
import 'package:hng_portfolio/src/config.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromRGBO(114, 141, 239, 1),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        children: [
          Container(
            color: const Color.fromRGBO(114, 141, 239, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Center(
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Akeem William Tobi',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                // const Text('@techbroke',
                //     style:
                //         TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text('Mobile App Developer',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(
                        'Tobi has 1 year and 6 months experience in mobile app '
                        'development, he has worked on several projects and has a '
                        'good understanding of the mobile app development process.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 70),
                const Text('https://github.com/Williamtobs',
                    style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal)),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease);
                  },
                  child: const Icon(
                    Icons.expand_circle_down_outlined,
                    size: 65,
                  ),
                ),
              ],
            ),
          ),
          InfoPage(
            onTap: () {
              _pageController.animateToPage(0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            },
          )
        ],
      ),
    );
  }
}

class InfoPage extends StatelessWidget {
  final void Function()? onTap;
  const InfoPage({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              decoration: const BoxDecoration(
                color: //Colors.black
                    Color.fromRGBO(114, 141, 239, 1),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: const Icon(Icons.keyboard_backspace, size: 40),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        myTheme.changeTheme();
                      },
                      child: const Icon(Icons.dark_mode, size: 40),
                    ),
                    //dark_mode
                  ],
                ),
              )),
        ),
        Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: kElevationToShadow[6],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Akeem William Tobi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text('Mobile App Developer',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    width: double.infinity,
                    //height: 100,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: kElevationToShadow[6],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Flutter Mobile Developer',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 2),
                        const Text('Wiseki Technologies',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        const SizedBox(height: 8),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: const TextSpan(
                              text: 'June 2022 - Present:',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: ' I joined Wiseki Technologies as a '
                                        'Flutter Mobile Developer to maintain and '
                                        'develop new features for the company\'s '
                                        'mobile applications.',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal))
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    width: double.infinity,
                    //height: 100,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: kElevationToShadow[6],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Flutter Mobile Developer',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 2),
                        const Text('Greenart House',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        const SizedBox(height: 8),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: const TextSpan(
                              text: 'January 2022 - March 2022:',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: ' I joined Greenart House as a '
                                        'Flutter Mobile Developer to '
                                        'develop '
                                        'mobile applications for the company clients.',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal))
                              ]),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
        Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 110,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(50, 200, 139, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Akeemtobi6@gmail.com',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('+234 814 685 9553',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ))
      ],
    );
  }
}
