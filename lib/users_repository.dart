import 'dart:convert';

import 'package:devfest_munich/entities/user.dart';
import 'package:devfest_munich/user_json.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

abstract class UsersRepository {
  Future<Either<UsersFailure, List<User>>> fetchUsers();
}

class RestApiUsersRepository implements UsersRepository {
  @override
  Future<Either<UsersFailure, List<User>>> fetchUsers() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      var response = await http.get(url);
      var list = jsonDecode(response.body) as List;
      return right(list.map((e) => UserJson.fromJson(e).toDomain()).toList());
    } catch (ex) {
      return left(UsersFailure());
    }
  }
}

class UsersFailure {}
