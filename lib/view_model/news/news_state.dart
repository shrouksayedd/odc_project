part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}
class Newsdone extends NewsState {}
class Newserror extends NewsState {}
