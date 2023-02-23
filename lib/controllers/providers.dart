import 'package:appwrite/appwrite.dart';
import 'package:cowrite/controllers/repositories/auth_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/constants.dart';

abstract class Dependency {
  static Provider<Client> get client => _clientProvider;
  static Provider<Databases> get database => _databaseProvider;
  static Provider<Account> get account => _accountProvider;
  static Provider<Realtime> get realtime => _realtimeProvider;
}

abstract class Repository {
  static Provider<AuthRepository> get auth => AuthRepository.provider;
}

final _clientProvider = Provider<Client>(
  (ref) => Client()
    ..setProject(appwriteProjectId)
    ..setSelfSigned(status: true)
    ..setEndpoint(appwriteEndpoint),
);

final _databaseProvider =
    Provider<Databases>((ref) => Databases(ref.read(_clientProvider)));

final _accountProvider = Provider<Account>(
  (ref) => Account(ref.read(_clientProvider)),
);

final _realtimeProvider =
    Provider<Realtime>((ref) => Realtime(ref.read(_clientProvider)));
