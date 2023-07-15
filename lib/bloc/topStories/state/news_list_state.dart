import 'package:equatable/equatable.dart';

import '../../../pages/tab/topStories/model/top_news.dart';

abstract class NewsListOfState extends Equatable {
  @override
  List<Object?> get props => [];
}

class NewsListInit extends NewsListOfState {}

class NewsListLoading extends NewsListOfState {}

class NewsListLoaded extends NewsListOfState {
  final List<Articles> articles;

  NewsListLoaded({required this.articles});
}

class NewsListError extends NewsListOfState {
  final error;

  NewsListError({this.error});
}
