import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/features/home/models/sura_items_model.dart';

class CustomListItemsSura extends StatelessWidget {
  CustomListItemsSura({super.key, required this.surahModel});
  SurahModel surahModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.center,

        children: [
          ImageIcon(AssetImage(AppAssetsIcons.numberSuraIcon), size: 52.r),
          Positioned(
            child: Text(
              surahModel.numSuraIndex.toString(),
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontSize: 14.sp),
            ),
          ),
        ],
      ),
      title: Text(surahModel.nameSuraEn),
      trailing: Text(surahModel.nameSuraAr),
      subtitle: Text(surahModel.numSuraRevres),
    );
  }
}
