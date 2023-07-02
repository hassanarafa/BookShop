import 'package:bookshop/core/error/failure.dart';
import 'package:bookshop/core/utiliz/api-service.dart';

import 'package:bookshop/features/home/data/models/bookmodel/item.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'homerepo.dart';

class Homerepoimp implements HomeRepo {
  final ApiService apiservice;

  Homerepoimp(this.apiservice);
  @override
  Future<Either<Failure, List<Item>>> fetchNewestBox() async {
    try {
      var data = await apiservice.get(
          endpoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &subject=&q=subject:Programming");
      return right(data as List<Item>);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(Serverfailure.fromDioError(e));
      }
      return left(Serverfailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchFeaturedBos() {
    // TODO: implement fetchFeaturedBos
    throw UnimplementedError();
  }
}
