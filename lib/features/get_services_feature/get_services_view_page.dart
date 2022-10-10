import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mawasim_task/features/get_services_feature/get_services_view.dart';
import 'package:services_repository/services_repository.dart';

import 'bloc/cubit.dart';

/// For BloC Provider
class ServicesViewPage extends StatelessWidget {
  const ServicesViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ServicesRepository servicesRepository =
        RepositoryProvider.of<ServicesRepository>(context);

    return BlocProvider<ServicesBloc>(
      create: (context) =>
          ServicesBloc(servicesRepository: servicesRepository)..getServices(),
      child: const ServicesViewForm(),
    );
  }
}
