  import 'dart:convert';




  List<Data>dataFromJson(String str) => List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

  String dataToJson(List<Data> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

  class Data {
    Data({
      required this.sno,
      required this.item,
      required this.price,
      required this.id,
    });

    int sno;
    String item;
    int price;
    int id;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
      sno: json["sno"],
      item: json["item"],
      price: json["price"],
      id: json["id"],
    );

    Map<String, dynamic> toJson() => {
      "sno": sno,
      "item": item,
      "price": price,
      "id": id,
    };
  }
