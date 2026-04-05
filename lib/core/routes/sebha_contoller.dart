import 'package:ishraq/core/my_shared.dart';

class SebhaController extends ChangeNotifier {
  int counter = 0;
  List<String> zakrAllah = [
    AppString.subhanAllah,
    AppString.alhamdulillah,
    AppString.laIlahaIllallah,
    AppString.allahuAkbar,
  ];

  int addRotated = 0;
  int currentZakrIndex = 0;
  void changedSebha() {
    counter++;
    addRotated++;
     if (counter >= 34) {
      counter = 0;
      currentZakrIndex++;
      if (currentZakrIndex >= zakrAllah.length) {
        currentZakrIndex = 0;
      }
    }
 notifyListeners();  } 
}
