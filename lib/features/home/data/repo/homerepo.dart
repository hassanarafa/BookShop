import 'package:bookshop/features/home/data/models/bookmodel/item.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Item>>> fetchBestSellerBox();
  Future<Either<Failure, List<Item>>> fetchFeaturedBos();
}
