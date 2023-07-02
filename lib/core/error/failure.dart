import 'package:dio/dio.dart';

abstract class Failure {
  final String errormessage;

  Failure(this.errormessage);
}

class Serverfailure extends Failure {
  Serverfailure(super.errormessage);
  factory Serverfailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return Serverfailure("Connection Timeout With ApiServer");
      case DioExceptionType.receiveTimeout:
        return Serverfailure("Receive Timeout With ApiServer");
      case DioExceptionType.sendTimeout:
        return Serverfailure("Send Timeout With ApiServer");
      case DioExceptionType.badResponse:
        return Serverfailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return Serverfailure("Request Api Was Cancelled");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return Serverfailure("No Internet Connection");
        }
        return Serverfailure("Unexpected error, try again later");

      default:
        return Serverfailure("There Was An Error");
    }
  }
  factory Serverfailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return Serverfailure(response['error']['message']);
    } else if (statusCode == 403) {
      return Serverfailure("Your Request Not Found, Try Again Later");
    } else if (statusCode == 500) {
      return Serverfailure("Internal Server Error, Try Again Later");
    } else {
      return Serverfailure("There Was An Error");
    }
  }
}
