import 'package:electroniat/constants.dart';
import 'package:electroniat/screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                itemBuilder: (ctx, index) => ProductCard(
                  itemIndex: index,
                  products: products[index],
                  press: () {
                    Navigator.of(context).pushNamed(DetailsScreen.routeName,
                        arguments: {'selectedProductIndex': index});
                  },
                ),
                itemCount: products.length,
              )
            ],
          ))
        ],
      ),
    );
  }
}
