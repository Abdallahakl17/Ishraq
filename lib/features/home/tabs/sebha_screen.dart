import 'package:ishraq/core/my_shared.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  int addRotated = 0;
  int currentZakrIndex = 0;
  List<String> zakrAllah = [
    AppString.subhanAllah,
    AppString.alhamdulillah,
    AppString.laIlahaIllallah,
    AppString.allahuAkbar,
  ];
  void changedSebha() {
    setState(() {
      counter++;
      addRotated++;

      if (counter >= 34) {
        counter = 0;
        currentZakrIndex++;
        if (currentZakrIndex >= zakrAllah.length) {
          currentZakrIndex = 0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                      angle: addRotated * 0.1,

                      child: InkWell(
                        onTap: changedSebha,
                        child: FittedBox(
                          child: Transform.translate(
                            offset: Offset(0, -8),
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
                          zakrAllah[currentZakrIndex],
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          counter.toString(),
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
