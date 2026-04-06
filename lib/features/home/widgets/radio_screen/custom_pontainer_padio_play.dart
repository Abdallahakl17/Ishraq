import 'package:ishraq/core/my_shared.dart';

class CustomContainerRadioPlay extends StatelessWidget {
  const CustomContainerRadioPlay({
    super.key,
    required this.name,
    required this.onPressedPlay,
    required this.onPressedMute,
    this.iconPlay,
    this.iconMute,
  });

  final String name;
  final VoidCallback? onPressedPlay;
  final VoidCallback? onPressedMute;
  final Widget? iconPlay;
  final Widget? iconMute;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(name, style: Theme.of(context).textTheme.bodyLarge),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onPressedPlay,
                    icon:
                        iconPlay ??
                        Icon(
                          Icons.play_arrow,
                          color: AppColorsLigth.black,
                          size: 35,
                        ),
                  ),
                  IconButton(
                    onPressed: onPressedMute,
                    icon:
                        iconMute ??
                        Icon(
                          Icons.volume_up,
                          color: AppColorsLigth.black,
                          size: 30,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
