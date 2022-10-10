import 'package:day59/shared/typedef.dart';
import 'package:day59/services/networking/ApiService.dart';

class CategoryRepository {
  final ApiService _apiService;

  CategoryRepository(this._apiService);

  Future<List<JSON>> getCategories() async {
    // var response = await _apiService.get(endpoint: '/offers');

    var categories = [
      {
        'icon': " menu",
        'id': 1,
        'name': 'Reservation',
        'image':
            'https://img.freepik.com/free-vector/tourism-expert-concept-travel-agent-selling-tour-cruise-airway-railway-tickets-vacation-organization-agency-hotel-booking-isolated-vector-illustration_613284-1979.jpg?w=740&t=st=1665354826~exp=1665355426~hmac=ee6dd1516ff7cea2bbd6138c3ba3e6d07e7bff3f21dfb1a3cca77c31d0804827'
      },
      {
        'id': 2,
        'name': 'Beverages',
        'image':
            'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2595&q=80'
      },
      {
        'id': 3,
        'name': 'Fitness',
        'image':
            'https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2669&q=80'
      },
      {
        'id': 4,
        'name': 'Beauty',
        'image':
            'https://images.unsplash.com/photo-1558060370-d644479cb6f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2728&q=80'
      },
      {
        'id': 5,
        'name': 'Spa',
        'image':
            'https://images.unsplash.com/photo-1627467959547-8e44da7aa00a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80'
      },
      {
        'id': 6,
        'name': 'Housekeeping',
        'image':
            'https://images.unsplash.com/photo-1524578271613-d550eacf6090?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80'
      },
      {
        'id': 7,
        'name': 'Technic',
        'image':
            'https://images.unsplash.com/photo-1516627145497-ae6968895b74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2640&q=80'
      },
      {
        'id': 8,
        'name': 'Help',
        'image':
            'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2516&q=80'
      },
    ];

    return categories;
  }
}
