import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_2_2_test/models/items.dart';
import 'package:flutter_2_2_test/utils/routes.dart';
import 'package:flutter_2_2_test/widgets/ItemWidget.dart';

class CatalogScreen extends StatefulWidget {

  @override
  _CatalogScreenState createState() => _CatalogScreenState();

}

class _CatalogScreenState extends State<CatalogScreen> {
  List<Item> dummyList = [];

  @override
  void initState() { 
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    // Item myItem = Item(); 
    // List<ItemWidget> dummyList = List.generate(3, (index) => ItemWidget(myItem));
    loadData();

    
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Catalog app"),
        actions: <Widget>[

          IconButton(onPressed: (){Navigator.of(context).pushNamed(MyRoutes.loginRoute);},
          icon: Icon(
              Icons.arrow_right,),
            splashColor: Colors.white,//Theme.of(context).colorScheme.onSecondary,
          ),
          
        ],
      ),
      body:Center(
        child: Container(
          child: dummyList.isNotEmpty? ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {return ItemWidget(dummyList[index]);} ):
            //Text("wait....")
            CircularProgressIndicator(),
        ),
      )
    );
  }
  void loadData() async{
 String productFile = await rootBundle.loadString("assets/files/products.json");//fetching the file
  var productJson = jsonDecode(productFile);
  var productData = productJson['products'];
  this.dummyList  = List.from(productData).map((item) => Item.fromMap(item)).toList();
  
}

}

