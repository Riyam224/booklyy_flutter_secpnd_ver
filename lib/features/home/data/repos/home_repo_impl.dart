// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:booklyy/core/errors/failures.dart';
import 'package:booklyy/core/utils/api_service.dart';
import 'package:booklyy/features/home/data/models/books_model/books_model.dart';
import 'package:booklyy/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
          endPoints:
              'volumes?Filtering=free-ebooks&sorting=news&q=subject:programming');
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
        return right(books);
      }
    } catch (e) {
      return left(ServerFailure());
    }

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
