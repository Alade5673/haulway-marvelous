import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haulway_mobile/core/constants/app_colors.dart';
import 'package:haulway_mobile/core/constants/app_icons.dart';
import 'package:haulway_mobile/features/dashboard/provider/dashboard_provider.dart';
import 'package:haulway_mobile/features/home/presentation/home_screen.dart';
import 'package:haulway_mobile/shared/extensions.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});
  static const routeName = '/dashboard';
  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomeScreen(),
        Center(
          child: Text(
            'Comming soon',
            style: context.textTitleTheme,
          ),
        ),
        Center(
          child: Text(
            'Comming soon',
            style: context.textTitleTheme,
          ),
        ),
        Center(
          child: Text(
            'Comming soon',
            style: context.textTitleTheme,
          ),
        ),
      ][ref.watch(dashboardProvider)],
      backgroundColor: AppColors.kPrimary,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(fontSize: 0),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
        onTap: ref.read(dashboardProvider.notifier).changeIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.kPrimary,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAssets.home,
              colorFilter: ref.watch(dashboardProvider) == 0
                  ? const ColorFilter.mode(
                      AppColors.kSecondary,
                      BlendMode.srcIn,
                    )
                  : null,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAssets.search,
              colorFilter: ref.watch(dashboardProvider) == 1
                  ? const ColorFilter.mode(
                      AppColors.kSecondary,
                      BlendMode.srcIn,
                    )
                  : null,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgAssets.message,
              colorFilter: ref.watch(dashboardProvider) == 2
                  ? const ColorFilter.mode(
                      AppColors.kSecondary,
                      BlendMode.srcIn,
                    )
                  : null,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                  'https://media.istockphoto.com/id/1488888738/photo/cyberpunk-headphones-black-woman-and-fashion-in-studio-holographic-beauty-and-vaporwave.webp?b=1&s=612x612&w=0&k=20&c=MAglGQg-l8XOBjlWjn3-LWSa0WGaYY6FfJnrBUHFB2Q='),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
