import 'package:ishraq/core/my_shared.dart';

class AppTopPrayTime extends StatelessWidget {
  const AppTopPrayTime({
    super.key,
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
                '16 Jul, 2024',
                textAlign: TextAlign.start,
    
                style: Theme.of(
                  context,
                ).textTheme.labelMedium,
              ),
            ),
          ),
    
          Column(
            children: [
              Text(
                'Pray Time',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium,
              ),
              Text(
                'Pray Time',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge,
              ),
            ],
          ),
    
          SizedBox(
            width: 80.w,
            height: 50.h,
    
            child: Center(
              child: Text(
                textAlign: TextAlign.end,
                '09 Muh, 1446',
                style: Theme.of(
                  context,
                ).textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
