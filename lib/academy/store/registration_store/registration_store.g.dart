// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistrationStore on _RegistrationStore, Store {
  late final _$emailAtom =
      Atom(name: '_RegistrationStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_RegistrationStore.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$confirmPasswordAtom =
      Atom(name: '_RegistrationStore.confirmPassword', context: context);

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  late final _$fullNameAtom =
      Atom(name: '_RegistrationStore.fullName', context: context);

  @override
  String get fullName {
    _$fullNameAtom.reportRead();
    return super.fullName;
  }

  @override
  set fullName(String value) {
    _$fullNameAtom.reportWrite(value, super.fullName, () {
      super.fullName = value;
    });
  }

  late final _$_RegistrationStoreActionController =
      ActionController(name: '_RegistrationStore', context: context);

  @override
  dynamic setEmail(String val) {
    final _$actionInfo = _$_RegistrationStoreActionController.startAction(
        name: '_RegistrationStore.setEmail');
    try {
      return super.setEmail(val);
    } finally {
      _$_RegistrationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String val) {
    final _$actionInfo = _$_RegistrationStoreActionController.startAction(
        name: '_RegistrationStore.setPassword');
    try {
      return super.setPassword(val);
    } finally {
      _$_RegistrationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConfirmPassword(String val) {
    final _$actionInfo = _$_RegistrationStoreActionController.startAction(
        name: '_RegistrationStore.setConfirmPassword');
    try {
      return super.setConfirmPassword(val);
    } finally {
      _$_RegistrationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFullName(String val) {
    final _$actionInfo = _$_RegistrationStoreActionController.startAction(
        name: '_RegistrationStore.setFullName');
    try {
      return super.setFullName(val);
    } finally {
      _$_RegistrationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
confirmPassword: ${confirmPassword},
fullName: ${fullName}
    ''';
  }
}
