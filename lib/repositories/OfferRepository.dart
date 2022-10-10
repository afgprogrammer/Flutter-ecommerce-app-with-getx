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
        'image': 'assets/images/offer1.jpg',
        'price': '100',
        'discount': '10',
        'discountPrice': '90',
      },
      {
        'id': 2,
        'title': 'Offer 2',
        'description': 'Offer 2 description',
        'image': 'assets/images/offer2.jpg',
        'price': '200',
        'discount': '20',
        'discountPrice': '180',
      },
      {
        'id': 3,
        'title': 'Offer 3',
        'description': 'Offer 3 description',
        'image': 'assets/images/offer3.jpg',
        'price': '300',
        'discount': '30',
        'discountPrice': '270',
      },
      {
        'id': 4,
        'title': 'Offer 4',
        'description': 'Offer 4 description',
        'image': 'assets/images/offer4.jpg',
        'price': '400',
        'discount': '40',
        'discountPrice': '380',
      },
      {
        'id': 5,
        'title': 'Offer 5',
        'description': 'Offer 5 description',
        'image': 'assets/images/offer5.jpg',
        'price': '500',
        'discount': '50',
        'discountPrice': '450',
      },
    ];

    return offers;
  }
}
