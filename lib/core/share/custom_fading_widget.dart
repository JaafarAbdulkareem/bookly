import 'package:bookly/core/utils/scale_app.dart';
import 'package:flutter/material.dart';

class CustomFadingWidget extends StatefulWidget {
  const CustomFadingWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  State<CustomFadingWidget> createState() => _CustomFadingWidgetState();
}

class _CustomFadingWidgetState extends State<CustomFadingWidget>
    with SingleTickerProviderStateMixin { 
  late AnimationController _animationController;
  late Animation _animation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: ScaleApp.fadingDuring));
    _animation =
        Tween<double>(begin: ScaleApp.fadingBegin, end: ScaleApp.fadingEnd)
            .animate(_animationController);
    _animationController.repeat(reverse: true);
    _animationController.addListener(() {
      setState(() {});
    });
  }

@override
  void dispose() {
     _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _animation.value,
      child: widget.child,
    );
  }
}
