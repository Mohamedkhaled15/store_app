// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 60),
        child: GridView.builder(
          clipBehavior: Clip.none,
            //used to give grid view style
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //num of columns
              crossAxisCount:2 ,
              childAspectRatio: 1.5 ,
              crossAxisSpacing: 10,
              mainAxisSpacing: 75

            ),
            itemBuilder: (context,index){
          return  CustomCard();
        }),
      )
    );
  }
}
