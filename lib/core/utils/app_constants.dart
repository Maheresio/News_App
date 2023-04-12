import 'package:dartz/dartz.dart';

import '../../model/news_model/news_model.dart';
import '../error/failure.dart';

typedef EitherType = Future<Either<Failure, List<NewsModel>>>;
