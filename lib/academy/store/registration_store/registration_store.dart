import 'package:mobx/mobx.dart';

part 'registration_store.g.dart';

class RegistrationStore = _RegistrationStore with _$RegistrationStore;

abstract class _RegistrationStore with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String confirmPassword = '';

  @observable
  String fullName = '';

  @action
  setEmail(String val) => email = val;

  @action
  setPassword(String val) => password = val;

  @action
  setConfirmPassword(String val) => confirmPassword = val;

  @action
  setFullName(String val) => fullName = val;
}

final registrationStore = RegistrationStore();