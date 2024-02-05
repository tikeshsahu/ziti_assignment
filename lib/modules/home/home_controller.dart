

import 'package:get/get.dart';
import 'package:ziti_assignment/class/event_class.dart';
import 'package:ziti_assignment/utils/app_data.dart';

class HomeController extends GetxController{

  final RxString _eventYear = RxString('');

  String get eventYear => _eventYear.value;

  final RxList<Event> _eventsList = RxList([]);

  List get eventsList => _eventsList;

   updateEventYear(String value) {
    _eventYear.value = value;
  }

  @override
  void onInit() {
    _eventsList.addAll(allEvents);
    super.onInit();
  }
}