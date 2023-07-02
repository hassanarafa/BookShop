import 'package:bookshop/features/home/data/repo/homerepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/bookmodel/item.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookCubitloading());
    var books = await homeRepo.fetchFeaturedBos();
    books.fold((failure) {
      emit(FeaturedBookCubitfailure(failure.errormessage));
    }, (books) {
      emit(FeaturedBookCubitsuccess(books));
    });
  }
}
