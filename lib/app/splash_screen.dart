import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:haulway_mobile/core/constants/app_icons.dart';
import 'package:haulway_mobile/core/constants/app_images.dart';
import 'package:haulway_mobile/features/onboarding/onboarding.dart';
import 'package:haulway_mobile/shared/extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = '/';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 3), () {
        context.go(OnboardingScreen.routeName);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageAssets.splash,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: SvgPicture.asset(SvgAssets.splashText)
                  .padSymmetric(horizontal: 8.sp),
            ),
            const Spacer(),
            Text(
              'from',
              style: context.textBodyTheme,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                SvgAssets.grascope,
                width: 100.w,
              ),
            ),
            Gap(50.h),
          ],
        ),
      ),
    );
  }
}
