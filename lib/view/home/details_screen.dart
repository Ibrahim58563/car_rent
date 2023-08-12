import 'package:car_rent/res/colors.dart';
import 'package:car_rent/res/strings.dart';
import 'package:flutter/material.dart';

import '../car_details/car_details_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.info_outline_rounded),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(AppStrings.information)
                    ],
                  ),
                  Row(
                    children: [
                      const Stack(alignment: Alignment.topRight, children: [
                        Icon(Icons.notifications_none_rounded),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 5,
                        )
                      ]),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(AppStrings.notification)
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CarDetailsScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.nearest,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          Image.asset('assets/images/black_fortuner.png'),
                          Text(
                            AppStrings.foturner,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/arrow.png'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        AppStrings.distance780Km,
                                        style: TextStyle(
                                            color: AppColors
                                                .underDefaultGreyColor),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/gas_pump.png'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        AppStrings.fuel50L,
                                        style: TextStyle(
                                            color: AppColors
                                                .underDefaultGreyColor),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                AppStrings.hourlyPrice,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 50,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    'assets/images/avatar.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                AppStrings.jany,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/map.png',
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.mediumBlackColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.more,
                                style:
                                    TextStyle(color: AppColors.offWhiteColor),
                              ),
                              Icon(
                                Icons.more_horiz_rounded,
                                color: AppColors.whiteColor.withOpacity(0.6),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/arrow.png',
                                                color: AppColors.whiteColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                AppStrings.distance4Km,
                                                style: TextStyle(
                                                    color:
                                                        AppColors.whiteColor),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/gas_pump.png',
                                                color: AppColors.whiteColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                AppStrings.fuel50L,
                                                style: TextStyle(
                                                    color:
                                                        AppColors.whiteColor),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppColors.whiteColor,
                                    child:
                                        const Icon(Icons.arrow_forward_rounded),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Divider(
                              color: AppColors.defaultGreyColor,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppStrings.iconic5,
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/arrow.png',
                                                color: AppColors.whiteColor,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                AppStrings.distance8Km,
                                                style: TextStyle(
                                                    color:
                                                        AppColors.whiteColor),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/battery.png'),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                AppStrings.batteryCharge,
                                                style: TextStyle(
                                                    color:
                                                        AppColors.whiteColor),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppColors.whiteColor,
                                    child:
                                        const Icon(Icons.arrow_forward_rounded),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
