import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Function()? onTap;

  const CategoryCard({
    super.key,
    required this.imageUrl,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height / 4,
        width: size.width / 2.4,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              elevation: 10,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              clipBehavior: Clip.hardEdge,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    height: 170,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    title,
                    style: Styles.headLineStyle3
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                ],
              ),
            )),
      ),
    );
  }
}
