import 'package:day59/models/offers/OfferModel.dart';
import 'package:day59/repositories/OfferRepository.dart';

class OfferProvider {
  final OfferRepository _offerRepository;

  OfferProvider(this._offerRepository);

  Future<List<OfferModel>> getOffers() async {
    var offers = await _offerRepository.getOffers();

    return offers.map((offer) => OfferModel.fromJson(offer)).toList();
  }
}
