import 'package:ishraq/controller/hadith_controller.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:provider/provider.dart';

// hadith_card.dart
class HadithCard extends StatelessWidget {
  final int index;
  const HadithCard({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HadithController>(context, listen: false);

    return FutureBuilder(
      future: controller.fetchHadith(index),
      builder: (context, snapshot) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            color: AppColorsLigth.gold,
            borderRadius: BorderRadius.circular(20.r),
            image: DecorationImage(
              image: AssetImage(AppAssetsImages.quranAndSebhaImage),
              opacity: 0.12,
            ),
          ),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppAssetsImages.angleLeftImage,
                    color: AppColorsLigth.black,
                  ),
                  Text(
                    "الحديث ${index}",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Image.asset(
                    AppAssetsImages.angleRigthImage,
                    color: AppColorsLigth.black,
                  ),
                ],
              ),

              // Body
              Expanded(
                child: Center(
                  child: switch (snapshot.connectionState) {
                    ConnectionState.waiting => CircularProgressIndicator(
                      color: AppColorsLigth.black,
                    ),
                    ConnectionState.done when snapshot.hasData => Text(
                      snapshot.data!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    _ => Text(
                      snapshot.error.toString(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  },
                ),
              ),

              // Footer
              Image.asset(AppAssetsImages.mosqaImage),
            ],
          ),
        );
      },
    );
  }
}
