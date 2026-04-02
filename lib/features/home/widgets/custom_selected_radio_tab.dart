
import 'package:ishraq/core/my_shared.dart';

class CustomTabSelected extends StatelessWidget {
  const CustomTabSelected({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });
 final bool isSelected;
 final void Function() onTap;
 final String title;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,

        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected ? AppColorsLigth.gold : AppColorsLigth.primaryColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: Text(
            title,
            style: isSelected ? theme.displaySmall : theme.labelMedium,
          ),
        ),
      ),
    );
  }
}
