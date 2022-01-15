import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

class AuthentiFication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<UserCredential> identficationGoogle() async {
    /**recuperation du compte google */
    final googleUser = await _googleSignIn.signIn();

    final googleAuth = await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await _auth.signInWithCredential(credential);
  }

//user connecter ou pas
  Stream<User?> get user => _auth.authStateChanges();
  //deconnection
  Future<void> deconexion() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
