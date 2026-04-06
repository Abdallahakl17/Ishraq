import 'package:ishraq/core/my_shared.dart';
import 'package:ishraq/core/routes/sebha_contoller.dart';
import 'package:provider/provider.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SebhaController>();

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssetsImages.backgroundImage,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              children: [
                SizedBox(height: 14.h),

                Center(
                  child: Image.asset(
                    AppAssetsImages.logoImage,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  AppString.nameAllah,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20.h),

                Image.asset(
                  AppAssetsImages.rangSebhaImage,
                  width: 145.w,
                  height: 86.h,
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: controller.addRotated * 0.1,

                      child: InkWell(
                        onTap: controller.changedSebha,
                        child: FittedBox(
                          child: Transform.translate(
                            offset: Offset(0, -8.h),
                            child: Image.asset(
                              fit: BoxFit.cover,
                              AppAssetsImages.sebhaBodyImage,

                              height: 381.w,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          controller.zakrAllah[controller.currentZakrIndex],
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          controller.counter.toString(),
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
