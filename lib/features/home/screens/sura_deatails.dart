import 'package:ishraq/controller/sura_deatails_controller.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  final int surahNumber;

  const SuraDetailsScreen({super.key, required this.surahNumber});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SuraDetailsController()..loadSurah(surahNumber),
      child: Consumer<SuraDetailsController>(
        builder: (context, controller, _) {
          return Scaffold(
            appBar: AppBar(
              title: Text(controller.surah?.nameAr ?? 'Loading...'),
            ),
            body: controller.isLoading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(AppAssetsImages.angleLeftImage),
                                  Text(
                                    controller.surah!.nameAr,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineMedium,
                                  ),
                                  Image.asset(AppAssetsImages.angleRigthImage),
                                ],
                              ),
                              const SizedBox(height: 16),

                              ListView.separated(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.surah!.verses.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 5.h),
                                itemBuilder: (context, index) {
                                  final verse = controller.surah!.verses[index];
                                  return Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 2.h,
                                      ),
                                      child: Text(
                                        '${verse.textAr} (${verse.ayahNumber})',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.headlineSmall,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            AppAssetsImages.mosqaImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
