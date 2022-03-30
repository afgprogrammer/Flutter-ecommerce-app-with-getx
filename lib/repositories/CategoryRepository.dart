import 'package:day59/shared/typedef.dart';
import 'package:day59/services/networking/ApiService.dart';

class CategoryRepository {
  final ApiService _apiService;

  CategoryRepository(this._apiService);

  Future<List<JSON>> getCategories() async {
    // var response = await _apiService.get(endpoint: '/offers');

    var categories = [
      {
        'id': 1,
        'name': '👖  Trousers',
      },
      {
        'id': 2,
        'name': '👕  Shirts',
      },
      {
        'id': 3,
        'name': '👟  Shoes',
      },
      {
        'id': 4,
        'name': '💼  Bags',
      },
      {
        'id': 5,
        'name': '🕶  Accessories',
      },
    ];

    return categories;
  }
}
