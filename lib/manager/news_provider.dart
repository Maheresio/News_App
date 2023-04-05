import 'package:flutter/material.dart';

import '../model/news_model.dart';

class NewsProvider with ChangeNotifier {
  int index = 0;
  void toggleSlides(int index) {
    this.index = index;
    notifyListeners();
  }

  List<NewsModel> breakingNewsList = [
    NewsModel(
        profileImageUrl:
            'https://www.logodesignlove.com/wp-content/uploads/2010/06/cnn-logo-white-on-red.jpg',
        category: 'Sports',
        author: 'CNN Indonesia',
        imageUrl:
            'https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg',
        publishedDate: '6 hours ago',
        title: 'Alexander wears modified helmet in road races',
        description:
            'The basic design of a bicycle has remained largely unchanged since its invention in the 19th century. The rider sits on the seat and uses their feet to pedal the bike, which powers the chain and turns the rear wheel. The handlebars are used to steer the bike, and brakes are used to slow down or stop the bike.',
        id: '${UniqueKey()}'),
    NewsModel(
      profileImageUrl:
          'https://www.logodesignlove.com/wp-content/uploads/2010/06/cnn-logo-white-on-red.jpg',
      category: 'Business',
      author: 'BBC NEWS',
      imageUrl:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/AE34/production/_129169544_gettyimages-1459166551.jpg.webp',
      publishedDate: '18 hours ago',
      title: 'Elon Musk: Twitter boss announces blue tick shake-up',
      description:
          'Musk attended Queen’s University in Kingston, Ontario, and in 1992 he transferred to the University of Pennsylvania, Philadelphia, where he received bachelor’s degrees in physics and economics in 1997. He enrolled in graduate school in physics at Stanford University in California, but he left after only two days because he felt that the Internet had much more potential to change society than work in physics. In 1995 he founded Zip2, a company that provided maps and business directories to online newspapers. In 1999 Zip2 was bought by the computer manufacturer Compaq for \$307 million, and Musk then founded an online financial services company, X.com, which later became PayPal, which specialized in transferring money online. The online auction eBay bought PayPal in 2002 for \$1.5 billion.',
      id: '${UniqueKey()}',
    ),
    NewsModel(
        profileImageUrl:
            'https://www.logodesignlove.com/wp-content/uploads/2010/06/cnn-logo-white-on-red.jpg',
        category: 'Technology',
        author: 'BBC',
        imageUrl:
            'https://ichef.bbci.co.uk/news/976/cpsprodpb/9517/production/_129176183_gettyimages-644069149.jpg.webp',
        publishedDate: '5 hours ago',
        title: 'AI could replace equivalent of 300 million jobs - report',
        description:
            'AI is a rapidly growing field that is transforming the way we live and work. It has numerous applications in industries such as healthcare, finance, transportation, and manufacturing, and is being used to create intelligent virtual assistants, self-driving cars, and personalized marketing.',
        id: '${UniqueKey()}'),
    NewsModel(
        profileImageUrl:
            'https://www.logodesignlove.com/wp-content/uploads/2010/06/cnn-logo-white-on-red.jpg',
        category: 'News',
        author: 'The Guardian',
        imageUrl:
            'https://i.guim.co.uk/img/media/9538e30fd542b7ecae8cd8e6ed9e40d42939a8b7/0_86_4183_2509/master/4183.jpg?width=620&quality=45&dpr=2&s=none',
        publishedDate: '6 hours ago',
        title:
            'Putin prepares Russia for ‘forever war’ with west as Ukraine invasion stalls',
        description:
            'During his time in office, Putin has overseen significant changes in Russia, including a return to a more centralized government system and increased control over the media. He has been criticized for his government \'s treatment of political dissidents and alleged violations of human rights, as well /as his country \'s involvement in conflicts such as the war in Syria and the conflict in Ukraine.',
        id: '${UniqueKey()}'),
    NewsModel(
        profileImageUrl:
            'https://www.logodesignlove.com/wp-content/uploads/2010/06/cnn-logo-white-on-red.jpg',
        category: 'Astronomy',
        author: 'The Guardian',
        imageUrl:
            'https://i.guim.co.uk/img/media/86ae112ff09f4bc4ac9c5b2cda49af72472e1228/121_0_3635_2181/master/3635.jpg?width=620&quality=45&dpr=2&s=none',
        publishedDate: '12 hours ago',
        title: 'Cosmic explosion last year may be ‘brightest ever seen’',
        description:
            'Gamma-ray bursts are some of the most energetic and violent events in the universe, and are thought to be caused by the collapse of massive stars or the collision of two neutron stars. They emit intense bursts of gamma-ray radiation, which can last from milliseconds to several minutes.',
        id: '${UniqueKey()}'),
  ];

