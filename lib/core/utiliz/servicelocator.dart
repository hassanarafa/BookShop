import 'package:bookshop/features/home/data/repo/homerepo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api-service.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<Homerepoimp>(Homerepoimp(getIt.get<ApiService>()));
}
