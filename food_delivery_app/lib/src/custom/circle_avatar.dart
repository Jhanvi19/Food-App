import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    Key key,
    this.child,
    this.isIcon,
    this.backgroundColor,
    this.backgroundImage,
    this.foregroundImage,
    this.onBackgroundImageError,
    this.onForegroundImageError,
    this.foregroundColor,
    this.radius,
    this.minRadius,
    this.maxRadius,
  })  : assert(radius == null || (minRadius == null && maxRadius == null)),
        assert(backgroundImage != null || onBackgroundImageError == null),
        assert(foregroundImage != null || onForegroundImageError == null),
        super(key: key);

  final Widget child;
  final IconData isIcon;

  final Color backgroundColor;

  final Color foregroundColor;

  final ImageProvider backgroundImage;

  final ImageProvider foregroundImage;

  final ImageErrorListener onBackgroundImageError;

  final ImageErrorListener onForegroundImageError;

  final double radius;

  final double minRadius;

  final double maxRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFf7418c),
      ),
      child: Icon(
        isIcon,
        color: Colors.white,
      ),
      alignment: Alignment.center,
    );
  }
}
