import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:services_repository/services_repository.dart';

part 'states.dart';


class ServicesBloc extends Cubit<ServicesStates> {
  ServicesBloc({required ServicesRepository servicesRepository})
      : _servicesRepository = servicesRepository,
        super(const GetServicesLoading());
  static ServicesBloc get(context) => BlocProvider.of(context);
  final ServicesRepository _servicesRepository;

  Future<List<ServicesModel>> getServices() async {
    List<ServicesModel> services = [];
    emit(const GetServicesLoading());
    try {
      services = await _servicesRepository.getServices();

      emit(GetServicesSuccess(services));
    } catch (e) {
      emit(GetServicesFailed(error: e.toString()));
    }

    return services;
  }
}
