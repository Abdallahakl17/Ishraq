import 'package:ishraq/controller/hadith_controller.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:provider/provider.dart';

class HadithCard extends StatelessWidget {
  final int index;
  const HadithCard({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HadithController>(context, listen: false);

    return FutureBuilder(
      future: controller.fetchHadith(index),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        return Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            color: AppColorsLigth.gold,
            borderRadius: BorderRadius.circular(20.r),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                AppColorsLigth.primaryColor.withAlpha(250),
                BlendMode.srcATop,
              ),
              image: AssetImage(AppAssetsImages.quranAndSebhaImage),
              fit: BoxFit.cover,
              opacity: 0.20,
            ),
          ),

          child: Column(
            children: [
              /// Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppAssetsImages.angleLeftImage,
                    color: AppColorsLigth.black,
                  ),

                  Expanded(
                    child: Center(
                      child: Text(
                        snapshot.data!["title"]!,
                        style: Theme.of(context).textTheme.displaySmall!,
                      ),
                    ),
                  ),

                  Image.asset(
                    AppAssetsImages.angleRigthImage,
                    color: AppColorsLigth.black,
                  ),
                ],
              ),

              SizedBox(height: 10.h),

               Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      snapshot.data!["content"]!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.h),

              Image.asset(AppAssetsImages.mosqaImage, fit: BoxFit.cover),
            ],
          ),
        );
      },
    );
  }
}
