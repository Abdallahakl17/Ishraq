import 'package:carousel_slider/carousel_slider.dart';
import 'package:ishraq/controller/time_controller.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/home/widgets/time_screen/app_card_pray_time.dart';
import 'package:ishraq/features/home/widgets/time_screen/azkar_card.dart';
import 'package:ishraq/features/home/widgets/time_screen/list_container_item_time_card.dart';
import 'package:ishraq/features/home/widgets/time_screen/next_pray_time.dart';
import 'package:ishraq/features/home/widgets/time_screen/time_bg.dart';
import 'package:provider/provider.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<TimeController>();
    final model = controller.prayerModel;

    if (model == null) {
      return const Center(child: CircularProgressIndicator());
    }
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
                        AppTopPrayTime(
                          gregorianDate: model.gregorianDate,
                          weekday: model.weekday,
                          hijriDate:
                              '${model.hijriDay} ${model.hijriMonth.trim().substring(0, 3)} ${model.hijriYear}',
                        ),
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
                            items: model.prayers.map((prayer) {
                              return ListContainerItemTimeCard(
                                prayerName: prayer.name,
                                time: controller.formatTime(prayer.time),
                                period: controller.getPeriod(prayer.time),
                              );
                            }).toList(),
                          ),
                        ),
                        NextPrayRow(
                          iconData: IconButton(
                            onPressed: controller.muteSound,
                            icon: Icon(
                              controller.isMuted
                                  ? Icons.volume_off
                                  : Icons.volume_up,
                              color: AppColorsLigth.black,
                            ),
                          ),

                          remainingTime: controller.getNextPrayer() != null
                              ? controller.formatTime(
                                  controller.getNextPrayer()!.time,
                                )
                              : "",
                        ),
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
                      ();
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
