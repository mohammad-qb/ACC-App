import 'package:acc/models/fetch/fetchHelperStudents.dart';
import 'package:acc/services/helperStudents.dart';
import 'package:get/get.dart';

class HelperStudentsController extends GetxController {
  var fetchSuccess = FetchHelperStudents().obs;
  var fetchError = Error().obs;

  var loading = false.obs;

  @override
  onInit() {
    fetchHelperStudents();
    super.onInit();
  }

  void fetchHelperStudents() async {
    loading(true);
    var response = await HelperStudentsServices.fetchHelperStudents();
    if (response != null) {
      if (response is FetchHelperStudents) {
        fetchSuccess.value = response;
        loading(false);
      } else if (response is Error) {
        fetchError.value = response;
        loading(false);
      }
    }
  }
}
