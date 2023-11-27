import 'dart:convert';

List<Shopping> shoppingListFromData(String data) => List<Shopping>.from(jsonDecode(data).map((e) => Shopping.fromJson(e)));
class Dimensions{
  late int length;
  late int width;
  late int height;

  Dimensions.fromJson(Map<String, dynamic> json){
    length = json["length"];
    width = json["width"];
    height = json["height"];
  }
}
class Details{
  late String color;
  late int weight;
  late Dimensions dimensions;

  Details.fromJson(Map<String, dynamic> json){
    color = json["color"];
    weight = json["weight"];
    dimensions = Dimensions.fromJson(json["dimensions"]);
  }
}
class Type {
  late String name;
  late String comment;
  late List<int> count;
  late String id;

  Type.fromJson(Map<String, dynamic> json){
    name = json["name"];
    comment = json["comment"];
    count = List<int>.from(json["count"].map((e) => (e)));
    id = json["id"];
  }
}

class Shopping {
  late String productName;
  late int cost;
  late String category;
  late Details details;
  late Type type;
  late String? id;
  Shopping.fromJson(Map<String, dynamic> json){
    productName = json["productName"];
    cost = json["cost"];
    category = json["category"];
    details = Details.fromJson(json["details"]);
    type = Type.fromJson(json["type"]);
    id = json["id"];
  }
}
