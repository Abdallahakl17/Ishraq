import 'package:ishraq/core/assets/shared/shared_prefs_helper.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/home/screens/home_screen.dart';
import 'package:ishraq/features/on_boarding/screens/onboarding_screen.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized(); 
await  SharedPrefsHelper.init();
bool complete  = SharedPrefsHelper.instance.getOnboardingStatus();
  runApp(  MyApp(startPage:complete ?AppRoutes.home :AppRoutes.onBoarding ,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key ,required this .startPage});
  final String startPage;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.light,
          debugShowCheckedModeBanner: false,

          initialRoute: startPage ,
          routes: {
            AppRoutes.onBoarding: (context) => OnboardingScreen(),
            AppRoutes.home: (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
