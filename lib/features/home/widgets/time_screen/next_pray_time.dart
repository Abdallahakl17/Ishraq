import 'package:ishraq/core/my_shared.dart';

class NextPrayRow extends StatelessWidget {
  final String remainingTime;

  const NextPrayRow({super.key, required this.remainingTime});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text('Next Pray - ', style: Theme.of(context).textTheme.bodyLarge),
          Text(remainingTime, style: Theme.of(context).textTheme.bodyMedium),
          Spacer(),
          Icon(Icons.volume_off, color: AppColorsLigth.black),
        ],
      ),
    );
  }
}
