import 'package:day59/shared/typedef.dart';
import 'package:day59/services/networking/ApiService.dart';

class CategoryRepository {
  final ApiService _apiService;

  CategoryRepository(this._apiService);

  Future<List<JSON>> getCategories() async {
    // var response = await _apiService.get(endpoint: '/offers');

    // var categories = [
    //   {
    //     'id': 1,
    //     'name': 'Reservation',
    //     'image':
    //         'https://img.freepik.com/free-vector/tourism-expert-concept-travel-agent-selling-tour-cruise-airway-railway-tickets-vacation-organization-agency-hotel-booking-isolated-vector-illustration_613284-1979.jpg?w=740&t=st=1665354826~exp=1665355426~hmac=ee6dd1516ff7cea2bbd6138c3ba3e6d07e7bff3f21dfb1a3cca77c31d0804827'
    //   },
    //   {
    //     'id': 2,
    //     'name': 'Beverages',
    //     'image':
    //         'https://cdn-icons-png.flaticon.com/512/1243/1243093.png?w=826&t=st=1665387084~exp=1665387684~hmac=eaa7094c0a35bd38e853591fad43deb4ab7412499e96c7f07af9e7b8b0ac78b2'
    //   },
    //   {
    //     'id': 3,
    //     'name': 'Fitness',
    //     'image':
    //         'https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2669&q=80'
    //   },
    //   {
    //     'id': 4,
    //     'name': 'Beauty',
    //     'image':
    //         'https://images.unsplash.com/photo-1558060370-d644479cb6f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2728&q=80'
    //   },
    //   {
    //     'id': 5,
    //     'name': 'Spa',
    //     'image':
    //         'https://images.unsplash.com/photo-1627467959547-8e44da7aa00a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80'
    //   },
    //   {
    //     'id': 6,
    //     'name': 'Housekeeping',
    //     'image':
    //         'https://images.unsplash.com/photo-1524578271613-d550eacf6090?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80'
    //   },
    //   {
    //     'id': 7,
    //     'name': 'Technic',
    //     'image':
    //         'https://images.unsplash.com/photo-1516627145497-ae6968895b74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2640&q=80'
    //   },
    //   {
    //     'id': 8,
    //     'name': 'Help',
    //     'image':
    //         'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2516&q=80'
    //   },
    // ];

    var categories = [
      {
        'id': 1,
        'name': 'Reservation',
        'image': 'https://i.imgur.com/O2ZX5nR.png'
      },
      {'id': 2, 'name': 'Health', 'image': 'https://i.imgur.com/GPsRaFC.png'},
      {
        'id': 3,
        'name': 'Baby Care',
        'image': 'https://i.imgur.com/mGRqfnc.png'
      },
      {'id': 4, 'name': 'Beauty', 'image': 'https://i.imgur.com/DNr8a6R.png'},
      {'id': 5, 'name': 'Spa', 'image': 'https://i.imgur.com/BPvKeXl.png'},
      {'id': 6, 'name': 'Fitness', 'image': 'https://i.imgur.com/O2ZX5nR.png'},
    ];

    return categories;
  }
}
