import 'package:dartz/dartz.dart';

import '../../models/news_model.dart';
import '../error/failure.dart';

typedef EitherType = Future<Either<Failure, List<NewsModel>>>;
