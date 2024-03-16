import 'dart:ffi';

class FoodItemData {
  final String imageUrl;
  final String itemName;
  final double rating;
  final double distance;
  final double price;

  final String deliveryInfo;
  final int preparationTime;

  final String description;
  final ModelInfo modelInfo;

  FoodItemData({
    required this.imageUrl,
    required this.itemName,
    required this.rating,
    required this.distance,
    required this.price,
    required this.deliveryInfo,
    required this.preparationTime,
    required this.description,
    required this.modelInfo,
  });
}

class ModelInfo {
  final double Delivery_person_Ratings;
  final int Vehicle_condition;
  final double distance;
  final int multiple_deliveries;
  final String Weatherconditions;
  final String Road_traffic_density;
  final String Festival;
  final String City;

  ModelInfo({
    required this.Delivery_person_Ratings,
    required this.Vehicle_condition,
    required this.distance,
    required this.multiple_deliveries,
    required this.Weatherconditions,
    required this.Road_traffic_density,
    required this.Festival,
    required this.City,
  });
}
