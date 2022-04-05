import 'package:day59/shared/typedef.dart';
import 'package:day59/models/categories/CategoryModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ProductModel.freezed.dart';
part 'ProductModel.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required int id,
    required String name,
    required String image,
    required String price,
    required String discount,
    required String discountPrice,
    required String brand,
    String? description,
    CategoryModel? category,
    List<String>? colors,
    List<String>? sizes,
    List<String>? images,
    String? rating,
    String? model,
    String? weight,

  }) = _ProductModel;

  factory ProductModel.fromJson(JSON json) => _$ProductModelFromJson(json);
}
