import 'package:electroniat/constants.dart';
import 'package:electroniat/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_dot.dart';
import 'product_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody(Product productItema, {Key key, this.productIndex})
      : super(key: key);
  final int productIndex;

  @override
  Widget build(BuildContext context) {
    List<Product> product;

    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product[productIndex].image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const ColorDot(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),
                    const ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),
                    const ColorDot(
                      fillColor: Colors.amber,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product[productIndex].title,
                  style: GoogleFonts.almarai(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  ' السعر : \$${product[productIndex].price}',
                  style: GoogleFonts.almarai(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 8, right: kDefaultPadding * 1.6),
          child: Text(
            product[productIndex].description,
            style: GoogleFonts.almarai(
                textStyle: Theme.of(context).textTheme.subtitle1,
                fontSize: 22,
                color: Colors.white),
          ),
        ),
      ],
    );
  }
}
