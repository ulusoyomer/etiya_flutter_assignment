import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

class ConnectionFailure extends Failure {
  const ConnectionFailure({required String message}) : super(message: message);
}


class InValidProductId extends Failure {
  const InValidProductId({required String message}) : super(message: message);
}

class AlreadyExistFailure extends Failure {
  const AlreadyExistFailure({required String message}) : super(message: message);
}