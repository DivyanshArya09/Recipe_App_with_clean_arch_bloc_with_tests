import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/core/error/failure.dart';
import 'package:recipe_app/core/usecase/use_case.dart';
import 'package:recipe_app/features/home/domain/entites/random_recipe_entity.dart';
import 'package:recipe_app/features/home/domain/repositories/home_repository.dart';

class GetRandomRecipeUseCase
    implements UseCase<List<RandomRecipeEntity>, RandomRecipeParams> {
  final HomeRepository repository;

  const GetRandomRecipeUseCase({required this.repository});
  @override
  Future<Either<Failure, List<RandomRecipeEntity>>> call(
      RandomRecipeParams params) {
    return repository.getRandomRecipes(params.number);
  }
}

class RandomRecipeParams extends Equatable {
  const RandomRecipeParams({required this.number});
  final int number;
  @override
  List<Object?> get props => [];
}
