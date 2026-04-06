import 'package:ishraq/controller/search_controller.dart';
import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/core/validators/feilds/custom_textfeild.dart';
import 'package:ishraq/features/home/models/sura_items_model.dart';
import 'package:ishraq/features/home/screens/sura_deatails.dart';
import 'package:ishraq/features/home/widgets/sura_screen/custom_list_items_sura.dart';
import 'package:provider/provider.dart';

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
                  alignment: Alignment.topCenter,
                  child: Image.asset(AppAssetsImages.logoImage),
                ),

                /// Search Field
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: CustomTextField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      context.read<SearchControllerQuran>().searchSura(value);
                    },
                    hintText: AppString.suraName,
                    prefixIcon: ImageIcon(
                      AssetImage(AppAssetsIcons.qeuranIcon),
                      color: AppColorsLigth.gold,
                    ),
                  ),
                ),

                /// Title
                Text(
                  AppString.suraName,
                  style: Theme.of(context).textTheme.labelMedium,
                ),

                Consumer<SearchControllerQuran>(
                  builder:
                      (
                        BuildContext context,
                        SearchControllerQuran controller,
                        Widget? child,
                      ) {
                        if (controller.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (controller.searchText.isNotEmpty &&
                            controller.filteredSuras.isEmpty) {
                          return Padding(
                            padding: EdgeInsets.only(top: 40.h),
                            child: const Center(child: Text("لا توجد نتائج")),
                          );
                        }

                        final suraList = controller.searchText.isEmpty
                            ? SurahModel.suras
                            : controller.filteredSuras;

                        return ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: suraList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => SuraDetailsScreen(
                                      surahNumber: suraList[index].numSuraIndex,
                                    ),
                                  ),
                                );
                              },

                              child: CustomListItemsSura(
                                surahModel: suraList[index],
                              ),
                            );
                          },

                          separatorBuilder: (_, _) => const Divider(),
                        );
                      },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
