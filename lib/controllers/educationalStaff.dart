import 'package:acc/models/fetch/fetchEducationalStaff.dart';
import 'package:acc/services/educationalStaff.dart';
import 'package:get/get.dart';

class EducationalStaffController extends GetxController {
  var fetchSuccess = FetchEducationalStaff().obs;
  var fetchError = Error().obs;

  var loading = false.obs;

  void fetchEducationalStaff() async {
    loading(true);
    var response = await EducationalStaffServices.fetchEducationalStaff();
    if (response != null) {
      if (response is FetchEducationalStaff) {
        fetchSuccess.value = response;
        loading(false);
      } else if (response is Error) {
        fetchError.value = response;
        loading(false);
      }
    }
  }
}
