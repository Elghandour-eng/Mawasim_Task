part of'../get_services_view.dart';
class ServicesConsumer extends StatelessWidget {
  const ServicesConsumer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServicesBloc,ServicesStates>(
        builder: (context,state){
          if(state is GetServicesLoading) {
            return Flexible(
                fit: FlexFit.tight,
                child: SpinKitFadingCircle(
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: index.isEven ? Colors.white : Colors.green,
                      ),
                    );
                  },
                ));
          } else if( state is GetServicesFailed){
            return const Flexible(
                fit: FlexFit.tight,
                child:Center(child: CustomText(text: 'خطا في تحميل الخدمات',color: Colors.white,)));
          } else if (state is GetServicesSuccess ){
            return Expanded(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.services.length,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: .75),
                  itemBuilder: (context,i){
                    return
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 110.h,
                          width: .4.sw,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5)),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: CachedNetworkImage(
                                      height: 100.h,
                                      width: .3.sw,
                                      imageUrl:state.services[i].imagePath??'',
                                      fit: BoxFit.fill,
                                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                                      const Center(child:CircularProgressIndicator()),
                                      errorWidget: (context, url, error) =>const Icon(Icons.error),
                                    ),
                                  )),

                              const SizedBox(height: 10,),
                              CustomText(text: state.services[i].title,color: Colors.white,
                                fontWeight: FontWeight.w200,fontSize: 13.sp,)

                            ],
                          ),
                        ),
                      );

                  }),
            );
          } return const SizedBox();
        },
        listener: (context,state){});
  }
}