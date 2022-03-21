// To parse this JSON data, do
//
//     final foodData = foodDataFromMap(jsonString);

import 'dart:convert';

FoodData foodDataFromMap(String str) => FoodData.fromMap(json.decode(str));

String foodDataToMap(FoodData data) => json.encode(data.toMap());

class FoodData {
  FoodData({
    required this.discontinuedDate,
    required this.foodComponents,
    required this.foodAttributes,
    required this.foodPortions,
    required this.fdcId,
    required this.description,
    required this.publicationDate,
    required this.foodNutrients,
    required this.dataType,
    required this.foodClass,
    required this.modifiedDate,
    required this.availableDate,
    required this.brandOwner,
    required this.brandName,
    required this.dataSource,
    required this.brandedFoodCategory,
    required this.gtinUpc,
    required this.ingredients,
    required this.marketCountry,
    required this.servingSize,
    required this.servingSizeUnit,
    required this.packageWeight,
    required this.foodUpdateLog,
    required this.labelNutrients,
    required this.subbrandName,
    required this.notaSignificantSourceOf,
  });

  String discontinuedDate;
  List<dynamic> foodComponents;
  List<FoodAttribute> foodAttributes;
  List<dynamic> foodPortions;
  int fdcId;
  String description;
  String publicationDate;
  List<FoodNutrient> foodNutrients;
  String dataType;
  String foodClass;
  String modifiedDate;
  String availableDate;
  String brandOwner;
  String brandName;
  String dataSource;
  String brandedFoodCategory;
  String gtinUpc;
  String ingredients;
  String marketCountry;
  int servingSize;
  String servingSizeUnit;
  String packageWeight;
  List<FoodData> foodUpdateLog;
  Map<String, LabelNutrient> labelNutrients;
  String subbrandName;
  String notaSignificantSourceOf;

  FoodData copyWith({
    required String discontinuedDate,
    required List<dynamic> foodComponents,
    required List<FoodAttribute> foodAttributes,
    required List<dynamic> foodPortions,
    required int fdcId,
    required String description,
    required String publicationDate,
    required List<FoodNutrient> foodNutrients,
    required String dataType,
    required String foodClass,
    required String modifiedDate,
    required String availableDate,
    required String brandOwner,
    required String brandName,
    required String dataSource,
    required String brandedFoodCategory,
    required String gtinUpc,
    required String ingredients,
    required String marketCountry,
    required int servingSize,
    required String servingSizeUnit,
    required String packageWeight,
    required List<FoodData> foodUpdateLog,
    required Map<String, LabelNutrient> labelNutrients,
    required String subbrandName,
    required String notaSignificantSourceOf,
  }) =>
      FoodData(
        discontinuedDate: discontinuedDate ?? this.discontinuedDate,
        foodComponents: foodComponents ?? this.foodComponents,
        foodAttributes: foodAttributes ?? this.foodAttributes,
        foodPortions: foodPortions ?? this.foodPortions,
        fdcId: fdcId ?? this.fdcId,
        description: description ?? this.description,
        publicationDate: publicationDate ?? this.publicationDate,
        foodNutrients: foodNutrients ?? this.foodNutrients,
        dataType: dataType ?? this.dataType,
        foodClass: foodClass ?? this.foodClass,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        availableDate: availableDate ?? this.availableDate,
        brandOwner: brandOwner ?? this.brandOwner,
        brandName: brandName ?? this.brandName,
        dataSource: dataSource ?? this.dataSource,
        brandedFoodCategory: brandedFoodCategory ?? this.brandedFoodCategory,
        gtinUpc: gtinUpc ?? this.gtinUpc,
        ingredients: ingredients ?? this.ingredients,
        marketCountry: marketCountry ?? this.marketCountry,
        servingSize: servingSize ?? this.servingSize,
        servingSizeUnit: servingSizeUnit ?? this.servingSizeUnit,
        packageWeight: packageWeight ?? this.packageWeight,
        foodUpdateLog: foodUpdateLog ?? this.foodUpdateLog,
        labelNutrients: labelNutrients ?? this.labelNutrients,
        subbrandName: subbrandName ?? this.subbrandName,
        notaSignificantSourceOf: notaSignificantSourceOf ?? this.notaSignificantSourceOf,
      );

  factory FoodData.fromMap(Map<String, dynamic> json) => FoodData(
    discontinuedDate: json["discontinuedDate"],
    foodComponents: json["foodComponents"] ,
    foodAttributes: List<FoodAttribute>.from(json["foodAttributes"].map((x) => FoodAttribute.fromMap(x))),
    foodPortions: json["foodPortions"] ,
    fdcId: json["fdcId"],
    description: json["description"],
    publicationDate: json["publicationDate"],
    foodNutrients: json["foodNutrients"] ,
    dataType: json["dataType"],
    foodClass: json["foodClass"],
      modifiedDate: json["modifiedDate"],
    availableDate: json["availableDate"],
    brandOwner: json["brandOwner"],
    brandName: json["brandName"],
    dataSource: json["dataSource"],
    brandedFoodCategory: json["brandedFoodCategory"],
    gtinUpc: json["gtinUpc"],
    ingredients: json["ingredients"],
    marketCountry: json["marketCountry"],
    servingSize: json["servingSize"],
    servingSizeUnit: json["servingSizeUnit"],
    packageWeight: json["packageWeight"] ,
    foodUpdateLog: json["foodUpdateLog"],
    labelNutrients: json["labelNutrients"],
    subbrandName: json["subbrandName"] == null ? null : json["subbrandName"],
    notaSignificantSourceOf: json["notaSignificantSourceOf"] == null ? null : json["notaSignificantSourceOf"],
  );

