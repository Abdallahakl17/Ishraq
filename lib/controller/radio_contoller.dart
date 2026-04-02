import 'package:ishraq/core/my_shared.dart';

class RadioContoller  extends ChangeNotifier{
  int selectedIndex = 0;
  void changeSelected(int value){
    selectedIndex = value;
    notifyListeners();
  }
}