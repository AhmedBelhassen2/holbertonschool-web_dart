import 'dart:convert';
import '3-util.dart';

greetUser() async {
  try {
    final data = jsonDecode(await fetchUserData());
  return 'Hello ${json.decode(await fetchUserData())['username']}';
  } catch (err) {
    return 'error caught: $err';
  }
}

loginUser() async {
  try {
    final isVallid = await checkCredentials();
    if (isVallid) {
      print('There is a user: true');
      return await greetUser();
    }
    print('There is a user: false');
    return 'Wrong credentials';
  } catch (err) {
    return 'error caught: $err';
  }
}