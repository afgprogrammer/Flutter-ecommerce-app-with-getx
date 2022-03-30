import 'package:day59/shared/typedef.dart';
import 'package:day59/services/networking/ApiService.dart';

class OfferRepository {
  final ApiService _apiService;

  OfferRepository(this._apiService);

  Future<List<JSON>> getOffers() async {
    // var response = await _apiService.get(endpoint: '/offers');

    var offers = [
      {
        'id': 1,
        'title': 'Offer 1',
        'description': 'Offer 1 description',
        'image': 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        'price': '100',
        'discount': '10',
        'discountPrice': '90',
      },
      {
        'id': 2,
        'title': 'Offer 2',
        'description': 'Offer 2 description',
        'image': 'https://images.unsplash.com/photo-1505739998589-00fc191ce01d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        'price': '200',
        'discount': '20',
        'discountPrice': '180',
      },
      {
        'id': 3,
        'title': 'Offer 3',
        'description': 'Offer 3 description',
        'image': 'https://images.unsplash.com/photo-1625772452888-ca36edeaf3a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',
        'price': '300',
        'discount': '30',
        'discountPrice': '270',
      },
      {
        'id': 4,
        'title': 'Offer 4',
        'description': 'Offer 4 description',
        'image': 'https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2808&q=80',
        'price': '400',
        'discount': '40',
        'discountPrice': '380',
      },
      {
        'id': 5,
        'title': 'Offer 5',
        'description': 'Offer 5 description',
        'image': 'https://images.unsplash.com/photo-1458538977777-0549b2370168?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3274&q=80',
        'price': '500',
        'discount': '50',
        'discountPrice': '450',
      },
    ];

    return offers;
  }
}
