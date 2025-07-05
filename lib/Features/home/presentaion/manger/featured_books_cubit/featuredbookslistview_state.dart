part of 'featuredbookslistview_cubit.dart';

@immutable
sealed class FeaturedbookslistviewState {}

final class FeaturedbookslistviewInitial extends FeaturedbookslistviewState {}

final class FeaturedbookslistviewLoading extends FeaturedbookslistviewState {}

final class FeaturedbookslistviewFailure extends FeaturedbookslistviewState {
  final String errormessege;

  FeaturedbookslistviewFailure(this.errormessege);
}

final class FeaturedbookslistviewSuccess extends FeaturedbookslistviewState {
  final List<Bookmodel> books;

  FeaturedbookslistviewSuccess(this.books);
}
