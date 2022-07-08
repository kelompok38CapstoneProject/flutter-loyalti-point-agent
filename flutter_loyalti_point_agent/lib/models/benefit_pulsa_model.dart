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
}
