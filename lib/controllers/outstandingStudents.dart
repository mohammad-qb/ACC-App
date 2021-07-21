import 'package:acc/models/fetch/fetchOutstandingStufdents.dart';
import 'package:acc/services/outstandingStudents.dart';
import 'package:get/get.dart';

class OutstandingStudentsController extends GetxController {
  var fetchSuccess = FetchOutstandingStudents().obs;
  var fetchError = Error().obs;

  var loading = false.obs;

  @override
  onInit() {
    fetchOutstandingStudents();
    super.onInit();
  }

  void fetchOutstandingStudents() async {
    loading(true);
    var response = await OutstandingStudentsServices.fetchOutstandingStudents();
    if (response != null) {
      if (response is FetchOutstandingStudents) {
        fetchSuccess.value = response;
        loading(false);
      } else if (response is Error) {
        fetchError.value = response;
        loading(false);
      }
    }
  }
}
