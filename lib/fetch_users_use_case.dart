import 'package:devfest_munich/entities/user.dart';
import 'package:devfest_munich/users_repository.dart';
import 'package:fpdart/fpdart.dart';

class FetchUsersUseCase {
  final UsersRepository _usersRepository;

  FetchUsersUseCase(this._usersRepository);

  Future<Either<UsersFailure, List<User>>> execute() {
    return _usersRepository.fetchUsers();
    // Log errors
    // Store in db or local
  }
}
