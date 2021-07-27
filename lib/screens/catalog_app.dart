import 'package:flutter/material.dart';
import 'package:flutter_2_2_test/models/items.dart';
import 'package:flutter_2_2_test/utils/routes.dart';
import 'package:flutter_2_2_test/widgets/ItemWidget.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Item myItem = Item();
    List<ItemWidget> dummyList = List.generate(3, (index) => ItemWidget(myItem));
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
      body:Container(
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {return dummyList[index];} ),
      )
    );
  }
}