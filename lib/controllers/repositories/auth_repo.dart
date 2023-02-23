import 'dart:async';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as am;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';
import 'repo_exception.dart';

final _authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepository(ref));

class AuthRepository with RepositoryExceptionMixin {
  const AuthRepository(this._ref);

  static Provider<AuthRepository> get provider => _authRepositoryProvider;

  final Ref _ref;

  Account get _account => _ref.read(Dependency.account);

  Future<Account> create({
    required String email,
    required String password,
    required String name,
  }) {
    return exceptionHandler(
      _account.create(
        userId: 'unique()',
        email: email,
        password: password,
        name: name,
      ),
    );
  }

  Future<am.Session> createSession({
    required String email,
    required String password,
  }) {
    return exceptionHandler(
      _account.createEmailSession(email: email, password: password),
    );
  }

  Future<Account> get() {
    return exceptionHandler(
      _account.get(),
    );
  }

  Future<void> deleteSession({required String sessionId}) {
    return exceptionHandler(
      _account.deleteSession(sessionId: sessionId),
    );
  }
}
