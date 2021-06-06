import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrition_app/Models/Item.dart';
import 'package:nutrition_app/components/app_bar.dart';
import 'package:nutrition_app/constants.dart';

import 'components/ingredients.dart';
import 'components/price_and_buy.dart';
import 'components/qty_counter.dart';
import 'components/title.dart';
import 'components/vitamins.dart';

class DetailsScreen extends StatelessWidget {
  final Item item;

  const DetailsScreen({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(
        context,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
        title: 'Detail',
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/dots.svg'),
            onPressed: () {}
          )
        ]
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 5),
                topRight: Radius.circular(kDefaultPadding * 5),
              ),
              color: Color(item.color)
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleBar(item: item),

                    SizedBox(height: kDefaultPadding),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Detail',
                          style: TextStyle(
                            fontSize: 18
                          ),
                        ),

                        QtyCounter(),
                      ],
                    ),

                    SizedBox(height: kDefaultPadding),

                    Text(
                      item.description,
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),

                    SizedBox(height: kDefaultPadding),

                    Vitamins(item: item),

                    SizedBox(height: kDefaultPadding),

                    Text(
                      'Ingredients',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),

                    SizedBox(height: kDefaultPadding),

                    Ingredients(item: item),

                    SizedBox(height: kDefaultPadding * 2),

                    PriceAndBuy(item: item)
                  ],
                ),
              ),
            ),
          ),

          Hero(
            tag: item.id,
            child: Image.asset(
              item.image,
              height: size.height * 0.4,
              fit: BoxFit.fitHeight,
            )
          ),
        ],
      ),
    );
  }
}