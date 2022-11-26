
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia_clean_architecture_tdd/core/network/network_info.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/data/data_source/number_trivia_local_data_source.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/data/data_source/number_trivia_remote_data_source.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/data/repository/number_trivia_repository_impl.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/entity/number_trivia.dart';

class MockRemoteDataSource extends Mock
    implements NumberTriviaRemoteDataSource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late NumberTriviaRepositoryImpl repository;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = NumberTriviaRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

}