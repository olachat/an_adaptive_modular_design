import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:imanager/imanager.dart';
import 'package:login/src/login_module.dart';

void main() {
  group('ILoginModule', () {
    late LoginModule loginModule;

    setUp(() {
      loginModule = LoginModule();
      loginModule.registerWith();
    });

    test('getLoginPage returns a Widget', () {
      final loginPage = Container();
      when(loginModule.getLoginPage()).thenReturn(loginPage);

      expect(loginModule.getLoginPage(), isA<Widget>());
      expect(loginModule.getLoginPage(), equals(loginPage));
    });

    test('getRegisterPage returns a Widget', () {
      final registerPage = Container();
      when(loginModule.getRegisterPage()).thenReturn(registerPage);

      expect(loginModule.getRegisterPage(), isA<Widget>());
      expect(loginModule.getRegisterPage(), equals(registerPage));
    });

    test('isLogin returns a boolean', () {
      when(loginModule.isLogin()).thenReturn(true);

      expect(loginModule.isLogin(), isA<bool>());
      expect(loginModule.isLogin(), isTrue);
    });

    test('isFinishedRegister returns a boolean', () {
      when(loginModule.isFinishedRegister()).thenReturn(false);

      expect(loginModule.isFinishedRegister(), isA<bool>());
      expect(loginModule.isFinishedRegister(), isFalse);
    });
  });
}
