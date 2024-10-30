

part 'resource_model.g.dart';

class ResourcesModel {
  List<Data>? data;

  ResourcesModel({this.data});

  factory ResourcesModel.fromJson(Map<String, dynamic> json) {
    return _$ResourcesModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ResourcesModelToJson(this);
  }
}

class Data {
  final int? id;
  final String? name;
  final int? year;
  final String? color;
  final String? pantoneValue;

  Data({this.id, this.name, this.year, this.color, this.pantoneValue});


  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
  }

  Map<String, dynamic> toJson() {
   return _$DataToJson(this);
  }
}
