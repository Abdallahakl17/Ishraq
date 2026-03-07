 

import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          initialRoute: AppRoutes.home,
          routes: {AppRoutes.home: (context) => child!},
        );
      },
      child:   HomeScreen(),
    );
  }
}
