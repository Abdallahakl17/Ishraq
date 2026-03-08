import 'package:ishraq/core/my_shared.dart';

class CustomPageIndicator extends StatelessWidget {
  final int pageCount;
  final int currentIndex;

  const CustomPageIndicator({
    super.key,
    required this.pageCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pageCount, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: currentIndex == index ? 24.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? AppColorsLigth.gold
                : AppColorsLigth.grey,
            borderRadius: BorderRadius.circular(4.r),
          ),
        );
      }),
    );
  }
}
