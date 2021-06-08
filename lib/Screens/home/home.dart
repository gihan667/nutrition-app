import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_app/Models/Item.dart';
import 'package:nutrition_app/Screens/home/components/categories.dart';
import 'package:nutrition_app/Screens/home/components/item_card.dart';
import 'package:nutrition_app/components/app_bar.dart';
import 'package:nutrition_app/components/bottom_nav.dart';
import 'package:nutrition_app/constants.dart';

import 'components/filter.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        leading: Transform.translate(
          offset: Offset(kDefaultPadding * 0.5, 0),
          child: IconButton(
            icon: Image.asset('assets/images/user.png'),
            onPressed: () {}
          )
        ),
        title: '',
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/notification.svg'),
            onPressed: () {}
          )
        ]
      ),
      bottomNavigationBar: BottomNavBar(),
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          // bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find the Best\nHealth for You',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),
              ),

              SizedBox(height: kDefaultPadding),

              SearchBar(),

              Row(
                children: [

                  FilterButton(
                    tap: () {},
                  ),

                  Expanded(child: Categories())
                  
                ]
              ),

              SizedBox(height: kDefaultPadding),

              Text(
                'Popular',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: kDefaultPadding),

              StaggeredGridView.countBuilder(
                 padding: EdgeInsets.all(0),
                 crossAxisCount: 2,
                 itemCount: demoItems.length,
                 crossAxisSpacing: 10,
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 mainAxisSpacing: 0,
                 itemBuilder: (context, index) {
                   return ItemCard(item: demoItems[index], index: index);
                 },
                 staggeredTileBuilder: (index) => StaggeredTile.fit(1),
               ),
            ],
          ),
        ),
      ),
    );
  }
}