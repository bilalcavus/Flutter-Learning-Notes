import 'package:flutter/material.dart';
import 'package:learning_flutter/product/global/resources_context.dart';
import 'package:provider/provider.dart';
class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          context.read<ResourcesContext>().clear();
        }, icon: Icon(Icons.remove))],
        title: Text(context.read<ResourcesContext>().resourcesModel?.data?.length.toString() ?? ''),),
      body: ImagePaths.image_demos_collections.toWidget(),
    );
  }
}

enum ImagePaths {

  image_demos_collections
}

extension ImagePathExtension on ImagePaths {
  String path(){
    return 'assets/$name.png';
  }

  Widget toWidget() {
    return Image.asset(path(), height: 100);
  }
}

