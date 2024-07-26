import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:haulway_mobile/features/dashboard/presentation/dashboard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:haulway_mobile/core/constants/app_colors.dart';
import 'package:haulway_mobile/core/constants/app_icons.dart';
import 'package:haulway_mobile/core/constants/app_images.dart';
import 'package:haulway_mobile/core/styles/shape.dart';
import 'package:haulway_mobile/shared/extensions.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const routeName = '/onboarding-screen';
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();
  final List<OnboardingData> onboardingData = [
    OnboardingData(
      title: 'Explore \nTrendy Fashion',
      description:
          'Explore the latest trends in the world of fashion you never have to miss a beat.',
      image: ImageAssets.onboarding1,
    ),
    OnboardingData(
      title: 'Select \nYour Style',
      description:
          'From our huge collection of Hauls, Lookbook, DIY and GRWM, you can choose the best for you.',
      image: ImageAssets.onboarding2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Stack(
                      children: [
                        ClipPath(
                          clipper:
                              ShapeBorderClipper(shape: CustomShapeBorder()),
                          child: Container(
                            height: 0.6.sh,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(onboardingData[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ).pad(),
                        Positioned(
                          top: 0.51.sh,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                onboardingData[index].title,
                                style: context.textTitleTheme,
                              ),
                              Gap(4.w),
                              SizedBox(
                                width: 0.7.sw,
                                child: Text(
                                  onboardingData[index].description,
                                  maxLines: 3,
                                  style: context.textBodyTheme,
                                ),
                              ),
                            ],
                          ).padSymmetric(horizontal: 12, vertical: 0),
                        ),
                      ],
                    )),
          ),
          // const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  _pageController.animateToPage(
                    onboardingData.length - 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
                child: Text(
                  'Skip',
                  style: context.textBodyTheme,
                ),
              ),
              SmoothPageIndicator(
                count: onboardingData.length,
                controller: _pageController,
                effect: const ExpandingDotsEffect(
                  activeDotColor: AppColors.kPrimary,
                  dotWidth: 10,
                  dotHeight: 10,
                ),
              ),
              InkWell(
                onTap: () {
                  if (_pageController.page == onboardingData.length - 1) {
                    context.go(Dashboard.routeName);
                    return;
                  }
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linear);
                },
                child: SvgPicture.asset(
                  SvgAssets.next,
                  width: 50.sp,
                ),
              )
            ],
          ).padOnly(bottom: 10.sp),
        ],
      ),
    );
  }
}

class OnboardingData {
  OnboardingData({
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final String image;

  @override
  String toString() =>
      'OnboardingData(title: $title, description: $description, image: $image)';
}
