import 'package:acc/models/fetch/fetchCourses.dart';
import 'package:acc/models/results/courses.dart';
import 'package:acc/services/courses.dart';
import 'package:get/get.dart';

class CoursesController extends GetxController {
  var fetchSuccess = FetchCourses().obs;
  var fetchError = Error().obs;
  RxList<Courses> requiredCourses = <Courses>[].obs;
  RxList<Courses> optionalCourses = <Courses>[].obs;
  var loading = false.obs;

  @override
  onInit() {
    fetchCourses();
    super.onInit();
  }

  void fetchCourses() async {
    loading(true);
    var response = await CoursesServices.fetchCourses();
    if (response != null) {
      if (response is FetchCourses) {
        fetchSuccess.value = response;
        response.results.forEach((e) => e.type == "اجباري"
            ? requiredCourses.add(e)
            : optionalCourses.add(e));
        print(requiredCourses);
        loading(false);
      } else if (response is Error) {
        fetchError.value = response;
        loading(false);
      }
    }
  }
}
