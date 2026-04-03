import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/core/validators/feilds/custom_textfeild.dart';
import 'package:ishraq/features/home/models/sura_items_model.dart';
import 'package:ishraq/features/home/screens/sura_deatails.dart';
import 'package:ishraq/features/home/widgets/sura_screen/custom_list_items_sura.dart';
import 'package:ishraq/features/home/widgets/custom_most_recent.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssetsImages.bgImageHome),
            fit: BoxFit.cover,
          ),
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),

                Align(
                  alignment: AlignmentGeometry.topCenter,

                  child: Image.asset(AppAssetsImages.logoImage),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: CustomTextField(
                    hintText: AppString.suraName,
                    prefixIcon: ImageIcon(
                      AssetImage(AppAssetsIcons.qeuranIcon),
                      color: AppColorsLigth.gold,
                    ),
                  ),
                ),
                Text(
                  AppString.mostRecently,
                  style: Theme.of(context).textTheme.labelMedium,
                ),

                CustomMostRecent(
                  nameSuraAr: 'Al-Anbiya',
                  nameSuraEn: 'الأنبياء',
                  numSuraRevres: '112',
                ),
                Text(
                  AppString.suraName,
                  style: Theme.of(context).textTheme.labelMedium,
                ),

                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SuraDetailsScreen(
                                surahNumber:
                                    SurahModel.suras[index].numSuraIndex,
                              ),
                            ),
                          );
                        },

                        child: CustomListItemsSura(
                          surahModel: SurahModel.suras[index],
                        ),
                      ),
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(),
                  itemCount: SurahModel.suras.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
