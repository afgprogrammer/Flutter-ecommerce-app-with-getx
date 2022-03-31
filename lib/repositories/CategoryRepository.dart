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
        'name': 'Electronics',
        'image': 'https://images.unsplash.com/photo-1589894404892-7310b92ea7a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80'
      },
      {
        'id': 2,
        'name': 'Fashion',
        'image': 'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2595&q=80'
      },
      {
        'id': 3,
        'name': 'Sports',
        'image': 'https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2669&q=80'
      },
      {
        'id': 4,
        'name': 'Toys',
        'image': 'https://images.unsplash.com/photo-1558060370-d644479cb6f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2728&q=80'
      },
      {
        'id': 5,
        'name': 'Health & Beauty',
        'image': 'https://images.unsplash.com/photo-1627467959547-8e44da7aa00a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80'
      },
      {
        'id': 6,
        'name': 'Books',
        'image': 'https://images.unsplash.com/photo-1524578271613-d550eacf6090?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80'
      },
      {
        'id': 7,
        'name': 'Kids',
        'image': 'https://images.unsplash.com/photo-1516627145497-ae6968895b74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2640&q=80'
      },
      {
        'id': 8,
        'name': 'Furniture',
        'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2516&q=80'
      },
      {
        'id': 9,
        'name': 'Shoes',
        'image': 'https://images.unsplash.com/photo-1562183241-b937e95585b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2265&q=80'
      },
      {
        'id': 10,
        'name': 'Jewelry',
        'image': 'https://images.unsplash.com/photo-1625908733875-efa9c75c084d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2680&q=80'
      },
      {
        'id': 11,
        'name': 'Watches',
        'image': 'https://images.unsplash.com/photo-1612817159623-0399784fd0ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2650&q=80'
      },
    ];

    return categories;
  }
}
