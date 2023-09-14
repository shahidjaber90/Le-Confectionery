import 'package:flutter/material.dart';
import 'package:le_confectionery/Screens/Splash%20and%20OnBoarding/GetStarted.dart';
import 'package:le_confectionery/Screens/Splash%20and%20OnBoarding/OnBoarding_1.dart';
import 'package:le_confectionery/Screens/Splash%20and%20OnBoarding/OnBoarding_3.dart';
import 'package:le_confectionery/Utils/Color.dart';
import 'package:le_confectionery/Widgets/BoardingButton.dart';
import 'package:le_confectionery/Widgets/MyText.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key});

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
                child: SizedBox(
                  height: screenHeight * 0.40,
                  width: screenWidth * 1.00,
                  child: Image.asset(
                    'assets/images/Boarding-2/Vector.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/Boarding-2/Corner.png',
                  height: 136,
                ),
              ),
              Positioned(
                top: 0,
                child: Image.asset('assets/images/Boarding-2/Leaf.png'),
              ),
              Positioned(
                top: screenHeight * 0.50,
                left: 0,
                child: Image.asset('assets/images/Boarding-2/LeftCake.png'),
              ),
              Positioned(
                top: screenHeight * 0.40,
                right: 0,
                child: Image.asset('assets/images/Boarding-2/RightCake.png'),
              ),
              Positioned(
                top: screenHeight * 0.20,
                right: screenWidth * 0.10,
                child: Image.asset(
                  'assets/images/Boarding-2/People.png',
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
                            'Made-to-Order Magic, Delivered Fresh: Customize and receive your dream cake hassle-free.',
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
                                  builder: (context) => const OnBoardingOne(),
                                ),
                              );
                            },
                          ),
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
                          BoardingButton(
                            height: 36.0,
                            width: 36.0,
                            child: Icon(
                              Icons.play_arrow,
                              color: ColorConstant.whiteColor,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OnBoardingThree(),
                                ),
                              );
                            },
                          ),
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
