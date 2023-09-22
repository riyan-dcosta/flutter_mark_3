class CheckIfHost {
  bool isHost = false;

  static final _inst = CheckIfHost._internal();

  CheckIfHost._internal();

  factory CheckIfHost.isHost() {
    _inst.isHost = true;
    return _inst;
  }

  factory CheckIfHost() {
    return _inst;
  }
}

class AssetPath {
  AssetPath._();

  static final String assetPath = CheckIfHost().isHost
      ? "packages/flutter_mark_3/assets/images/halloween2015.jpg"
      : "assets/images/halloween2015.jpg";
}
