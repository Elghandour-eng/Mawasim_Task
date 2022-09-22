
part of'../get_services_view.dart';

class TitleOfServices extends StatelessWidget {
  const TitleOfServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const CustomText(
            text: ' الخدمات الرئيسيه',
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          const SizedBox(width: 10,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(5)),
            child:const Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,),
          )
        ],
      ),
    );
  }
}