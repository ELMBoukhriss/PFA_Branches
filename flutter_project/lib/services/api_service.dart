import 'dart:convert';
import 'dart:convert' show utf8;
import 'package:flutter_project/models/branches.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = "http://10.0.2.2:8080/api/v1/branches";

  Future<List<Branches>> getbranches() async {
    //Response res = await get(apiUrl);
    http.Response res = await http.get(apiUrl,headers: {'Content-Type': 'application/json'});

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(utf8.decode(res.bodyBytes));
      List<Branches> branches = body.map((dynamic item) => Branches.fromJson(item)).toList();
      return branches;
    } else {
      throw "Failed to load branches list";
    }
  }

  Future<Branches> getBrancheById(String id) async {
    final response = await get('$apiUrl/$id');

    if (response.statusCode == 200) {
      return Branches.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load a branche');
    }
  }

  Future<Branches> createBranche(Branches branches) async {
    Map data = {
      'id': branches.id,
      'branche': branches.branche

    };

    final Response response = await post(
      apiUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      return Branches.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to post branches');
    }
  }

  Future<Branches> updateBranche(String id, Branches branches) async {
    Map data = {
      'id': branches.id,
      'branche': branches.branche
    };

    final Response response = await put(
      '$apiUrl/$id',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
      return Branches.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update a branche');
    }
  }

  Future<void> deleteBranche(String id) async {
    Response res = await delete('$apiUrl/$id');

    if (res.statusCode == 200) {
      print("branche deleted");
    } else {
      throw "Failed to delete a branche.";
    }
  }

}