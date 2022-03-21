import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:nutrition_app/models/foodmodels.dart';

class DetailScreen extends StatefulWidget {
  final int id;
  DetailScreen(this.id);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
   late FoodData foodData;
   bool loading = true;
    @override
    void initState() {
      fetchData();
      super.initState();
    }
   Future<void> fetchData() async {
     var url =Uri.parse( "https://api.nal.usda.gov/fdc/v1/food/${widget.id}?api_key=DEMO_KEY");
     var response = await http.get(url);
     var decodedResponse = convert.jsonDecode(response.body);
     var foodData = FoodData.fromMap(decodedResponse);
     setState(() {
       var loading = false;
     });
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title:loading ? SizedBox.shrink(): Text("${foodData?.description??""}", style: TextStyle(fontSize: 20),),
       ),
       body: Container(
         child: loading ? CircularProgressIndicator(): Column(children: [
           Text("Portion: per 100 gm", style: TextStyle(fontSize: 25),),
           Container(
             child: ListView.builder(
                 itemCount: foodData == null?0: foodData.foodNutrients.length,
                 itemBuilder: (context,index){
                   return Text(
                     "${foodData.foodNutrients[index].nutrient.name}:",
                     style: TextStyle(fontSize: 25),);
             }),
           )
         ],),
       ),
     );
   }
}