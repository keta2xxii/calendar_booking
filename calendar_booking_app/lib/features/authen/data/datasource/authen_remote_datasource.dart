import 'package:calendar_booking_app/core/failure.dart';
import 'package:calendar_booking_app/core/request.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/features/authen/data/datasource/authen_api.dart';
import 'package:calendar_booking_app/features/authen/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenRemoteDataSource {
  Future<Either<Failure, User>> checkLogin();

  Future<Either<Failure, User>> refreshToken({
    required String refreshToken,
  });

  Future<Either<Failure, User>> loginEmail({
    required String username,
    required String password,
  });

  Future<Either<Failure, User>> loginWithGoogle({
    required String token,
  });

  Future<Either<Failure, User>> loginWithApple({
    required String token,
  });

  Future<Either<Failure, void>> logout();
}

class AuthenRemoteDataSourceImpl implements AuthenRemoteDataSource {
  final Request request = serviceLocator<Request>();

  @override
  Future<Either<Failure, User>> checkLogin() async {
    try {
      final response = await request.get(
        AuthenApi.checkLogin,
      );
      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data['result']));
      }

      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return Left(ExceptionFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> refreshToken({
    required String refreshToken,
  }) async {
    try {
      final response = await request.get(
        AuthenApi.checkLogin,
      );
      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data));
      }

      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return Left(ExceptionFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> loginEmail({
    required String username,
    required String password,
  }) async {
    try {
      final response = await request.post(
        AuthenApi.loginEmail,
        data: {
          'username': username,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data));
      }

      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return Left(ExceptionFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> loginWithGoogle({required String token}) async {
    try {
      final response = await request.post(
        AuthenApi.loginGoogle,
        data: {
          'token': token,
        },
      );
      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data));
      }

      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return Left(ExceptionFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> loginWithApple({required String token}) async {
    try {
      final response = await request.post(
        AuthenApi.loginApple,
        data: {
          'token': token,
        },
      );
      if (response.statusCode == 200) {
        return Right(User.fromJson(response.data));
      }

      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return Left(ExceptionFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      final response = await request.post(
        AuthenApi.logout,
      );
      if (response.statusCode == 201) {
        return const Right(null);
      }

      return Left(ConnectionFailure(response.data['message']));
    } catch (e) {
      return Left(ExceptionFailure(e.toString()));
    }
  }
}
