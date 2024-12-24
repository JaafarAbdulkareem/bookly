import 'package:bookly/core/route.dart';
import 'package:bookly/fueature/home/presntation/view/widget/best_saller_book_detail.dart';
import 'package:bookly/core/share/book_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSallerBookItem extends StatelessWidget {
  const BestSallerBookItem({super.key, this.image = ""});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () async {
          GoRouter.of(context).push(RouteApp.bookDetailView);
        },
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
          child:  Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: BookItemWidget(
                  image: image ,
                ),
              ),
              const Flexible(child: BestSallerBookDetail())
            ],
          ),
        ),
      ),
    );
  }
}
