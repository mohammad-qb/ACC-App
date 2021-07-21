import 'package:acc/models/fetch/fetchClubMembers.dart';
import 'package:acc/services/clubMembers.dart';
import 'package:get/get.dart';

class ClubMembersController extends GetxController {
  var fetchSuccess = FetchClubMembers().obs;
  var fetchError = Error().obs;

  var loading = false.obs;

  void fetchClubMembers() async {
    loading(true);
    var response = await ClubMemberServices.fetchClubMembers();
    if (response != null) {
      if (response is FetchClubMembers) {
        fetchSuccess.value = response;
        loading(false);
      } else if (response is Error) {
        fetchError.value = response;
        loading(false);
      }
    }
  }
}
