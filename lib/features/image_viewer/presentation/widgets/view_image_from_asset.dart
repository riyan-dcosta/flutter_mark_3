import 'package:flutter/material.dart';
import 'package:flutter_mark_3/constants/asset_path.dart';

class ShowAssetImage extends StatelessWidget {
  const ShowAssetImage({super.key});

  @override
  Widget build(BuildContext context) {
    print("ShowAssetImage CheckIfHost ${CheckIfHost().isHost}");
    return Image.asset(AssetPath.assetPath);
  }
}
