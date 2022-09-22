import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mawasim_task/core/color_manager/color_manager.dart';
import 'package:mawasim_task/features/get_services_feature/bloc/cubit.dart';
import 'package:mawasim_task/widgets/custom_text_widget.dart';
part 'units/title_services.dart';
part 'units/services_consumer.dart';

class ServicesViewForm extends StatelessWidget {
  const ServicesViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.textColor2,
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
         const TitleOfServices(),
         const  ServicesConsumer()
        ],
      ),
    );
  }
}



