import 'package:dartz/dartz.dart';
import 'package:number_trivia_clean_architecture_tdd/core/usecase/usecase.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/entity/number_trivia.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/repository/number_trivia_repository.dart';

import '../../../../core/error/failures.dart';


class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}