import 'package:car_rent/res/app_assets.dart';
import 'package:car_rent/res/strings.dart';
import 'package:car_rent/view/car_details/widgets/secondary_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../res/colors.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.imagesMap,
            height: MediaQuery.of(context).size.height * 0.8,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              secondaryAppBar(context),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.mediumBlackColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.foturner,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        Assets.imagesArrow,
                                        color: AppColors.whiteColor,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        AppStrings.distance780Km,
                                        style: TextStyle(
                                            color: AppColors.whiteColor),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        Assets.imagesGasPump,
                                        color: AppColors.whiteColor,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        AppStrings.fuel50L,
                                        style: TextStyle(
                                            color: AppColors.whiteColor),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 400,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppStrings.features,
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: AppColors.lightGreyColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    Assets.imagesGasPump,
                                                    color: AppColors.blackColor,
                                                    height: 50,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Text(
                                                    AppStrings.diesel,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Text(
                                                    AppStrings.common,
                                                    style: const TextStyle(
                                                      fontSize: 8,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: AppColors.lightGreyColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    Assets.imagesAcceleration,
                                                    color: AppColors.blackColor,
                                                    height: 50,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Text(
                                                    AppStrings.acceleration,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Text(
                                                    AppStrings
                                                        .accelerationInNumbers,
                                                    style: const TextStyle(
                                                      fontSize: 8,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: AppColors.lightGreyColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    Assets.imagesCool,
                                                    color: AppColors.blackColor,
                                                    height: 50,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Text(
                                                    AppStrings.cool,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Text(
                                                    AppStrings.temp,
                                                    style: const TextStyle(
                                                      fontSize: 8,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            AppStrings.priceWithOutZeros,
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 34,
                                            ),
                                          ),
                                          Text(
                                            AppStrings.zeros,
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 34,
                                            ),
                                          ),
                                          Text(
                                            AppStrings.perDay,
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: AppColors.blackColor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Center(
                                            child: Text(
                                              AppStrings.book,
                                              style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColors.defaultGreyColor,
                            child: Icon(
                              Icons.close_rounded,
                              color: AppColors.whiteColor,
                              size: 16,
                            ),
                          ),
                          Image.asset(
                            Assets.imagesWhiteFortuner,
                            height: 110,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
