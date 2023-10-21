// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  // ignore: deprecated_member_use
  factory ServerFailure.fromDioError(DioError DioError) {
    // ignore: deprecated_member_use
    switch (DioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('connection timeout ');

      case DioErrorType.sendTimeout:
        return ServerFailure('send timeout ');
      case DioErrorType.receiveTimeout:
        return ServerFailure('receive time out ');
      case DioErrorType.badResponse:
        return ServerFailure('bad response try again');
      case DioErrorType.cancel:
        return ServerFailure('cancel connection');
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
        return ServerFailure('cancel connection');
      case DioExceptionType.connectionError:
        // TODO: Handle this case.
        return ServerFailure('cancel connection');
      case DioExceptionType.unknown:
        // TODO: Handle this case.
        return ServerFailure('cancel connection');
    }
    throw 'un onown error';
  }

//   Factory ServerFailure.fromResponse(int statusCode , dynamic ) {
//     if (statusCode == 400 ||  statusCode == 401 || statusCode == 403) {

//  return ServerFailure('error');
//     }
//   }
}
