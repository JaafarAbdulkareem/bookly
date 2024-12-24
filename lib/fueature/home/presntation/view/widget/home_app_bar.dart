import 'package:bookly/core/route.dart';
import 'package:bookly/core/utils/icon_app.dart';
import 'package:bookly/core/utils/image_app.dart';
import 'package:bookly/core/utils/scale_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 4,
        top: 40,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.27,
            child: Image.asset(
              ImageApp.logo,
              fit: BoxFit.fill,
            ),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(RouteApp.searchView);
            },
            icon: const Icon(
              IconApp.search,
              size: ScaleApp.searchIcon,
            ),
          )
        ],
      ),
    );
  }
}
