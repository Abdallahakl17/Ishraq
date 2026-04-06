import 'package:ishraq/core/my_shared.dart';

class CustomMostRecent extends StatelessWidget {
  CustomMostRecent({
    super.key,
    required this.nameSuraAr,
    required this.nameSuraEn,
    required this.numSuraRevres,
  });
  String nameSuraAr;
  String nameSuraEn;
  String numSuraRevres;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        padding: EdgeInsets.all(7.r),
        height: 150.h,
        width: 283.w,
        decoration: BoxDecoration(
          color: AppColorsLigth.gold,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 7.h, bottom: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameSuraEn,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    nameSuraAr,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    numSuraRevres,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                AppAssetsImages.quranRescentImage,
                fit: BoxFit.cover,
                height: 136.h,
                width: 150.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
