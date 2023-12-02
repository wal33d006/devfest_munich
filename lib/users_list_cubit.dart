import 'package:devfest_munich/fetch_users_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:devfest_munich/users_list_state.dart';

class UsersListCubit extends Cubit<UsersListState> {
  final FetchUsersUseCase _fetchUsersUseCase;

  UsersListCubit(this._fetchUsersUseCase) : super(UsersListState.empty());

  Future<void> fetchUsers() async {
    emit(state.copyWith(isLoading: true));

    final users = await _fetchUsersUseCase.execute();
    users.fold(
      (l) => null,
      (r) => emit(state.copyWith(users: r, isLoading: false)),
    );
  }
}
