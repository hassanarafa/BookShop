import 'package:bookshop/core/error/failure.dart';

import 'package:bookshop/features/home/data/models/bookmodel/item.dart';

import 'package:dartz/dartz.dart';

import 'homerepo.dart';

class Homerepoimp implements HomeRepo {
  @override
  Future<Either<Failure, List<Item>>> fetchBestSellerBox() {
    // TODO: implement fetchBestSellerBox
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Item>>> fetchFeaturedBos() {
    // TODO: implement fetchFeaturedBos
    throw UnimplementedError();
  }
}
