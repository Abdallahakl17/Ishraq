import 'package:flutter/gestures.dart';
import 'package:ishraq/controller/radio_contoller.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/home/widgets/Custom_Container_Radio_Play.dart';
import 'package:ishraq/features/home/widgets/custom_selected_radio_tab.dart';
import 'package:provider/provider.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          elevation: 0,
          flexibleSpace: Center(
            child: Image.asset(
              AppAssetsImages.logoImage,
              height: 170.h,
              fit: BoxFit.cover,
            ),
          ),

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              color: Colors.transparent,

              child: TabBar(
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(text: "Radio "),
                  Tab(text: "Reciters"),
                ],
              ),

              // bottom: PreferredSize(
            ),
          ),
        ),

        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssetsImages.quranReadImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColorsLigth.primaryColor.withAlpha(179),
                      AppColorsLigth.primaryColor.withAlpha(255),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),

              child: TabBarView(
                children: [
                  Column(
                    children: [
                      CustomContainerRadioPlay(),
                      CustomContainerRadioPlay(),
                    ],
                  ),

                  Column(
                    children: [
                      CustomContainerRadioPlay(),
                      CustomContainerRadioPlay(),
                    ],
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
