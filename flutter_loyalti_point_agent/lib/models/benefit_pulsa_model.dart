// To parse this JSON data, do
//
//     final benefitPulsaModel = benefitPulsaModelFromJson(jsonString);

// import 'dart:convert';

// List<BenefitPulsaModel> benefitPulsaModelFromJson(String str) => List<BenefitPulsaModel>.from(json.decode(str).map((x) => BenefitPulsaModel.fromJson(x)));

// String benefitPulsaModelToJson(List<BenefitPulsaModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BenefitPulsaModel {
  BenefitPulsaModel({
    required this.id,
    required this.benefitCategoryId,
    required this.benefitCategory,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  int id;
  int benefitCategoryId;
  BenefitCategory benefitCategory;
  String name;
  String description;
  int price;
  int stock;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  // factory BenefitPulsaModel.fromJson(Map<String, dynamic> json) => BenefitPulsaModel(
  //     id: json["id"],
  //     benefitCategoryId: json["benefit_category_id"],
  //     benefitCategory: BenefitCategory.fromJson(json["BenefitCategory"]),
  //     name: json["name"],
  //     description: json["description"],
  //     price: json["price"],
  //     stock: json["stock"],
  //     createdAt: DateTime.parse(json["CreatedAt"]),
  //     updatedAt: DateTime.parse(json["UpdatedAt"]),
  //     deletedAt: json["DeletedAt"],
  // );

  // Map<String, dynamic> toJson() => {
  //     "id": id,
  //     "benefit_category_id": benefitCategoryId,
  //     "BenefitCategory": benefitCategory.toJson(),
  //     "name": name,
  //     "description": description,
  //     "price": price,
  //     "stock": stock,
  //     "CreatedAt": createdAt.toIso8601String(),
  //     "UpdatedAt": updatedAt.toIso8601String(),
  //     "DeletedAt": deletedAt,
  // };
}

class BenefitCategory {
  BenefitCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  int id;
  String name;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  // factory BenefitCategory.fromJson(Map<String, dynamic> json) =>
  //     BenefitCategory(
  //       id: json["id"],
  //       name: json["name"],
  //       description: json["description"],
  //       createdAt: DateTime.parse(json["CreatedAt"]),
  //       updatedAt: DateTime.parse(json["UpdatedAt"]),
  //       deletedAt: json["DeletedAt"],
  //     );

  // Map<String, dynamic> toJson() => {
  //       "id": id,
  //       "name": name,
  //       "description": description,
  //       "CreatedAt": createdAt.toIso8601String(),
  //       "UpdatedAt": updatedAt.toIso8601String(),
  //       "DeletedAt": deletedAt,
  //     };
}
