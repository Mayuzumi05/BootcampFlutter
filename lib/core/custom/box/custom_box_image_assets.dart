import 'package:flutter/material.dart';

class CustomBoxImageAssets extends StatelessWidget {
  const CustomBoxImageAssets({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.child,
    required this.urlImage,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final String urlImage;
  final Widget? child;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: width ?? double.infinity,
      width: height ?? 40,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(urlImage)
        )
      ),
      child: child,
    );
  }
}