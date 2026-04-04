import 'package:ishraq/core/my_shared.dart';

class AppTopPrayTime extends StatelessWidget {
  final String gregorianDate;
  final String weekday;
  final String hijriDate;

  const AppTopPrayTime({
    super.key,
    required this.gregorianDate,
    required this.weekday,
    required this.hijriDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 80.w,
            height: 50.h,
            child: Center(
              child: Text(
                gregorianDate,

                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),

          Column(
            children: [
              Text(
                'Pray Time',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                weekday,

                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),

          SizedBox(
            width: 61.w,
            height: 50.h,
            child: Center(
              child: Text(
                
                hijriDate,

                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}