  List<NewsModel> recommendationList = [
    NewsModel(
      id: '${UniqueKey()}',
      description: '',
      category: 'Science',
      author: 'Charlotte Van Campenhout',
      imageUrl:
          'https://www.reuters.com/resizer/zEPmcPBxuxWQXyQWEjxdyoUuxkc=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/QDOL5LNRENNRDO2MNKRDASPVYQ.jpg',
      publishedDate: 'Feb 27,2023',
      title: 'Giant meatball of extinct mammoth unveiled in The Netherlands',
      profileImageUrl:
          'https://www.shutterstock.com/image-photo/close-headshot-portrait-picture-smiling-260nw-1733598437.jpg',
    ),
    NewsModel(
      id: '${UniqueKey()}',
      description: '',
      category: 'Markets',
      author: 'Andrea Shalal',
      imageUrl:
          'https://www.reuters.com/resizer/7-KDts1mEThT-LXlPSVnbWs-YjI=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/FRKPAO4B7NODJIHWN3GJU4M55Y.jpg',
      publishedDate: 'Feb 27,2023',
      title:
          'Biden says White House response to banking stress is \'not over yet',
      profileImageUrl:
          'https://learn.microsoft.com/api/attachments/209536-360-f-364211147-1qglvxv1tcq0ohz3fawufrtonzz8nq3e.jpg?platform=QnA',
    ),
    NewsModel(
      id: '${UniqueKey()}',
      description: '',
      category: 'Autos & Transportation',
      author: 'REUTERS',
      imageUrl:
          'https://www.reuters.com/resizer/SluhnP5DyfRhGpLZjC9mMjIO-kQ=/848x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/PVPJAERBJBKRJDZCCW5NUY3RWU.jpg',
      publishedDate: 'Feb 27,2023',
      title: 'EV startup Lucid to cut about 18% of its workforce',
      profileImageUrl:
          'https://pbs.twimg.com/profile_images/1485050791488483328/UNJ05AV8_400x400.jpg',
    ),
    NewsModel(
      id: '${UniqueKey()}',
      description: '',
      category: 'Retail & Consumer',
      author: 'The Guardian',
      imageUrl:
          'https://www.reuters.com/resizer/bIGBNTSAuEUoC76lwDmeVgz4HN4=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/OWXY4ERELVIJDMCO3F6D4W3X5U.jpg',
      publishedDate: 'Feb 27,2023',
      title: 'AMC Entertainment shares jump on report Amazon exploring a deal',
      profileImageUrl:
          'https://media.istockphoto.com/id/1300972573/photo/pleasant-young-indian-woman-freelancer-consult-client-via-video-call.jpg?s=612x612&w=0&k=20&c=cbjgWR58DgUUETP6a0kpeiKTCxwJydyvXZXPeNTEOxg=',
    ),
    NewsModel(
      id: '${UniqueKey()}',
      description: '',
      category: 'Technology',
      author: 'The Guardian',
      imageUrl:
          'https://www.reuters.com/resizer/tS92rW2RdWlOzQL2r5PEWAWnhgM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/DKJ3VR6KGBJQ5LUJINCOASQSWU.jpg',
      publishedDate: 'Feb 27,2023',
      title: 'Apple launches \'buy now, pay later\' service in US',
      profileImageUrl:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    ),
  ];

  List<NewsModel> bookMarkList = [];
}
