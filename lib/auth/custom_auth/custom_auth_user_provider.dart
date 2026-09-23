import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class LincolnEAmigosAuthUser {
  LincolnEAmigosAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<LincolnEAmigosAuthUser> lincolnEAmigosAuthUserSubject =
    BehaviorSubject.seeded(LincolnEAmigosAuthUser(loggedIn: false));
Stream<LincolnEAmigosAuthUser> lincolnEAmigosAuthUserStream() =>
    lincolnEAmigosAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
