import 'package:carousel_slider/carousel_slider.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/home/widgets/hadith_screen/hadith_card.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            opacity: 0.2,
            image: AssetImage(AppAssetsImages.hadithBgImage),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Column(
            children: [
              Image.asset(AppAssetsImages.logoImage),
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 618,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.75,
                    enableInfiniteScroll: true,
                  ),
                  items: List.generate(
                    50,
                    (index) => HadithCard(index: index + 1),
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
