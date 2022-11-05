class ProjectModel {
  final String? title, description;

  ProjectModel({this.title, this.description});
}

List<ProjectModel> demoProjectModel = [
  ProjectModel(
      title: "Chat/Messaging App  - Flutter UI",
      description:
      "ChattyApp is a mobile chat app where two or more people can have a discussion The app consist of two main groups, where users can choose where they prefer to have a group discussion. ChattyApp is Unique because its a safe and secured way to communicate with friends Anyone who wants to chat must sign up and login, using their email and password After authenticating, Users will see Group 1(General Discussion) and Group 2(Tech Discussion). Users can join any group and chat"
  ),
  ProjectModel(
    title: "Welcome page, Login Page and Sign up page with validations. (team work) - Flutter UI",
    description:
    "In the first part of our complete banking app, we show you how you can create a nice clean onboarding screen for your banking app that can run both Andriod and iOS devices because it builds with flutter. secondly, we built a Sign in, Forgot Password screen with a custom error indicator.",
  ),
  ProjectModel(
      title: "Bloodline App - Flutter UI",
      description:
      "Bloodline aims to remove obstacles in checking, receiving and donating matching blood with little or no hassle and this process is done using CRUD operation in mongo database. Built with Dart programming language and flutter framework. Featured Dio and Http for network requests, Fluttertoast for toast messages e.t.c"
  ),
];
