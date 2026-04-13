import 'package:flutter/material.dart';
import 'package:ishraq/controller/radio_conreoller.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/home/widgets/radio_screen/custom_pontainer_padio_play.dart';
import 'package:provider/provider.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  bool _isInit = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_isInit) {
      _isInit = false;
      context.read<RadioController>().fetchRadios();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          elevation: 0,
          flexibleSpace: Center(
            child: Image.asset(AppAssetsImages.logoImage, fit: BoxFit.cover),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(5.h),
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 20),
              child: TabBar(
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(text: "Radio"),
                  Tab(text: "Reciters"),
                ],
              ),
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
                  Consumer<RadioController>(
                    builder: (context, controller, child) {
                      // ================= LOADING =================
                      if (controller.isLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      // ================= ERROR =================
                      if (controller.errorMessage != null) {
                        return Center(
                          child: Text(
                            controller.errorMessage!,
                            style: const TextStyle(color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        );
                      }

                      // ================= EMPTY =================
                      if (controller.radios.isEmpty) {
                        return const Center(child: Text("No radios available"));
                      }

                      // ================= LIST =================
                      return ListView.builder(
                        itemCount: controller.radios.length,
                        itemBuilder: (context, index) {
                          final radio = controller.radios[index];

                          final isCurrent =
                              controller.currentRadio?.id == radio.id;

                          return CustomContainerRadioPlay(
                            name: radio.name,
                            onPressedPlay: () {
                              if (isCurrent && controller.isPlaying) {
                                controller.stopRadio();
                              } else {
                                controller.playRadio(radio);
                              }
                            },
                            onPressedMute: controller.muteSound,
                            iconPlay: Icon(
                              isCurrent && controller.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: AppColorsLigth.black,
                              size: 35.r,
                            ),
                            iconMute: Icon(
                              controller.isMuted
                                  ? Icons.volume_off
                                  : Icons.volume_up,
                              color: AppColorsLigth.black,
                              size: 30.r,
                            ),
                          );
                        },
                      );
                    },
                  ),

                  const Center(child: Text("Reciters")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
