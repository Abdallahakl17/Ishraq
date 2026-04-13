import 'dart:developer';

import 'package:ishraq/controller/hadith_controller.dart';
import 'package:ishraq/controller/radio_conreoller.dart';
import 'package:ishraq/controller/search_controller.dart';
import 'package:ishraq/controller/time_controller.dart';
import 'package:ishraq/core/routes/sebha_contoller.dart';
import 'package:ishraq/core/shared/shared_prefs_helper.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/home/screens/home_screen.dart';
import 'package:ishraq/features/on_boarding/screens/onboarding_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  FlutterError.onError = (details) {
    log('Flutter Error: $details');
  };

  bool complete = false;
  try {
    await SharedPrefsHelper.init();
    complete = SharedPrefsHelper.instance.getOnboardingStatus();
  } catch (e) {
    log("SharedPrefs init error: $e");
  }

  runApp(MyApp(startPage: complete ? AppRoutes.home : AppRoutes.onBoarding));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.startPage});
  final String startPage;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HadithController()),
        ChangeNotifierProvider(create: (_) => SebhaController()),
        ChangeNotifierProvider(create: (_) => RadioController()),
        ChangeNotifierProvider(
          create: (_) => TimeController(),
        ),
        ChangeNotifierProvider(create: (_) => SearchControllerQuran()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: AppTheme.light,
            debugShowCheckedModeBanner: false,
            initialRoute: startPage,
            routes: {
              AppRoutes.onBoarding: (_) => child ?? OnboardingScreen(),
              AppRoutes.home: (_) => child ?? HomeScreen(),
            },
          );
        },
      ),
    );
  }
}
