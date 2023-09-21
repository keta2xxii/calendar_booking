import 'package:calendar_booking_app/core/failure.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/features/authen/data/datasource/authen_remote_datasource.dart';
import 'package:calendar_booking_app/features/authen/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenRepository {
  Future<Either<Failure, User>> checkLogin();

  Future<Either<Failure, User>> refreshToken({required String refreshToken});

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

class AuthenRepositoryImpl implements AuthenRepository {
  @override
  Future<Either<Failure, User>> checkLogin() {
    return serviceLocator<AuthenRemoteDataSource>().checkLogin();
  }

  @override
  Future<Either<Failure, User>> refreshToken({required String refreshToken}) {
    return serviceLocator<AuthenRemoteDataSource>().refreshToken(
      refreshToken: refreshToken,
    );
  }

  @override
  Future<Either<Failure, User>> loginEmail({
    required String username,
    required String password,
  }) {
    return serviceLocator<AuthenRemoteDataSource>().loginEmail(
      username: username,
      password: password,
    );
  }

  @override
  Future<Either<Failure, User>> loginWithGoogle({
    required String token,
  }) {
    return serviceLocator<AuthenRemoteDataSource>().loginWithGoogle(
      token: token,
    );
  }

  @override
  Future<Either<Failure, User>> loginWithApple({
    required String token,
  }) {
    return serviceLocator<AuthenRemoteDataSource>().loginWithApple(
      token: token,
    );
  }

  @override
  Future<Either<Failure, void>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
