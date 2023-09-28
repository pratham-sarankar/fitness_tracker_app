import 'package:fitness_tracker_app/app/data/exceptions/api_exception.dart';
import 'package:fitness_tracker_app/app/data/models/user.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {
  Future<String> signInWithGoogle() async {
    await GoogleSignIn().signOut();
    var result = await GoogleSignIn(scopes: ['email']).signIn();
    if (result == null) {
      throw ApiException(
        message: "Cancelled by user",
        code: 401,
      );
    }
    print(result.email);
    var googleKey = await result.authentication;
    print(googleKey.accessToken);
    if (googleKey.idToken == null) {
      throw ApiException(
        message: "Unable to authenticate",
        code: 401,
      );
    }
    return googleKey.idToken!;
  }
}
