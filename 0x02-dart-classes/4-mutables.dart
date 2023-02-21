class Password {
 String _password;
  Password({required String password}) : _password = password;
  String get password => _password;
  set password(String password) {
    _password = password;
  }
  bool isValid() {
    return ((password.length >= 6) && (password.length <= 18)) && this.password.contains(new RegExp(r"[A-Z]")) && this.password.contains(new RegExp(r"[a-z]")) && this.password.contains(new RegExp(r"[0-9]"));
  }
  
 @override
  String toString() => "Your Password is: ${this.password}";
}
