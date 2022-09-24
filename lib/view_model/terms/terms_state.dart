part of 'terms_cubit.dart';

@immutable
abstract class TermsState {}

class TermsInitial extends TermsState {}
class termsdone extends TermsState {}
class termserror extends TermsState {}
