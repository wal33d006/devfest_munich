import 'package:devfest_munich/entities/user.dart';
import 'package:devfest_munich/user_json.dart';
import 'package:devfest_munich/users_repository.dart';
import 'package:fpdart/fpdart.dart';

class MockUsersRepository implements UsersRepository {
  @override
  Future<Either<UsersFailure, List<User>>> fetchUsers() async {
    return right([
      UserJson(
        id: 000,
        name: 'name',
        username: 'username',
        email: 'email',
        phone: 'phone',
        website: 'website',
      ).toDomain(),
      UserJson(
        id: 000,
        name: 'name',
        username: 'username',
        email: 'email',
        phone: 'phone',
        website: 'website',
      ).toDomain(),
      UserJson(
        id: 000,
        name: 'name',
        username: 'username',
        email: 'email',
        phone: 'phone',
        website: 'website',
      ).toDomain(),
    ]);
  }
}
