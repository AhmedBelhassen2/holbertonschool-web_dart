class Password {
  String password = "";
  bool isValid() {
    if (this.password.length > 6 && this.password.length <18 && this.password.contains(RegExp(r'^[a-zA-Z\d]*$'))) {
      return true;
    }
    return false;
  }
  @override
  String toString() {
    return "Your Password is: ${this.password}";
  }
}