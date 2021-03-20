import 'package:flutter/material.dart';
import 'package:flutter_oauth/lib/flutter_auth.dart';
import 'package:flutter_oauth/lib/model/config.dart';
import 'package:flutter_oauth/lib/oauth.dart';
import 'package:flutter_oauth/lib/token.dart';
import 'package:spotify_sdk/models/connection_status.dart';
import 'package:spotify_sdk/models/crossfade_state.dart';
import 'package:spotify_sdk/models/image_uri.dart';
import 'package:spotify_sdk/models/player_context.dart';
import 'package:spotify_sdk/models/player_state.dart';
import 'package:spotify_sdk/spotify_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../componentes/ui/button.dart';

// void login() async {
//   final OAuth flutterOAuth = new FlutterOAuth(new Config(
//     "https://accounts.spotify.com/authorize",
//     "https://accounts.spotify.com/api/token",
//     env['SPOTIFY_CLIENT_ID'],
//     env['SPOTIFY_CLIENT_SECRET'],
//     "http://localhost:8080",
//     "code",
//     parameters: {"scope": "user-read-private%20user-read-email"},
//     contentType: "application/x-www-form-urlencoded"
//   ));
//   Token token = await flutterOAuth.performAuthorization();
//   print(token);
  // try {
  //   print('HELLO!');
  //   var authenticationToken = await SpotifySdk.getAuthenticationToken(
  //     clientId: env['SPOTIFY_CLIENT_ID'],
  //     redirectUrl: 'http://localhost:8080',
  //     scope: 'app-remote-control, '
  //         'user-modify-playback-state, '
  //         'playlist-read-private, '
  //         'playlist-modify-public,user-read-currently-playing');
  //   print(authenticationToken);
  //   return authenticationToken;
  // } catch (e) {
  //   return Future.error('$e.code: $e.message');
  // }
// }

class LoginPage extends StatelessWidget {
  void login() async {
    // final OAuth flutterOAuth = new FlutterOAuth(new Config(
    //   "https://accounts.spotify.com/authorize",
    //   "https://accounts.spotify.com/api/token",
    //   env['SPOTIFY_CLIENT_ID'],
    //   env['SPOTIFY_CLIENT_SECRET'],
    //   "http://localhost:8080",
    //   "code",
    //   parameters: {"scope": "user-read-private%20user-read-email"},
    //   contentType: "application/x-www-form-urlencoded"
    // ));
    // Token token = await flutterOAuth.performAuthorization();
    // print(token);
    print(await SpotifySdk.getAuthenticationToken(
      clientId: env['SPOTIFY_CLIENT_ID'],
      redirectUrl: "http://localhost:8080",
      scope: "app-remote-control,user-modify-playback-state,playlist-read-private"
    ));
    // try {
    //   print('HELLO!');
    //   var authenticationToken = await SpotifySdk.getAuthenticationToken(
    //     clientId: env['SPOTIFY_CLIENT_ID'],
    //     redirectUrl: 'http://localhost:8080',
    //     scope: 'app-remote-control, '
    //         'user-modify-playback-state, '
    //         'playlist-read-private, '
    //         'playlist-modify-public,user-read-currently-playing');
    //   print(authenticationToken);
    //   print('HELLO!!!!!!');
    //   // return authenticationToken;
    // } catch (e) {
    //   return Future.error('$e.code: $e.message');
    // }
  }
  @override
  Widget build(BuildContext context) {
    var btn = new ButtonComponent();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Positioned(
                bottom: 10.0,
                child: FlatButton (
                  onPressed: () => login(),
                  child: btn.spotify('ログイン/新規登録'),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}