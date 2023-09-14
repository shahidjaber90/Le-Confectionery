import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:le_confectionery/Screens/Splash%20and%20OnBoarding/GetStarted.dart';
import 'package:le_confectionery/Screens/Splash%20and%20OnBoarding/OnBoarding_2.dart';
import 'package:le_confectionery/Utils/Color.dart';
import 'package:le_confectionery/Widgets/BoardingButton.dart';
import 'package:le_confectionery/Widgets/MyText.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

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
                  child: SvgPicture.asset(
                    'assets/svg/Boarding-1/Vector.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset('assets/images/Boarding-1/Corner.png'),
              ),
              Positioned(
                top: 0,
                child: Image.asset('assets/images/Boarding-1/Leaf.png'),
              ),
              Positioned(
                top: screenHeight * 0.38,
                left: 20,
                child: Image.asset('assets/images/Boarding-1/LeftCake.png'),
              ),
              Positioned(
                top: screenHeight * 0.40,
                right: 0,
                child: Image.asset('assets/images/Boarding-1/RightCake.png'),
              ),
              Positioned(
                top: screenHeight * 0.12,
                right: screenWidth * 0.20,
                child: Image.asset(
                  'assets/images/Boarding-1/People.png',
                  height: screenHeight * 0.46,
                  width: screenWidth * 0.60,
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
                            'Indulge in perfection: Taste our \nheavenly creations at\nLe Confectionery, where every \nslice is a celebration!',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        textColor: ColorConstant.blackColor,
                        letterspace: 0.5,
                        lineHeight: 1.4,
                      ),
                      Row(
                        children: [
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
                                  builder: (context) => const OnBoardingTwo(),
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
