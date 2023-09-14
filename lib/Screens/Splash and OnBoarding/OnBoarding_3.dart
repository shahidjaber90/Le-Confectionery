import 'package:flutter/material.dart';
import 'package:le_confectionery/Screens/Splash%20and%20OnBoarding/GetStarted.dart';
import 'package:le_confectionery/Screens/Splash%20and%20OnBoarding/OnBoarding_2.dart';
import 'package:le_confectionery/Utils/Color.dart';
import 'package:le_confectionery/Widgets/BoardingButton.dart';
import 'package:le_confectionery/Widgets/MyText.dart';

class OnBoardingThree extends StatelessWidget {
  const OnBoardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 1.00,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Image.asset(
                  'assets/images/Boarding-3/Vector.png',
                  height: screenHeight * 0.275,
                  width: screenWidth * 1.00,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/Boarding-3/Corner.png',
                  height: 136,
                ),
              ),
              Positioned(
                top: 20,
                child: Image.asset('assets/images/Boarding-3/Leaf.png'),
              ),
              Positioned(
                top: screenHeight * 0.50,
                left: 0,
                child: Image.asset('assets/images/Boarding-3/LeftCake.png'),
              ),
              Positioned(
                top: screenHeight * 0.30,
                right: 0,
                child: Image.asset('assets/images/Boarding-3/RightCake.png'),
              ),
              Positioned(
                top: screenHeight * 0.20,
                right: screenWidth * 0.10,
                child: Image.asset(
                  'assets/images/Boarding-3/People.png',
                  // height: screenHeight * 0.46,
                  width: screenWidth * 0.80,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.36,
                  width: screenWidth * 1.00,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyText(
                        myText:
                            '"Indulge in Delightful Confections: Taste New Horizons, Affordably!"',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        textColor: ColorConstant.blackColor,
                        letterspace: 0.5,
                        lineHeight: 1.4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoardingButton(
                            height: 36.0,
                            width: 36.0,
                            child: RotatedBox(
                              quarterTurns: 90,
                              child: Icon(
                                Icons.play_arrow,
                                color: ColorConstant.whiteColor,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OnBoardingTwo(),
                                ),
                              );
                            },
                          ),
                          const Spacer(),
                          BoardingButton(
                            height: 60.0,
                            width: 60.0,
                            child: MyText(
                              myText: 'Skip',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              textColor: ColorConstant.whiteColor,
                              letterspace: 0.5,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const GetStarted(),
                                ),
                              );
                            },
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
