import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_app2/components/coustom_bottom_nav_bar.dart';
import 'package:restaurant_app2/enums.dart';
import 'package:restaurant_app2/screens/Food_List/Thai_food/thai_food.dart';
import 'package:restaurant_app2/screens/HomeScreen/component/Features.dart';
import 'package:restaurant_app2/screens/HomeScreen/component/SearchRest.dart';
import 'package:restaurant_app2/screens/HomeScreen/component/appBar.dart';
import 'package:restaurant_app2/screens/HomeScreen/component/foodList.dart';
import 'package:restaurant_app2/screens/HomeScreen/component/section_title.dart';

// import 'package:restaurant_app2/screens/Restuarant/Thai_food/thai_food.dart';
import 'package:restaurant_app2/widgets/colors.dart';
import 'package:restaurant_app2/widgets/size_config.dart';
import 'package:restaurant_app2/widgets/style.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedFoodCard = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF3961ab),
                          shape: BoxShape.circle,
                        ),
                        // child: SvgPicture.asset("assets/icons/noti.svg"),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Welcome \nChatchadaporn",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    SearchBar(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: PrimaryText(
                        text: 'Categories',
                        fontWeight: FontWeight.w700,
                        size: 22,
                        color: Color(0xFF3961ab),
                      ),
                    ),
                    SizedBox(
                      height: 210,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: foodCategoryList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(left: index == 0 ? 25 : 0),
                          child: foodCategoryCard(
                              foodCategoryList[index]['imagePath'],
                              foodCategoryList[index]['name'],
                              index),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: SectionTitle(
                          title: "Popular Restuarent", press: () {}),
                    ),
                    ShowProduct(),
                    // PopularFood(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget foodCategoryCard(String imagePath, String name, int index) {
    return GestureDetector(
      onTap: () => {
        setState(
          () => {
            print(index),
            selectedFoodCard = index,
          },
        ),
      },
      child: Container(
        margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                selectedFoodCard == index ? AppColors.primary : AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.lighterGray,
                blurRadius: 15,
              )
            ]),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(imagePath, width: 50, color: Colors.black),
              PrimaryText(
                  text: name,
                  fontWeight: FontWeight.w800,
                  size: 20,
                  color: Colors.black),
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThaiFood()),
                    );
                  },
                  fillColor: selectedFoodCard == index
                      ? AppColors.white
                      : AppColors.tertiary,
                  shape: CircleBorder(),
                  child: Icon(Icons.chevron_right_rounded,
                      size: 20,
                      color: selectedFoodCard == index
                          ? AppColors.black
                          : AppColors.white))
            ],
          ),
        ),
      ),
    );
  }
}
