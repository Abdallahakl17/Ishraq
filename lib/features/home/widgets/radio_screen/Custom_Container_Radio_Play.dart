import 'package:ishraq/core/my_shared.dart';

class CustomContainerRadioPlay extends StatelessWidget {
  const CustomContainerRadioPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: 133.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColorsLigth.gold,
        borderRadius: BorderRadius.circular(20.r),
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          colorFilter: ColorFilter.mode(
            AppColorsLigth.primaryColor.withAlpha(250),
            BlendMode.srcATop,
          ),
          image: AssetImage(AppAssetsImages.mosqaImage),
          fit: BoxFit.contain,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 13.h),
        child: Column(
          children: [
            Expanded(
              child: Text('data', style: Theme.of(context).textTheme.bodyLarge),
            ),
            Expanded(
              child: Icon(
                Icons.play_arrow,
                color: AppColorsLigth.black,
                size: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
