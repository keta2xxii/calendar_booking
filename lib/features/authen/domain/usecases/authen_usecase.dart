import 'package:calendar_booking_app/core/failure.dart';
import 'package:calendar_booking_app/core/request.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/features/authen/data/models/user_model.dart';
import 'package:calendar_booking_app/features/authen/data/repository/authen_repository.dart';
import 'package:calendar_booking_app/services/user_cache_service.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenUseCase {
  Future<Either<Failure, User>> checkLogin();

  Future<Either<Failure, User>> refreshToken({required String refreshToken});

  Future<Either<Failure, User>> loginEmail({
    required String username,
    required String password,
  });

  Future<Either<Failure, User>> loginWithGoogle({
    required String token,
  });
}

class AuthenUseCaseImpl extends AuthenUseCase {
  @override
  @override
  Future<Either<Failure, User>> checkLogin() async {
    final response = await serviceLocator<AuthenRepository>().checkLogin();
    if (response.isRight()) {
      final currentUser = serviceLocator<UserCacheService>().user;
      final remoteUser = response.getOrElse(() => User());
      // save user to local
      await serviceLocator<UserCacheService>().saveUser(
        remoteUser.copyWith(
          token: currentUser?.token,
          refreshToken: currentUser?.refreshToken,
        ),
      );
    }

    return response;
    // call refresh token if token is expired
    // return await serviceLocator<AuthenRepository>()
    //     .refreshToken(refreshToken: token);
  }

  @override
  Future<Either<Failure, User>> refreshToken({
    required String refreshToken,
  }) async {
    final response = await serviceLocator<AuthenRepository>()
        .refreshToken(refreshToken: refreshToken);
    if (response.isRight()) {
      final remoteAuthen = response.getOrElse(() => User());
      await serviceLocator<UserCacheService>().saveUser(remoteAuthen);
    }

    return response;
  }

  @override
  Future<Either<Failure, User>> loginEmail({
    required String username,
    required String password,
  }) async {
    final response = await serviceLocator<AuthenRepository>().loginEmail(
      username: username,
      password: password,
    );
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      // save user to local
      await serviceLocator<UserCacheService>().saveUser(remoteUser);
    }

    return response;
  }

  @override
  Future<Either<Failure, User>> loginWithGoogle({
    required String token,
  }) async {
    final response = await serviceLocator<AuthenRepository>().loginWithGoogle(
      token: token,
    );
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      // save user to local
      await serviceLocator<UserCacheService>().saveUser(remoteUser);
    }

    return response;
  }

  @override
  Future<Either<Failure, User>> loginWithApple({
    required String token,
  }) async {
    final response = await serviceLocator<AuthenRepository>().loginWithApple(
      token: token,
    );
    if (response.isRight()) {
      final remoteUser = response.getOrElse(() => User());
      // save user to local
      await serviceLocator<UserCacheService>().saveUser(remoteUser);
    }

    return response;
  }

  @override
  Future<Either<Failure, void>> logout() async {
    final response = await serviceLocator<AuthenRepository>().logout();
    if (response.isRight()) {
      await serviceLocator<UserCacheService>().clearUser();
      serviceLocator<Request>().removeAuthorization();
    }

    return response;
  }
}
