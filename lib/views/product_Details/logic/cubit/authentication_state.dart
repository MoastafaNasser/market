part of 'authentication_cubit.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

final class LogInSuccess extends AuthenticationState {}

final class LogInLoading extends AuthenticationState {}

final class LogInError extends AuthenticationState {
  final String message;

  LogInError({required this.message});
}

final class SingUpSuccess extends AuthenticationState {}

final class SingUpLoading extends AuthenticationState {}

final class SingUpError extends AuthenticationState {
  final String message;

  SingUpError({required this.message});
}
