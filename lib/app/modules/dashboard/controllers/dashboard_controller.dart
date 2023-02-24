import 'dart:convert';

import 'package:get/get.dart';
import 'package:project_ujikom/app/data/entertainment_response.dart';
import 'package:project_ujikom/app/data/headline_response.dart';
import 'package:project_ujikom/app/data/sports_response.dart';
import 'package:project_ujikom/app/data/technology_response.dart';

import '../../../utils/api.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  final _getConnect = GetConnect();

  Future<HeadlineResponse> getHeadline() async {
    final response = await _getConnect.get(BaseUrl.headline);
    return HeadlineResponse.fromJson(jsonDecode(response.body));
  }

  Future<EntertainmentRespone> getEntertainment() async {
    final response = await _getConnect.get(BaseUrl.entertainment);
    return EntertainmentRespone.fromJson(jsonDecode(response.body));
  }

  Future<SportsRespone> getSports() async {
    final response = await _getConnect.get(BaseUrl.sports);
    return SportsRespone.fromJson(jsonDecode(response.body));
  }

  Future<TechnologyRespone> getTechnology() async {
    final response = await _getConnect.get(BaseUrl.technology);
    return TechnologyRespone.fromJson(jsonDecode(response.body));
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
