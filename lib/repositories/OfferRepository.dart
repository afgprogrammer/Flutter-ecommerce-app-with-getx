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
        'image':
            'https://img.freepik.com/free-vector/flat-design-travel-sale-banner-template_23-2149096524.jpg?w=826&t=st=1665378993~exp=1665379593~hmac=7a718652254158c25a6630a93192baf6c50acfc160790a78e900d98113d28387',
        'price': '100',
        'discount': '10',
        'discountPrice': '90',
      },
      {
        'id': 2,
        'title': 'Offer 2',
        'description': 'Offer 2 description',
        'image':
            'https://img.freepik.com/free-vector/happy-tourists-choosing-hotel-booking-room-online-flat-illustration_74855-10811.jpg?w=740&t=st=1665378973~exp=1665379573~hmac=dbfd964b37dced42a40689a87d0a1bbc030298675d377c95911cb6436254b2bb',
        'price': '200',
        'discount': '20',
        'discountPrice': '180',
      },
      {
        'id': 3,
        'title': 'Offer 3',
        'description': 'Offer 3 description',
        'image':
            'https://img.freepik.com/free-vector/hand-drawn-travel-agency-sale-banner_23-2149591407.jpg?w=826&t=st=1665379003~exp=1665379603~hmac=1f16092308ce80fe907ddd4c4db1ef484a7b3c2a3aa5830eb9d2a0c7ae3311c0',
        'price': '300',
        'discount': '30',
        'discountPrice': '270',
      },
      {
        'id': 4,
        'title': 'Offer 4',
        'description': 'Offer 4 description',
        'image':
            'https://img.freepik.com/free-vector/travel-facebook-ad-design-template_23-2149087051.jpg?w=740&t=st=1665379002~exp=1665379602~hmac=09db448c51f735edc8b89168c5627c57361f22c7bddc177cc2ebccb332c92857',
        'price': '400',
        'discount': '40',
        'discountPrice': '380',
      },
      {
        'id': 5,
        'title': 'Offer 5',
        'description': 'Offer 5 description',
        'image':
            'https://img.freepik.com/free-vector/flat-design-travel-youtube-channel-art_23-2149131716.jpg?w=740&t=st=1665379001~exp=1665379601~hmac=eed6470f9e1c180576e46b2c4dffb089d892ab66eff0083be2c2ff051e42e012',
        'price': '500',
        'discount': '50',
        'discountPrice': '450',
      },
    ];

    return offers;
  }
}
