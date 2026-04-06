import 'package:ishraq/core/my_shared.dart';

class ListContainerItemTimeCard extends StatelessWidget {
  final String prayerName;
  final String time;
  final String period;

  const ListContainerItemTimeCard({
    super.key,
    required this.prayerName,
    required this.time,
    required this.period,
  });

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
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(prayerName, style: Theme.of(context).textTheme.titleMedium),

            Text(
              time,
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.copyWith(color: AppColorsLigth.white),
            ),

            Text(period, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}
