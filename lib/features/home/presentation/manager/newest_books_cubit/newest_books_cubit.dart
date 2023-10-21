import 'package:bloc/bloc.dart';
import 'package:booklyy/features/home/data/models/books_model/books_model.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());
}
