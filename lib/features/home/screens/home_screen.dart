import 'package:ishraq/core/my_shared.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  List<Widget> screens = [
    QuranScreen(),
    HadithScreen(),
    SebhaScreen(),
    RadioScreen(),
    TimeScreen(),
  ];
  int currentIndex = 0;
  void chanedIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: chanedIndex,
        selectedItemColor: AppColorsLigth.white,
        unselectedItemColor: AppColorsLigth.primaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColorsLigth.gold,
        items: [
          customContainerNavBar(
            imgName: AppAssetsIcons.qeuranIcon,
            label: AppString.quran,
            index: 0,
            currentIndex: currentIndex,
          ),
          customContainerNavBar(
            imgName: AppAssetsIcons.hadithIcon,
            label: AppString.hadith,
            index: 1,
            currentIndex: currentIndex,
          ),
          customContainerNavBar(
            imgName: AppAssetsIcons.sebhaIcon,
            label: AppString.sebha,
            index: 2,
            currentIndex: currentIndex,
          ),
          customContainerNavBar(
            imgName: AppAssetsIcons.radioIcon,
            label: AppString.radio,
            index: 3,
            currentIndex: currentIndex,
          ),
          customContainerNavBar(
            imgName: AppAssetsIcons.timeIcon,
            label: AppString.time,
            index: 4,
            currentIndex: currentIndex,
          ),
        ],
      ),
      body: IndexedStack(index: currentIndex, children: screens),
      // screens[currentIndex],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
