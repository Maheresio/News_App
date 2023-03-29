import 'package:flutter/material.dart';

import '../model/breaking_news_model.dart';
import '../model/recommendation_model.dart';

class HomeProvider with ChangeNotifier {
  int index = 0;
  void toggleSlides(int index) {
    this.index = index;
    notifyListeners();
  }

  List<BreakingNewsModel> breakingNewsList = [
    BreakingNewsModel(
      category: 'Sports',
      publisher: 'CNN Indonesia',
      imageUrl:
          'https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg',
      publishedTime: 6,
      title: 'Alexander wears modified helmet in road races',
    ),
    BreakingNewsModel(
      category: 'Business',
      publisher: 'BBC NEWS',
      imageUrl:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/AE34/production/_129169544_gettyimages-1459166551.jpg.webp',
      publishedTime: 18,
      title: 'Elon Musk: Twitter boss announces blue tick shake-up',
    ),
    BreakingNewsModel(
      category: 'Technology',
      publisher: 'BBC',
      imageUrl:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/9517/production/_129176183_gettyimages-644069149.jpg.webp',
      publishedTime: 5,
      title: 'AI could replace equivalent of 300 million jobs - report',
    ),
    BreakingNewsModel(
      category: 'News',
      publisher: 'The Guardian',
      imageUrl:
          'https://i.guim.co.uk/img/media/9538e30fd542b7ecae8cd8e6ed9e40d42939a8b7/0_86_4183_2509/master/4183.jpg?width=620&quality=45&dpr=2&s=none',
      publishedTime: 6,
      title:
          'Putin prepares Russia for ‘forever war’ with west as Ukraine invasion stalls',
    ),
    BreakingNewsModel(
      category: 'Astronomy',
      publisher: 'The Guardian',
      imageUrl:
          'https://i.guim.co.uk/img/media/86ae112ff09f4bc4ac9c5b2cda49af72472e1228/121_0_3635_2181/master/3635.jpg?width=620&quality=45&dpr=2&s=none',
      publishedTime: 12,
      title: 'Cosmic explosion last year may be ‘brightest ever seen’',
    ),
    BreakingNewsModel(
      category: 'Sports',
      publisher: 'CNN Indonesia',
      imageUrl:
          'https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg',
      publishedTime: 6,
      title: 'Alexander wears modified helmet in road races',
    ),
    BreakingNewsModel(
      category: 'Business',
      publisher: 'BBC NEWS',
      imageUrl:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/AE34/production/_129169544_gettyimages-1459166551.jpg.webp',
      publishedTime: 18,
      title: 'Elon Musk: Twitter boss announces blue tick shake-up',
    ),
    BreakingNewsModel(
      category: 'Technology',
      publisher: 'BBC',
      imageUrl:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/9517/production/_129176183_gettyimages-644069149.jpg.webp',
      publishedTime: 5,
      title: 'AI could replace equivalent of 300 million jobs - report',
    ),
    BreakingNewsModel(
      category: 'News',
      publisher: 'The Guardian',
      imageUrl:
          'https://i.guim.co.uk/img/media/9538e30fd542b7ecae8cd8e6ed9e40d42939a8b7/0_86_4183_2509/master/4183.jpg?width=620&quality=45&dpr=2&s=none',
      publishedTime: 6,
      title:
          'Putin prepares Russia for ‘forever war’ with west as Ukraine invasion stalls',
    ),
    BreakingNewsModel(
      category: 'Astronomy',
      publisher: 'The Guardian',
      imageUrl:
          'https://i.guim.co.uk/img/media/86ae112ff09f4bc4ac9c5b2cda49af72472e1228/121_0_3635_2181/master/3635.jpg?width=620&quality=45&dpr=2&s=none',
      publishedTime: 12,
      title: 'Cosmic explosion last year may be ‘brightest ever seen’',
    ),
  ];

  List<RecommendationModel> recommendationList = [
    RecommendationModel(
      category: 'Science',
      publisher: 'Charlotte Van Campenhout',
      imageUrl:
          'https://www.reuters.com/resizer/zEPmcPBxuxWQXyQWEjxdyoUuxkc=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/QDOL5LNRENNRDO2MNKRDASPVYQ.jpg',
      publishedTime: 6,
      title: 'Giant meatball of extinct mammoth unveiled in The Netherlands',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Markets',
      publisher: 'Andrea Shalal',
      imageUrl:
          'https://www.reuters.com/resizer/7-KDts1mEThT-LXlPSVnbWs-YjI=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/FRKPAO4B7NODJIHWN3GJU4M55Y.jpg',
      publishedTime: 18,
      title:
          'Biden says White House response to banking stress is \'not over yet',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Autos & Transportation',
      publisher: 'REUTERS',
      imageUrl:
          'https://www.reuters.com/resizer/SluhnP5DyfRhGpLZjC9mMjIO-kQ=/848x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/PVPJAERBJBKRJDZCCW5NUY3RWU.jpg',
      publishedTime: 5,
      title: 'EV startup Lucid to cut about 18% of its workforce',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Retail & Consumer',
      publisher: 'The Guardian',
      imageUrl:
          'https://www.reuters.com/resizer/bIGBNTSAuEUoC76lwDmeVgz4HN4=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/OWXY4ERELVIJDMCO3F6D4W3X5U.jpg',
      publishedTime: 6,
      title: 'AMC Entertainment shares jump on report Amazon exploring a deal',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Technology',
      publisher: 'The Guardian',
      imageUrl:
          'https://www.reuters.com/resizer/tS92rW2RdWlOzQL2r5PEWAWnhgM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/DKJ3VR6KGBJQ5LUJINCOASQSWU.jpg',
      publishedTime: 12,
      title: 'Apple launches \'buy now, pay later\' service in US',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Science',
      publisher: 'Charlotte Van Campenhout',
      imageUrl:
          'https://www.reuters.com/resizer/zEPmcPBxuxWQXyQWEjxdyoUuxkc=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/QDOL5LNRENNRDO2MNKRDASPVYQ.jpg',
      publishedTime: 6,
      title: 'Giant meatball of extinct mammoth unveiled in The Netherlands',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Markets',
      publisher: 'Andrea Shalal',
      imageUrl:
          'https://www.reuters.com/resizer/7-KDts1mEThT-LXlPSVnbWs-YjI=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/FRKPAO4B7NODJIHWN3GJU4M55Y.jpg',
      publishedTime: 18,
      title:
          'Biden says White House response to banking stress is \'not over yet',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Autos & Transportation',
      publisher: 'REUTERS',
      imageUrl:
          'https://www.reuters.com/resizer/SluhnP5DyfRhGpLZjC9mMjIO-kQ=/848x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/PVPJAERBJBKRJDZCCW5NUY3RWU.jpg',
      publishedTime: 5,
      title: 'EV startup Lucid to cut about 18% of its workforce',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Retail & Consumer',
      publisher: 'The Guardian',
      imageUrl:
          'https://www.reuters.com/resizer/bIGBNTSAuEUoC76lwDmeVgz4HN4=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/OWXY4ERELVIJDMCO3F6D4W3X5U.jpg',
      publishedTime: 6,
      title: 'AMC Entertainment shares jump on report Amazon exploring a deal',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
    RecommendationModel(
      category: 'Technology',
      publisher: 'The Guardian',
      imageUrl:
          'https://www.reuters.com/resizer/tS92rW2RdWlOzQL2r5PEWAWnhgM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/DKJ3VR6KGBJQ5LUJINCOASQSWU.jpg',
      publishedTime: 12,
      title: 'Apple launches \'buy now, pay later\' service in US',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
  ];
}
