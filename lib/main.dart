import 'package:ishraq/controller/hadith_controller.dart';
import 'package:ishraq/controller/radio_contoller.dart';
import 'package:ishraq/core/shared/shared_prefs_helper.dart';
import 'package:ishraq/core/my_shared.dart';
 import 'package:ishraq/features/home/screens/home_screen.dart';
 import 'package:ishraq/features/on_boarding/screens/onboarding_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsHelper.init();
  bool complete = SharedPrefsHelper.instance.getOnboardingStatus();
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
        ChangeNotifierProvider(create: (_) => RadioContoller()),
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
              AppRoutes.onBoarding: (context) => OnboardingScreen(),
              AppRoutes.home: (context) => HomeScreen(),
            },
          );
        },
      ),
    );
  }
}