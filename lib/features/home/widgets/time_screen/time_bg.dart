import 'package:ishraq/core/my_shared.dart';

class TimeBackgroundLayer extends StatelessWidget {
  const TimeBackgroundLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssetsImages.timeBgImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColorsLigth.primaryColor.withAlpha(179),
                AppColorsLigth.primaryColor.withAlpha(255),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

