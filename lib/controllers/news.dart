import 'package:acc/models/fetch/fetchNews.dart';
import 'package:acc/services/news.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  var fetchSuccess = FetchNews().obs;
  var fetchError = Error().obs;

  var loading = false.obs;

  void fetchNews() async {
    loading(true);
    var response = await NewsServices.fetchNews();
    if (response != null) {
      if (response is FetchNews) {
        fetchSuccess.value = response;
        loading(false);
      } else if (response is Error) {
        fetchError.value = response;
        loading(false);
      }
    }
  }
}
