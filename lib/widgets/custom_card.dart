
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

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

          child: const Card(
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HandBag Lv',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$255',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        Icon(
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

            child: Image.network('https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',height: 100)),
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
