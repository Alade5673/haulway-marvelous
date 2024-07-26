import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:haulway_mobile/core/constants/app_colors.dart';
import 'package:haulway_mobile/core/constants/app_icons.dart';
import 'package:haulway_mobile/features/home/presentation/widget/home_card.dart';
import 'package:haulway_mobile/features/home/presentation/widget/profile_avatar.dart';
import 'package:haulway_mobile/shared/extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/home';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimary,
      appBar: AppBar(
        title: SvgPicture.asset(
          SvgAssets.hauls,
        ),
        centerTitle: true,
        elevation: 0,
        forceMaterialTransparency: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(
              leading: SvgPicture.asset(
                SvgAssets.search,
                colorFilter:
                    const ColorFilter.mode(Color(0xff7A7A7A), BlendMode.srcIn),
              ).pad(),
              elevation: WidgetStateProperty.resolveWith((value) => 0),
              backgroundColor:
                  WidgetStateProperty.resolveWith((_) => AppColors.kGray),
              hintText: 'Search for hauls',
              hintStyle: WidgetStateProperty.resolveWith(
                (_) => context.textBodyTheme?.copyWith(
                  color: const Color(0xff7A7A7A),
                ),
              ),
            ).padSymmetric(
              horizontal: 12,
            ),
            Gap(0.h),
            SvgPicture.asset(
              'assets/svg_icons/live.svg',
              width: 60.w,
            ).padOnly(left: 4, top: 14),
            SizedBox(
              width: 1.sw,
              height: 0.17.sh,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ProfileAvatar(),
              ),
            ),
            SizedBox(
              width: 1.sw,
              // height: 8.sh,
              child: GridView.builder(
                itemCount: 20,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                primary: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 280,
                ),
                itemBuilder: (context, index) => const HomeCard(),
              ),
            ).pad().padSymmetric(horizontal: 8),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: const Color(0xffFF0000),
            onPressed: () {},
            child: SvgPicture.asset(SvgAssets.broadcast),
          ),
          Gap(20.h),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
