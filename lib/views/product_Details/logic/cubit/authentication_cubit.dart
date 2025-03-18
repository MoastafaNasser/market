import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  SupabaseClient client = Supabase.instance.client;
  Future<void> login({required String email, required String password}) async {
    emit(LogInLoading());
    try {
      client.auth.signInWithPassword(password: password, email: email);
      emit(LogInSuccess());
    } on Exception catch (e) {
      log(e.toString() as num);
      emit(LogInError(message: e.toString()));
    } catch (e) {
      log(e.toString() as num);
      emit(LogInError(message: e.toString()));
    }
  }

  Future<void> Regaster(
      {required String name,
      required String email,
      required String password}) async {
    emit(SingUpLoading());
    try {
      client.auth.signUp(password: password, email: email);
      emit(SingUpSuccess());
    } on Exception catch (e) {
      log(e.toString() as num);
      emit(SingUpError(message: e.toString()));
    } catch (e) {
      log(e.toString() as num);
      emit(SingUpError(message: e.toString()));
    }
  }
}
