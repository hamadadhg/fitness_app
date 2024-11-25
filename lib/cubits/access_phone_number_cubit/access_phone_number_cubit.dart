import 'package:fitness_app/states/access_phone_number_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccessPhoneNumberCubit extends Cubit<AccessPhoneNumberState> {
  AccessPhoneNumberCubit()
      : super(
          InitialState(),
        );
  String? phoneNumberInCubit;
  void addPhoneNumberMethod({required String phoneNumberInMethod}) {
    phoneNumberInCubit = phoneNumberInMethod;
    emit(
      SuccessState(),
    );
  }
}
