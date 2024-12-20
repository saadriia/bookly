import 'package:dio/dio.dart';
import 'package:dio/src/dio_exception.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFAilure extends Failure {
  //final String message;
  ServerFAilure(super.errMessage);

  factory ServerFAilure.fromDioError(DioException dioexeption) {
    switch (dioexeption.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFAilure('connectionTimeout Api Server');
      //  break;
      case DioExceptionType.sendTimeout:
        return ServerFAilure('sendTimeout Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFAilure('sendTimeout Api Server');
      case DioExceptionType.badCertificate:
        return ServerFAilure('sendTimeout Api Server');
      case DioExceptionType.badResponse:
        return ServerFAilure.fromResponse(
            dioexeption.response!.statusCode!, dioexeption.response!.data);
      case DioExceptionType.cancel:
        return ServerFAilure('cancel Api Server');
      case DioExceptionType.connectionError:
        return ServerFAilure('no  Api Server connction');
      case DioExceptionType.unknown:
        return ServerFAilure('sendTimeout Api Server');
      default:
        return ServerFAilure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFAilure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFAilure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFAilure('Your request not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFAilure('Internal Server error, please try later');
    } else {
      return ServerFAilure('Opps There was an Error, Please try again');
    }
  }
}
