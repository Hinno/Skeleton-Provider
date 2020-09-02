import 'package:skeletonprovider/skeletonprovider.dart';

class CountProvider extends SkeletonProvider {
  var _count = 0;
  var title = "";
  get count => _count;

  incrementCounter() {
    _count++;
    notifyListeners();
  }

  updateTitle() {
    title = "Flutter Demo Home Page";
  }
}
