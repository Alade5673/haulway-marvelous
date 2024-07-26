import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:haulway_mobile/core/constants/app_colors.dart';
import 'package:haulway_mobile/shared/extensions.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.6.sh,
      width: 0.45.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: LayoutBuilder(builder: (context, constraint) {
        return Column(
          children: [
            Container(
              width: constraint.maxWidth,
              height: constraint.maxHeight * 0.68,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                    'https://images.freeimages.com/images/large-previews/73f/fashion-1437612.jpg?fmt=webp&w=500',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Spacer(),
            Text(
              'Beautiful royal dinner gown, the perfect fit for...',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: context.textBodyTheme?.copyWith(
                color: AppColors.kSecondary,
                fontWeight: FontWeight.w400,
                fontSize: constraint.maxWidth * 0.09,
              ),
            ).padOnly(left: 8, right: 4),
            Gap(4.h),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      'https://media.istockphoto.com/id/1488888738/photo/cyberpunk-headphones-black-woman-and-fashion-in-studio-holographic-beauty-and-vaporwave.webp?b=1&s=612x612&w=0&k=20&c=MAglGQg-l8XOBjlWjn3-LWSa0WGaYY6FfJnrBUHFB2Q='),
                ),
                Gap(4.w),
                Text(
                  'Rose Francis',
                  style: context.textBodyTheme?.copyWith(
                      color: AppColors.kSecondary,
                      fontSize: constraint.maxWidth * 0.1),
                )
              ],
            ).padOnly(left: 8, right: 4),
            Gap(4.h),
          ],
        );
      }),
    );
  }
}
