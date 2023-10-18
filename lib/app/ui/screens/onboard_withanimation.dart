import 'package:basic_template/app/controller/main.dart';
import 'package:basic_template/app/ui/themes/font_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:onboarding_animation/onboarding_animation.dart';

import '../themes/colors.dart';
import 'home/main.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              OnBoardingAnimation(

                controller: PageController(initialPage: 0),
                pages: const [
                  _GetCardsContent(
                    image: 'assets/images/logonewwhite.png',
                    cardTitle: 'Welcome',
                    cardContent: 'Onboard with us get more earnings',
                  ),
                  _GetCardsContent(
                    image: 'assets/images/onboard.png',
                    cardTitle: 'The future depends on what you do today',
                    cardContent:
                        'A new job is like a blank\nbook and you are the author',
                  ),
                  _GetCardsContent(
                    image: 'assets/images/onboard1.png',
                    cardTitle: 'Love without conversation is impossible',
                    cardContent:
                        'One good conversation can shift the\ndirection of change forever',
                  ),
                ],
                indicatorDotHeight: 10.0,
                indicatorDotWidth: 10.0,
                indicatorActiveDotColor: AppColors.white,
                indicatorType: IndicatorType.expandingDots,
                indicatorPosition: IndicatorPosition.bottomCenter,
                indicatorSwapType: SwapType.normal,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=>HomeMain());
                  },
                  child: Text(
                    "Skip",
                    style: boldText(color: AppColors.white, size: 18.0),
                  ),
                ),
              ),
              Positioned(
                bottom: Get.height * 0.05,
                right: 0,
                left: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Get.to(()=>HomeMain());
                    },
                    child: Container(
                      width: Get.width,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      margin: EdgeInsets.symmetric(horizontal: Get.width *0.05),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.grey,
                            blurRadius: 10,
                          )
                        ]
                      ),
                      child: Text(
                        "Get Started",
                        style: boldText(color: AppColors.black, size: 18.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _GetCardsContent extends StatelessWidget {
  final String image, cardContent, cardTitle;

  const _GetCardsContent({
    Key? key,
    this.image = '',
    this.cardContent = '',
    this.cardTitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Get.height * 0.5,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(image),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Text(cardTitle,
                    style: boldText(color: AppColors.white, size: 20.0),
                    maxLines: 1),
                const SizedBox(height: 10),
                Text(
                  cardContent,
                  style: regularText(
                    color: AppColors.white,
                    size: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
