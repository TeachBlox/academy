

import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @action
  setEmail(String val) => email = val;

  @action
  setPassword(String val) => password = val;
}