  Map<String, dynamic> toMap() => {
    "discontinuedDate": discontinuedDate,
    "foodComponents": foodComponents == null ? null : List<dynamic>.from(foodComponents.map((x) => x)),
    "foodAttributes": List<dynamic>.from(foodAttributes.map((x) => x.toMap())),
    "foodPortions": foodPortions == null ? null : List<dynamic>.from(foodPortions.map((x) => x)),
    "fdcId": fdcId,
    "description": description,
    "publicationDate": publicationDate,
    "foodNutrients": foodNutrients == null ? null : List<dynamic>.from(foodNutrients.map((x) => x.toMap())),
    "dataType": dataType,
    "foodClass": foodClass,
    "modifiedDate": modifiedDate,
    "availableDate": availableDate,
    "brandOwner": brandOwner,
    "brandName": brandName,
    "dataSource": dataSource,
    "brandedFoodCategory": brandedFoodCategory,
    "gtinUpc": gtinUpc,
    "ingredients": ingredients,
    "marketCountry": marketCountry,
    "servingSize": servingSize,
    "servingSizeUnit": servingSizeUnit,
    "packageWeight": packageWeight == null ? null : packageWeight,
    "foodUpdateLog": foodUpdateLog == null ? null : List<dynamic>.from(foodUpdateLog.map((x) => x.toMap())),
    "labelNutrients": labelNutrients == null ? null : Map.from(labelNutrients).map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
    "subbrandName": subbrandName == null ? null : subbrandName,
    "notaSignificantSourceOf": notaSignificantSourceOf == null ? null : notaSignificantSourceOf,
  };
}

class FoodAttribute {
  FoodAttribute({
    required this.id,
    required this.value,
    required this.name,
  });

  int id;
  int value;
  String name;

  FoodAttribute copyWith({
    required int id,
    required int value,
    required String name,
  }) =>
      FoodAttribute(
        id: id ?? this.id,
        value: value ?? this.value,
        name: name ?? this.name,
      );

  factory FoodAttribute.fromMap(Map<String, dynamic> json) => FoodAttribute(
    id: json["id"],
    value: json["value"],
    name: json["name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "value": value,
    "name": name,
  };
}

class FoodNutrient {
  FoodNutrient({
    required this.type,
    required this.nutrient,
    required this.foodNutrientDerivation,
    required this.id,
    required this.amount,
  });

  Type? type;
  Nutrient nutrient;
  FoodNutrientDerivation foodNutrientDerivation;
  int id;
  double amount;

  FoodNutrient copyWith({
    required Type type,
    required Nutrient nutrient,
    required FoodNutrientDerivation foodNutrientDerivation,
    required int id,
    required double amount,
  }) =>
      FoodNutrient(
        type: type ?? this.type,
        nutrient: nutrient ?? this.nutrient,
        foodNutrientDerivation: foodNutrientDerivation ?? this.foodNutrientDerivation,
        id: id ?? this.id,
        amount: amount ?? this.amount,
      );

  factory FoodNutrient.fromMap(Map<String, dynamic> json) => FoodNutrient(
    type: typeValues.map[json["type"]],
    nutrient: Nutrient.fromMap(json["nutrient"]),
    foodNutrientDerivation: FoodNutrientDerivation.fromMap(json["foodNutrientDerivation"]),
    id: json["id"],
    amount: json["amount"].toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "type": typeValues.reverse?[type],
    "nutrient": nutrient.toMap(),
    "foodNutrientDerivation": foodNutrientDerivation.toMap(),
    "id": id,
    "amount": amount,
  };
}

class FoodNutrientDerivation {
  FoodNutrientDerivation({
    required this.id,
    required this.code,
    required this.description,
  });

  int id;
  Code? code;
  String description;

  FoodNutrientDerivation copyWith({
    required int id,
    required Code code,
    required String description,
  }) =>
      FoodNutrientDerivation(
        id: id ?? this.id,
        code: code ?? this.code,
        description: description ?? this.description,
      );

  factory FoodNutrientDerivation.fromMap(Map<String, dynamic> json) => FoodNutrientDerivation(
    id: json["id"],
    code: codeValues!.map[json["code"]],
    description: json["description"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "code": codeValues.reverse?[code],
    "description": description,
  };
}

enum Code { LCCS, LCCD }

final codeValues = EnumValues({
  "LCCD": Code.LCCD,
  "LCCS": Code.LCCS
});

class Nutrient {
  Nutrient({
    required this.id,
    required this.number,
    required this.name,
    required this.rank,
    required this.unitName,
  });

  int id;
  String number;
  String name;
  int rank;
  String unitName;

  Nutrient copyWith({
    required int id,
    required String number,
    required String name,
    required int rank,
    required String unitName,
  }) =>
      Nutrient(
        id: id ?? this.id,
        number: number ?? this.number,
        name: name ?? this.name,
        rank: rank ?? this.rank,
        unitName: unitName ?? this.unitName,
      );

  factory Nutrient.fromMap(Map<String, dynamic> json) => Nutrient(
    id: json["id"],
    number: json["number"],
    name: json["name"],
    rank: json["rank"],
    unitName: json["unitName"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "number": number,
    "name": name,
    "rank": rank,
    "unitName": unitName,
  };
}

enum Type { FOOD_NUTRIENT }

final typeValues = EnumValues({
  "FoodNutrient": Type.FOOD_NUTRIENT
});

class LabelNutrient {
  LabelNutrient({
    required this.value,
  });

  double value;

  LabelNutrient copyWith({
    required double value,
  }) =>
      LabelNutrient(
        value: value ?? this.value,
      );

  factory LabelNutrient.fromMap(Map<String, dynamic> json) => LabelNutrient(
    value: json["value"].toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "value": value,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> ? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
