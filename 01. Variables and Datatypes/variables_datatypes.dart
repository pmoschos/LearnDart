void main() {
  final String appName = "Dart Learning";
  const double version = 1.0;

  var user = "Alice";
  int age = 24;
  bool isLoggedIn = true;

  late String userStatus;
  userStatus = isLoggedIn ? "Active" : "Inactive";

  print("Welcome to $appName version $version.");
  print("User: $user, Age: $age, Status: $userStatus");
}
