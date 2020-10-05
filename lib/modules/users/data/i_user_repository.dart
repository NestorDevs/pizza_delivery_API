import 'package:pizza_delivery_api/application/entities/user.dart';
import 'package:pizza_delivery_api/modules/users/view_models/register_user_input_model.dart';

abstract class IUserRepository {
  Future<void> saveUser(RegisterUserInputModel inputModel);

  Future<User> login(String email, String password);
}
