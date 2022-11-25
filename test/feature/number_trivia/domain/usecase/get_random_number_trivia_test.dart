import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia_clean_architecture_tdd/core/usecase/usecase.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/entity/number_trivia.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/repository/number_trivia_repository.dart';
import 'package:number_trivia_clean_architecture_tdd/feature/number_trivia/domain/usecase/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetRandomNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });

  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test(
    'should get trivia from the repository',
        () async {
      // arrange
      when(mockNumberTriviaRepository.getRandomNumberTrivia())
          .thenAnswer((_) async => const Right(tNumberTrivia));
      // act
      final result = await usecase(NoParams());
      // assert
      expect(result, const Right(tNumberTrivia));
      verify(mockNumberTriviaRepository.getRandomNumberTrivia());
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}