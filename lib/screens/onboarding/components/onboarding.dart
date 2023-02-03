import 'package:first_app/screens/onboarding/components/content_boarding.dart';
import 'package:flutter/material.dart';
import 'package:first_app/screens/onboarding/components/content_page.dart';
import 'package:first_app/pages/login.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  List<Map<dynamic, dynamic>> boardingData = [
    {
      'title': 'ESPARCIMIENTO',
      'text': 'Brindamos todos los servicios para consentir a tu mascota',
      'image': 'assets/img/B1.png',
    },
    {
      'title': 'ADOPCION',
      'text':
          'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
      'image': 'assets/img/B2.png',
    },
    {
      'title': 'HOSPITALIDAD',
      'text':
          'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
      'image': 'assets/img/B3.png',
    },
    {
      'title': 'VETERINARIA',
      'text':
          'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
      'image': 'assets/img/B4.png',
    },
    {
      'title': 'TIENDA',
      'text':
          'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
      'image': 'assets/img/B5.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
              padding: const EdgeInsets.only(top: 20),
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: boardingData.length,
                itemBuilder: (context, index) => ContentBoarding(
                  title: boardingData[index]['title'],
                  text: boardingData[index]['text'],
                  image: boardingData[index]['image'],
                ),
              )),
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      boardingData.length,
                      (index) => page(index: index, currentPage: currentPage),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      if (currentPage < boardingData.length - 1) {
                        setState(() {
                          currentPage++;
                        });
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      }
                      _pageController.jumpToPage(currentPage);
                    },
                    style: ElevatedButton.styleFrom(
                        side: currentPage < boardingData.length - 1
                            ? const BorderSide(color: Color(0xff7A7A7A))
                            : BorderSide.none,
                        foregroundColor: currentPage < boardingData.length - 1
                            ? const Color(0xff7A7A7A)
                            : Colors.white,
                        backgroundColor: currentPage < boardingData.length - 1
                            ? Colors.white
                            : const Color(0xff7BD047),
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fixedSize: const Size(290, 45)),
                    child: Text(
                      currentPage < boardingData.length - 1
                          ? 'Siguiente'
                          : 'Continuar',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ))
      ],
    ));
  }
}
