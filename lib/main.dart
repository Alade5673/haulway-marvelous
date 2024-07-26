import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haulway_mobile/app/app.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
      DevicePreview(builder: (context) => const ProviderScope(child: App())));
}
