
import 'package:circle_app/controller/users_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthService {
  Future<String> getCurrentUserToken() async {
    final token = await FirebaseAuth.instance.currentUser!.getIdToken();
    return token;
  }
  Future<UserCredential?> signInWithGoogle() async {
    try{
    GoogleSignIn googleSign = GoogleSignIn(
    );
     print("aaa3");
    print(googleSign);
     print("aaa3");
    final GoogleSignInAccount? gUser = await googleSign.signIn();
    print(gUser);
    // if(gUser == null){
    //   print("aaa");
    //   return;
    // }
    if (gUser != null) {
      final GoogleSignInAuthentication gAuth = await gUser.authentication;
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );
      
      print(credential);
      print("aa9");
      GoogleSignIn().disconnect();
      return await FirebaseAuth.instance.signInWithCredential(credential);
      
      // バックエンド user保存
      // final apiUser = fetchUsers
      // userDataProvider()
      // // repository.fetchUsers(token);
      // _UserNotifier.setCurrentUserToken("Bearer ${token}");
      // // check したいらない 試しコード
      // _UserNotifier.setCurrentUserEmail(email);
      // final asyncValue = ref.watch(userDataProvider2);
      // _LangNotifier.setCurrentLang(lang);

      // print(currentUser.idToken());

    }
    print("aaa4");
    //   // Obtain the auth details from the request
    }on FirebaseAuthException catch(e){
      print("a999999");
      print(e);
    }on Exception catch(e){
      print("exception");
      print(e);
    }catch(e){
      print("a99999922");
      print(e);
    }
  }
}