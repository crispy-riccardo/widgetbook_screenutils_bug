import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_test/widgetbook.directories.g.dart';

void main() {
  runApp(const MyApp());
}

@widgetbook.App()
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              data: ThemeData.light().copyWith(
                textTheme: TextTheme(
                  headlineLarge: TextStyle(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w700,
                    height: 60 / 48,
                    color: const Color(0xFF000000),
                  ),
                  headlineMedium: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    height: 40 / 32,
                    color: const Color(0xFF000000),
                  ),
                  headlineSmall: TextStyle(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.w700,
                    height: 35 / 35,
                    color: const Color(0xFF000000),
                  ),
                  titleLarge: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    height: 30 / 24,
                    color: const Color(0xFF000000),
                  ),
                  titleMedium: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    height: 25 / 20,
                    color: const Color(0xFF000000),
                  ),
                  titleSmall: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    height: 23 / 18,
                    color: const Color(0xFF000000),
                  ),
                  bodyLarge: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    height: 24 / 16,
                    color: const Color(0xFF000000),
                  ),
                  bodyMedium: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    height: 24 / 16,
                    color: const Color(0xFF000000),
                  ),
                  bodySmall: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                    height: 24 / 16,
                    color: const Color(0xFF000000),
                  ),
                  labelLarge: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    height: 20 / 14,
                    color: const Color(0xFF000000),
                  ),
                  labelMedium: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 20 / 14,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
              name: 'Light Autumn Theme',
            ),
          ],
        ),
        BuilderAddon(
          name: 'ScreenUtil',
          builder: (context, child) {
            return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              // This is needed to use the workbench [MediaQuery]
              useInheritedMediaQuery: true,
              builder: (context, child) => child!,
              child: child,
            );
          },
        ),
      ],
      directories: directories,
    );
  }
}
