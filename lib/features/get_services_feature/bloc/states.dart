part of 'cubit.dart';

abstract class ServicesStates extends Equatable {
  const ServicesStates();
}

class GetServicesSuccess extends ServicesStates {
  final List<ServicesModel> services;
  const GetServicesSuccess(this.services);
  @override
  List<Object?> get props => [services];
}

class GetServicesLoading extends ServicesStates {
  const GetServicesLoading();
  @override
  List<Object?> get props => [];
}

class GetServicesFailed extends ServicesStates {
  final String? error;
  const GetServicesFailed({this.error});
  @override
  List<Object?> get props => [error];
}
