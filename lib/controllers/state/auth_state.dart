import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/app_error.dart';
import '../../utils/logging.dart';
import '../providers.dart';
import '../repositories/repo_exception.dart';
import 'state_base.dart';

final _authServiceProvider =
    StateNotifierProvider<AuthService, AuthState>((ref) => AuthService(ref));

class AuthService extends StateNotifier<AuthState> {
  AuthService(this._ref)
      : super(const AuthState.unauthenticated(isLoading: true)) {
    refresh();
  }

  static StateNotifierProvider<AuthService, AuthState> get provider =>
      _authServiceProvider;

  final Ref _ref;

  Future<void> refresh() async {
    try {
      final user = await _ref.read(Repository.auth).get();
      setUser(user);
    } on RepositoryException catch (_) {
      logger.info('Not authenticated');
      state = const AuthState.unauthenticated();
    }
  }

  void setUser(Account user) {
    logger.info('Authentication successful, setting $user');
    state = state.copyWith(user: user, isLoading: false);
  }

  Future<void> signOut() async {
    try {
      await _ref.read(Repository.auth).deleteSession(sessionId: 'current');
      logger.info('Sign out successful');
      state = const AuthState.unauthenticated();
    } on RepositoryException catch (e) {
      state = state.copyWith(error: AppError(message: e.message));
    }
  }
}

class AuthState extends StateBase {
  final Account? user;
  final bool isLoading;

  const AuthState({
    this.user,
    this.isLoading = false,
    AppError? error,
  }) : super(error: error);

  const AuthState.unauthenticated({this.isLoading = false})
      : user = null,
        super(error: null);

  @override
  List<Object?> get props => [user, isLoading, error];

  bool get isAuthenticated => user != null;

  AuthState copyWith({
    Account? user,
    bool? isLoading,
    AppError? error,
  }) =>
      AuthState(
        user: user ?? this.user,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error,
      );
}
