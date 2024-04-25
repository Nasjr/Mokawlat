import 'package:cloud_firestore/cloud_firestore.dart';

class BannersModel {
  final String serviceName;
  final String phoneNumber;
  final String whatsappNumber;
  final String description;
  final String descriptionAR;
  final String imageUrl;
  final Timestamp updateDate;

  BannersModel(
      {required this.serviceName,
      required this.phoneNumber,
      required this.whatsappNumber,
      required this.description,
      required this.imageUrl,
      required this.descriptionAR,
      required this.updateDate});

  // from JsonConstructor
  factory BannersModel.fromJson(Map<String, dynamic> json) {
    return BannersModel(
        serviceName: json['serviceName'] ?? '',
        phoneNumber: json['phoneNumber'] ?? '',
        whatsappNumber: json['whatsappNumber'] ?? '',
        description: json['description'] ?? '',
        imageUrl: json['imageUrl'] ?? '',
        descriptionAR: json['descriptionAR'] ?? '',
        updateDate: json['updateDate'] ?? Timestamp.now());
  }
  // from document
  factory BannersModel.mapFirestoreToCategoryModel(DocumentSnapshot doc) {
    // Get data from the document
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    // Extract and handle missing fields with default values
    return BannersModel(
        serviceName: doc['serviceName'] ?? '',
        phoneNumber: doc['phoneNumber'] ?? '',
        whatsappNumber: doc['whatsappNumber'] ?? '',
        description: doc['description'] ?? '',
        imageUrl: doc['imageUrl'] ?? '',
        descriptionAR: doc['descriptionAR'] ?? '',
        updateDate: doc['updateDate'] ?? Timestamp.now());
  }
  // To JsonConstructor
  Map<String, dynamic> toJson(BannersModel model) {
    return {
      'name': model.serviceName,
      'phoneNumber': model.phoneNumber,
      'imageUrl': model.imageUrl,
      'whatsappNumber': model.whatsappNumber,
      'description': model.description,
      'descriptionAR': model.descriptionAR
    };
  }
}
