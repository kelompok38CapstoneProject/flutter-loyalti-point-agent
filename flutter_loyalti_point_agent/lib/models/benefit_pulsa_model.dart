// class BenefitPulsaModel {
//   int? id;
//   int? benefitCategoryId;
//   BenefitCategory? benefitCategory;
//   String? name;
//   String? description;
//   int? price;
//   int? stock;

//   BenefitPulsaModel({
//     this.id,
//     this.benefitCategoryId,
//     this.benefitCategory,
//     this.name,
//     this.description,
//     this.price,
//     this.stock,
//   });

//   BenefitPulsaModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     benefitCategoryId = json['benefit_category_id'];
//     benefitCategory = json['BenefitCategory'] != null
//         ? new BenefitCategory.fromJson(json['BenefitCategory'])
//         : null;
//     name = json['name'];
//     description = json['description'];
//     price = json['price'];
//     stock = json['stock'];
//   }
// }

// class BenefitCategory {
//   int? id;
//   String? name;
//   String? description;

//   BenefitCategory({this.id, this.name, this.description});

//   BenefitCategory.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     description = json['description'];
//   }
// }

class BenefitPulsaModel {
  List<Benefits>? benefits;

  BenefitPulsaModel({this.benefits});

  BenefitPulsaModel.fromJson(Map<String, dynamic> json) {
    if (json['benefits'] != null) {
      benefits = <Benefits>[];
      json['benefits'].forEach((v) {
        benefits!.add(new Benefits.fromJson(v));
      });
    }
  }
}

class Benefits {
  int? id;
  int? benefitCategoryId;
  BenefitCategory? benefitCategory;
  String? name;
  String? description;
  int? price;
  int? stock;

  Benefits({
    this.id,
    this.benefitCategoryId,
    this.benefitCategory,
    this.name,
    this.description,
    this.price,
    this.stock,
  });

  Benefits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    benefitCategoryId = json['benefit_category_id'];
    benefitCategory = json['BenefitCategory'] != null
        ? new BenefitCategory.fromJson(json['BenefitCategory'])
        : null;
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stock = json['stock'];
  }
}

class BenefitCategory {
  int? id;
  String? name;
  String? description;

  BenefitCategory({
    this.id,
    this.name,
    this.description,
  });

  BenefitCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }
}
