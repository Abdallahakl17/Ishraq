import 'package:ishraq/core/assets/shared/shared_prefs_helper.dart'    ;
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/on_boarding/models/onboarding_model.dart';
import 'package:ishraq/features/on_boarding/widgets/custom_button.dart';
import 'package:ishraq/features/on_boarding/widgets/custom_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
@override

void didChangeDependencies() {
  super.didChangeDependencies();

  for (var page in pages) {
    precacheImage(AssetImage(page.img), context);
  }
}
  void onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  List<OnBoardingModel> pages = [
    OnBoardingModel(
      img: AppAssetsImages.wellcomImage,
      title: AppString.welcomApp,
      titleDesc: '',
    ),
    OnBoardingModel(
      img: AppAssetsImages.kaabaImage,
      title: AppString.welcom,
      titleDesc: AppString.weAreExcited,
    ),
    OnBoardingModel(
      img: AppAssetsImages.quranAndSebhaImage,
      title: AppString.readQuran,
      titleDesc: AppString.readAndLord,
    ),
    OnBoardingModel(
      img: AppAssetsImages.prayImage,
      title: AppString.bearish,
      titleDesc: AppString.praise,
    ),
    OnBoardingModel(
      img: AppAssetsImages.micRadioImage,
      title: AppString.holyQuranRadio,
      titleDesc: AppString.listenToQuranRadio,
    ),
  ];

  int currentPage = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Column(
          children: [
            Image.asset(AppAssetsImages.logoImage),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller,
                itemCount: pages.length,
                onPageChanged: onPageChanged,
                itemBuilder: (context, index) {
                  return AnimatedPadding(
                    duration: const Duration(milliseconds: 400),
                    padding: EdgeInsets.symmetric(
                      horizontal: currentPage == index ? 0 : 30.w,
                    ),

                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            pages[index].img,
                            width: 400.w,
                            height: 415.h,
                          ),
                          SizedBox(height: 40.h),
                          Column(
                            children: [
                              Text(
                                pages[index].title,
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineMedium,
                              ),
                              if (pages[index].titleDesc.isNotEmpty)
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 30.h),
                                  child: Text(
                                    pages[index].titleDesc,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineSmall,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentPage != 0
                      ? CustomNavigationButton(
                          text: AppString.back,
                          onPressed: () {
                            controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                        )
                      : SizedBox(width: 80.w),

                  CustomPageIndicator(
                    pageCount: pages.length,
                    currentIndex: currentPage,
                  ),

                  CustomNavigationButton(
                    text: currentPage == pages.length - 1
                        ? AppString.finish
                        : AppString.next,
                    onPressed: () async {
                      if (currentPage < pages.length - 1) {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        await SharedPrefsHelper.instance.saveOnboardingStatus(
                          true,
                        );
                        if (!mounted) return;

                        Navigator.pushReplacementNamed(context, AppRoutes.home);
                      }
                    },
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
