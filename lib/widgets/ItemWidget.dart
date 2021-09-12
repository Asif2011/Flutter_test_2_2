import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_2_2_test/models/items.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  ItemWidget(this.item):assert(item!=null);// how to attach check on null value, throw exception on null

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading: Image.network(item.image),
        leading: Image.network(
        item.image,
        errorBuilder: (BuildContext context,Object exception, StackTrace? stackTrace){
        return Image.asset('assets/images/image-not-found.png');},
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!: null,
            );
        },
      ),
        trailing: Text(item.price.toString()),
        title: Text(item.name),
        subtitle: Text(item.desc),

      ),

    );
  }
}