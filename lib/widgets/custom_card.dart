import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_api_app/models/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    super.key,
  });

  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 25,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                offset: Offset(1, 1))
          ]),
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    product.title.substring(0,7),

                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         '\$ ${product.price.toString()}',
                          style: const TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        const Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
        Positioned(
            right: 32,
            top: -60,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            )),
        // Positioned(
        //
        //     left: 50,
        //     right: 0,
        //
        //     child: FlutterLogo(size: 100)),
      ],
    );
  }
}
