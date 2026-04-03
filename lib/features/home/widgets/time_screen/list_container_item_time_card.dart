import 'package:ishraq/core/my_shared.dart';

class ListContainerItemTimeCard extends StatelessWidget {
  const ListContainerItemTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104.w,
      height: 128.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColorsLigth.primaryColor.withAlpha(255),
            AppColorsLigth.ligthGold.withAlpha(255),
          ],
        ),
        borderRadius: BorderRadius.circular(20.r),
        color: AppColorsLigth.primaryColor,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Aser', style: Theme.of(context).textTheme.labelMedium),
            Text(
              '04:38',
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.copyWith(color: AppColorsLigth.white),
            ),
            Text('PM', style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}
