import 'package:ishraq/core/my_shared.dart';

class NextPrayRow extends StatelessWidget {
  const NextPrayRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('Next Pray - 04:38'),
          SizedBox(width: 70.w),
          Icon(Icons.volume_off, color: AppColorsLigth.black),
        ],
      ),
    );
  }
}
