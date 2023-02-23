import 'package:equatable/equatable.dart';

import '../../models/app_error.dart';

class StateBase extends Equatable {
  final AppError? error;

  const StateBase({this.error});

  @override
  List<Object?> get props => [error];
}
