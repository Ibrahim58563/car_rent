import 'package:car_rent/res/strings.dart';
import 'package:car_rent/view/home/details_screen.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mediumBlackColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Transform.translate(
                offset: const Offset(-80, 0),
                child: Image.asset(
                  'assets/images/splash_image.png',
                  fit: BoxFit.cover,
                  height: 630,
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 520,
                  ),
                  Text(
                    AppStrings.luxury,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Text(
              AppStrings.experience,
              style: TextStyle(
                color: AppColors.underDefaultGreyColor,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    AppStrings.go,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
