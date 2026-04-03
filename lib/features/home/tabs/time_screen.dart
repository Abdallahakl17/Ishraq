import 'package:carousel_slider/carousel_slider.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/core/network/api_services.dart';
import 'package:ishraq/features/home/widgets/time_screen/app_card_pray_time.dart';
import 'package:ishraq/features/home/widgets/time_screen/azkar_card.dart';
import 'package:ishraq/features/home/widgets/time_screen/list_container_item_time_card.dart';
import 'package:ishraq/features/home/widgets/time_screen/next_pray_time.dart';
import 'package:ishraq/features/home/widgets/time_screen/time_bg.dart';

class TimeScreen extends StatelessWidget {
  TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TimeBackgroundLayer(),

          Padding(
            padding: EdgeInsets.only(
              top: 30.r,
              left: 20.r,
              right: 20.r,
              bottom: 20.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AppAssetsImages.logoImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  clipBehavior: Clip.none,

                  width: double.infinity,
                  height: 300.h,
                  decoration: BoxDecoration(
                    color: AppColorsLigth.ligthBrown,

                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssetsImages.cardtimtabImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppTopPrayTime(),
                        Center(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 128.h,
                              enlargeCenterPage: true,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,

                              enableInfiniteScroll: false,
                              viewportFraction: 0.28,
                              initialPage: 2,
                            ),
                            items: List.generate(5, (index) {
                              return ListContainerItemTimeCard();
                            }),
                          ),
                        ),
                        NextPrayRow(),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    AppString.azkar,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                Expanded(
                  child: AzkarCard(
                    onTapEnvening: () {
                      NetworkApiServices networkApiServices =
                          NetworkApiServices();
                      networkApiServices.getApi();
                    },
                    onTapMorning: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
