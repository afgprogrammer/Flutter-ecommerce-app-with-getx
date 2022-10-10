import 'package:day59/shared/typedef.dart';
import 'package:day59/services/networking/ApiService.dart';

class ProductRepository {
  final ApiService _apiService;

  ProductRepository(this._apiService);

  Future<List<JSON>> getDiscountedProducts() async {
    // var response = await _apiService.get(endpoint: '/products/discounted');

    var products = [
      {
        'id': 1,
        'name': 'Text 1',
        'image':
            'https://img.freepik.com/free-photo/swimming-pool-beach-luxury-hotel-type-entertainment-complex-amara-dolce-vita-luxury-hotel-resort-tekirova-kemer-turkey_146671-18726.jpg?w=740&t=st=1665353940~exp=1665354540~hmac=b0ba8368437537a5e43cf79ccb96083075f220751a258fab47877ef901b137af',
        'price': '\$20',
        'discount': '\$10',
        'discountPrice': '\$10',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        'category': {
          'id': 2,
          'name': 'Service 1',
          'image':
              "https://img.freepik.com/free-photo/beautiful-umbrella-chair-around-swimming-pool-hotel-resort_74190-1006.jpg?w=740&t=st=1665353991~exp=1665354591~hmac=f345b6a03cbe39c6cee02721d4ebab050c9139cedc0726b35ab1bc9a1de8804e",
        },
        'colors': ['Red', 'Blue', 'Green'],
        'sizes': ['S', 'M', 'L'],
        'images': [
          "https://img.freepik.com/free-photo/hotel-bell_1203-2898.jpg?w=740&t=st=1665354022~exp=1665354622~hmac=febae751e585391825faa6fea359db5f9c0ae7204614a5256fbbf02dec5363df",
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        ],
        'rating': '4.5',
        'brand': 'MOQ',
        'model': 'M-01',
        'weight': '100g',
      },
      {
        'id': 2,
        'name': 'Text 2 ',
        'image':
            "https://img.freepik.com/free-photo/housekeeper-cleaning-hotel-room_53876-30786.jpg?w=740&t=st=1665354025~exp=1665354625~hmac=9f637b88dd504ee7607f8aa986898b27fefcb34d9fadba93428d104ead96852a",
        'price': '\$300',
        'discount': '\$50',
        'discountPrice': '\$250',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        'category': {
          'id': 9,
          'name': 'Service 2',
          'image':
              "https://img.freepik.com/free-photo/scenic-view-sandy-beach-beach-with-sun-beds-umbrellas-open-against-sea-mountains-hotel-resort-tekirova-kemer-turkey_146671-18876.jpg?w=740&t=st=1665354032~exp=1665354632~hmac=7f01a9749d0467cd6ca381c263469f877bb21d14a045e546df1c2aea34a6385f",
        },
        'colors': ['Red', 'Blue', 'Green'],
        'sizes': ['S', 'M', 'L'],
        'images': [
          'https://img.freepik.com/free-photo/scenic-view-sandy-beach-beach-with-sun-beds-umbrellas-open-against-sea-mountains-hotel-resort-tekirova-kemer-turkey_146671-18876.jpg?w=740&t=st=1665354032~exp=1665354632~hmac=7f01a9749d0467cd6ca381c263469f877bb21d14a045e546df1c2aea34a6385f',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        ],
        'rating': '4.5',
        'brand': 'Nike',
        'model': 'Air Max',
        'weight': '100g',
      },
      {
        'id': 3,
        'name': 'Text 3',
        'image':
            'https://img.freepik.com/free-photo/banquet-table-with-restaurant-serving_144627-18355.jpg?w=740&t=st=1665354036~exp=1665354636~hmac=a5075c8a6600626784b25586fe12915b71a114e1227a58821e7c704d8dd42de9',
        'price': '\$120',
        'discount': '\$10',
        'discountPrice': '\$110',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        'category': {
          'id': 2,
          'name': 'Service 1',
          'image':
              'hhttps://img.freepik.com/free-photo/scenic-view-sandy-beach-beach-with-sun-beds-umbrellas-open-against-sea-mountains-hotel-resort-tekirova-kemer-turkey_146671-18876.jpg?w=740&t=st=1665354032~exp=1665354632~hmac=7f01a9749d0467cd6ca381c263469f877bb21d14a045e546df1c2aea34a6385f',
        },
        'images': [
          'https://img.freepik.com/free-photo/luxury-dinner-table-hotel_1150-11071.jpg?w=740&t=st=1665354037~exp=1665354637~hmac=5fc66bb4d665022ed3d8e6cf88e7c4ba8dcfc1283c0f2d1826ba682886c64801',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        ],
        'rating': '4.5',
        'brand': 'D&G',
      },
      {
        'id': 4,
        'name': 'Text 4',
        'image':
            'https://images.unsplash.com/photo-1546719900-f350ef5d469d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        'price': '\$1099',
        'discount': '\$99',
        'discountPrice': '\$1000',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        'category': {
          'id': 2,
          'name': 'Service 2',
          'image':
              'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2595&q=80',
        },
        'images': [
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
          'https://images.unsplash.com/photo-1564584217132-2271feaeb3c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        ],
        'rating': '4.5',
        'brand': 'Firenze',
      }
    ];

    return products;
  }

  Future<JSON> getProductId(int id) async {
    var products = await getDiscountedProducts();
    var product = products.firstWhere((element) => element['id'] == id);

    return product;
  }
}
