class TransactionHistoryModel {
  List<UserTransactions>? userTransactions;

  TransactionHistoryModel({this.userTransactions});

  TransactionHistoryModel.fromJson(Map<String, dynamic> json) {
    if (json['user transactions'] != null) {
      userTransactions = <UserTransactions>[];
      json['user transactions'].forEach((v) {
        userTransactions!.add(new UserTransactions.fromJson(v));
      });
    }
  }
}

class UserTransactions {
  int? id;
  int? userId;
  User? user;
  int? benefitId;
  Benefit? benefit;
  String? createdAt;

  UserTransactions({
    this.id,
    this.userId,
    this.user,
    this.benefitId,
    this.benefit,
    this.createdAt,
  });

  UserTransactions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
    benefitId = json['benefit_id'];
    benefit =
        json['Benefit'] != null ? new Benefit.fromJson(json['Benefit']) : null;
    createdAt = json['CreatedAt'];
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? role;
  int? point;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.role,
    this.point,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    role = json['role'];
    point = json['point'];
  }
}

class Benefit {
  int? id;
  int? benefitCategoryId;
  BenefitCategory? benefitCategory;
  String? name;
  String? description;
  int? price;
  int? stock;

  Benefit({
    this.id,
    this.benefitCategoryId,
    this.benefitCategory,
    this.name,
    this.description,
    this.price,
    this.stock,
  });

  Benefit.fromJson(Map<String, dynamic> json) {
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

  BenefitCategory({this.id, this.name, this.description});

  BenefitCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }
}
