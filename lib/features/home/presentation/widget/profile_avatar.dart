import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:haulway_mobile/core/constants/app_colors.dart';
import 'package:haulway_mobile/shared/extensions.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45.r,
          backgroundColor: Colors.red,
          child: CircleAvatar(
            radius: 40.r,
            backgroundImage: const CachedNetworkImageProvider(
                'https://media.istockphoto.com/id/1488888738/photo/cyberpunk-headphones-black-woman-and-fashion-in-studio-holographic-beauty-and-vaporwave.webp?b=1&s=612x612&w=0&k=20&c=MAglGQg-l8XOBjlWjn3-LWSa0WGaYY6FfJnrBUHFB2Q='),
          ),
        ),
        Gap(2.h),
        Text(
          'Username',
          style: context.textBodyTheme?.copyWith(
            fontSize: 12.sp,
            color: AppColors.kSecondary,
          ),
        )
      ],
    ).pad(4);
  }
}
