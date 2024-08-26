import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({Key? key,  this.size}): super(key: key);
  final double? size;
  final  defaultSize = 40.00;
  
  @override
  Widget build(BuildContext context) {
    return  SpinKitWanderingCubes(
  color: Colors.red,
  size: size ?? defaultSize,

   );
  }
}