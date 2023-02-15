void outer(String name, String id) {
  String inner() {
    var s = name.split(" ");
    var a = s[1].substring(0, 1) + "." + s[0];
    return "Hello Agent ${a} your id is $id";
  }

  print(inner());
}