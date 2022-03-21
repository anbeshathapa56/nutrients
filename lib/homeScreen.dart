import 'package:flutter/material.dart';
import 'package:nutrition_app/detailScreen.dart';
import 'package:nutrition_app/foodlist.dart';


import 'foodlist.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var foodlist = FoodList(id: 0, name: 'Food', foodCategory: 'all');
  List<FoodList> _foodList = [];
  @override
  void initState() {
    _foodList = _foodList;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food Nutrients",
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: ListView.builder(
          itemCount: _foodList.length,
          itemBuilder: (context, index) {
        return InkWell(onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> DetailScreen(_foodList[index].id)),
          );
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${_foodList[index].name}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "${_foodList[index].foodCategory}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}


