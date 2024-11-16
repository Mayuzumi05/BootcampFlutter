import 'package:dio/dio.dart';
import 'package:sanberappflutter/data/model/user_model.dart';

class UserDatasources {
  Dio dio = Dio();
  static const url = 'https://reqres.in/api/users?page=2';
  static const urlDetail = 'https://reqres.in/api/users';

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        print('Raw Data: $data');

        List<UserModel> users =
            List.from(data.map((user) => UserModel.fromJson(user)));
        return users;
      }
      throw Exception('Failed to fetch data');
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }

  Future<UserModel?> fetchUserDetail(int userId) async {
    try {
      final response = await Dio().get('$urlDetail/$userId');
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        if (data != null) {
          return UserModel.fromJson(data);
        }
        throw Exception('User data is null');
      }
      throw Exception('Failed to fetch user detail');
    } catch (e) {
      print('Error in fetchUserDetail: $e');
      rethrow;
    }
  }

}