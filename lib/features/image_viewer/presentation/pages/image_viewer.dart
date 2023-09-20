import 'package:flutter/material.dart';
import 'package:flutter_mark_3/features/image_viewer/presentation/widgets/view_image_from_asset.dart';

class ImageViewer extends StatefulWidget {
  const ImageViewer({super.key});

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Viewer"),),
      body: Column(
        children: [
          ShowAssetImage()
        ],
      ),
    );
  }
}
