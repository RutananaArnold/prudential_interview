// import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:prudential_interview/models/user_profile_response.dart';

final userController = Get.put(ProfileController());

class ProfileController extends GetxController {
  // List<UserProfileResponse> user = [];

  Future<List<UserProfileResponse>> fetchUsers() async {
    Map<String, String> headers = {'Accept': 'Application/json'};
    var response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users'),
        headers: headers);

    List<UserProfileResponse> jsonResponse =
        userProfileResponseFromJson(response.body);
    // user.addAll(jsonResponse);
    return jsonResponse;
  }
}
