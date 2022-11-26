import 'package:dartz/dartz.dart';
import 'package:number_trivia_clean_architecture_tdd/core/error/exceptions.dart';
import 'package:number_trivia_clean_architecture_tdd/core/network/network_info.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/data/data_source/number_trivia_local_data_source.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/data/data_source/number_trivia_remote_data_source.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/entity/number_trivia.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/repository/number_trivia_repository.dart';

import '../../../../core/error/failures.dart';


typedef Future<NumberTrivia> _ConcreteOrRandomChooser();

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(
      int? number,
      ) async {
    return null;
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async {
    return null;
  }

}