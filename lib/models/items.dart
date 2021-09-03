class Item {
  // final int id = 1;
  // final String name = "No Name";
  // final String desc = "No description";
  // final num price = 999;
  // final String color = 'white';
  // final String image = 'assets/images/no_image.png';
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});

  factory Item.fromMap(Map<String,dynamic> map) =>
    Item(id:map["id"], name:map["name"], desc:map['desc'], price:map['price'], color:map['Color'], image:map['image']);
   
  
  


}

