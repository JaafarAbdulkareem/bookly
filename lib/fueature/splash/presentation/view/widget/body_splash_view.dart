import 'package:bookly/core/route.dart';
import 'package:bookly/core/utils/image_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:bookly/fueature/splash/presentation/view/widget/slide_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BodySplashView extends StatefulWidget {
  const BodySplashView({super.key});

  @override
  State<BodySplashView> createState() => _BodySplashViewState();
}

class _BodySplashViewState extends State<BodySplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  @override
  void initState() {
    super.initState();
    _slidingAnimation();
    _navigatorHome();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(ImageApp.logo),
        SlideText(slideAnimation: _slideAnimation),
      ],
    );
  }

  void _slidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: SpalshScale.secondTextSplash),
    );
    _slideAnimation = Tween<Offset>(
            begin: const Offset(
                SpalshScale.offsetXTextSplash, SpalshScale.offsetYTextSplash),
            end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();
  }

  void _navigatorHome() {
    Future.delayed(const Duration(seconds: ScaleApp.timeWaitingNavigation), () {
      // Get.to(
      //   () => const HomeView(),
      //   duration: const Duration(milliseconds: ScaleApp.timeNavigationView),
      //   transition: Transition.fade,
      // );
      if (!context.mounted) return;
      GoRouter.of(context).pushReplacement(RouteApp.homeView);
    });
  }
}
