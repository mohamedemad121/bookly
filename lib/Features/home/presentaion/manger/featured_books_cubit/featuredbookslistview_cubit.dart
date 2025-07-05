import 'package:bloc/bloc.dart';
import 'package:bookley/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookley/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featuredbookslistview_state.dart';

class FeaturedbookslistviewCubit extends Cubit<FeaturedbookslistviewState> {
  FeaturedbookslistviewCubit(this.homeRepo)
    : super(FeaturedbookslistviewInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedbookslistviewLoading());

    var result = await homeRepo.fetchFeaturesBook();

    result.fold(
      (failure) {
        emit(FeaturedbookslistviewFailure(failure.errMessege));
      },
      (books) {
        emit(FeaturedbookslistviewSuccess(books));
      },
    );
  }
}
