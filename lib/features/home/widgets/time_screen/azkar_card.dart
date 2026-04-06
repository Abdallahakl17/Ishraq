import 'package:ishraq/core/my_shared.dart';

class AzkarCard extends StatelessWidget {
  AzkarCard({super.key, this.onTapEnvening, this.onTapMorning});
  void Function()? onTapEnvening;
  void Function()? onTapMorning;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onTapEnvening,
            child: Image.asset(
              AppAssetsImages.eveningAzkarImage,
              height: 259.h,
              width: 185.w,
            ),
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: GestureDetector(
            onTap: onTapMorning,

            child: Image.asset(
              AppAssetsImages.morningAzkarImage,
              height: 259.h,
              width: 185.w,
            ),
          ),
        ),
      ],
    );
  }
}
