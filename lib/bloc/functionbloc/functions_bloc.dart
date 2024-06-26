import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidhayah/model/usermodel.dart';
import 'package:hidhayah/secrets/secrets.dart';
import 'package:hidhayah/utils/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

part 'functions_event.dart';
part 'functions_state.dart';

class FunctionsBloc extends Bloc<FunctionsEvent, FunctionsState> {
  FunctionsBloc() : super(FunctionsInitial()) {
    on<CheckStatusEvent>(_checkStatus);
    on<LogoutEvent>(_logout);
  }
  Future<void> _checkStatus(
      CheckStatusEvent event, Emitter<FunctionsState> emit) async {
        emit(state.copyWith(status: Status.loading));
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getString(Constants.LOGINTOKEN);
    UserModel user;
    if (isLoggedIn != null) {
      print('sp; ${isLoggedIn}');
      if (isLoggedIn.isNotEmpty) {
        print('sp notempt $isLoggedIn');
        // emit(state.copyWith(status: Status.loggedIn));
        final Map<String, String>? header = {
          'Content-Type': 'application/json',
          'x-auth-token': isLoggedIn,
        };
        try {
          final response = await http.get(
            Uri.parse('${Secrets.authUrl}${Secrets.getUser}'),
            headers: header,
          );
          print(response.body);
          final data = jsonDecode(response.body);
          if (response.statusCode == 200) {
            user = UserModel.fromMap(data);
            print('user name: ${user.name}');
            // emit(GetUserState(user: user));
            // emit(state.copyWith(user:user));
            print('success');
            emit(state.copyWith(status: Status.loggedIn,user: user));
          } else {

            // emit(GetUserErrorState(msg: data['msg']));
            emit(state.copyWith(status: Status.notLoggedIn));
            print('not success');
          }
        } catch (e) {
          print('excetion $e');
          // emit(GetUserErrorState(msg: e.toString()));
          emit(state.copyWith(status: Status.notLoggedIn));
        }
      } else {
        print('sp empt $isLoggedIn');
        emit(state.copyWith(status: Status.notLoggedIn));
      }
    } else {
      emit(state.copyWith(status: Status.notLoggedIn));
    }
  }

  Future<void> _logout(LogoutEvent event, Emitter<FunctionsState> emit) async {
    emit(state.copyWith(status: Status.loading));
    var sharedPref = await SharedPreferences.getInstance();
    await sharedPref.remove(Constants.LOGINTOKEN);
    emit(state.copyWith(status: Status.notLoggedIn));
  }
}
