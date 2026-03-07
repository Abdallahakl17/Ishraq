// import 'package:contact_app/core/my_shared.dart';
// import 'package:flutter/material.dart';
 
// class CustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;

//   const CustomButton({super.key, required this.text, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: Responsive.height(context, 0.0656),
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: AppColorsLigth.gold,
//           foregroundColor: AppColorsLigth.white,
//           elevation: 0,

//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(
//               Responsive.radius(context, 0.070),
//             ),
//           ),
//           overlayColor: Colors.transparent,
//         ),
//         child: Row(
//           children: [
//             Text(
//               text,
//               textAlign: TextAlign.center,
//               style: AppTextStyles.large(context),
//             ),
//             Spacer(),
//             IconButton(
//               onPressed: onPressed,
//               icon: Icon(
//                 Icons.arrow_forward,
//                 size: Responsive.width(context, 0.075),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
