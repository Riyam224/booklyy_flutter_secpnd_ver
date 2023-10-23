import 'package:booklyy/core/errors/failures.dart';
import 'package:booklyy/features/home/data/models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // todo methods
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();
   Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks( { required String  category});
}
