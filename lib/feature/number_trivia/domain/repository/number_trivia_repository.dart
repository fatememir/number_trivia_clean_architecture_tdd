import 'package:dartz/dartz.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/entity/number_trivia.dart';

import '../../../../core/error/failures.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}