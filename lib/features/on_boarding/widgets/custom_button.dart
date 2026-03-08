import 'package:ishraq/core/my_shared.dart';

class CustomNavigationButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomNavigationButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      child: Text(text, style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}
