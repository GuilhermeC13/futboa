import 'package:dartz/dartz.dart';
import 'package:futboa/core/usecase/errors/failures.dart';

abstract class Usecase<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}
