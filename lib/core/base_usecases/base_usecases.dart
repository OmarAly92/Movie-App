import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class BaseUseCases<T> {
  Future<Either<Failure, T>> call();
}
