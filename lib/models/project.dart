class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demoProjects = [
  Project(
    title: "Calmind App - Meditation App",
    description:
        "This application combine Android development, Google cloud backend database and Machine learning with tensor flow",
  ),
  Project(
    title: "Github App with clean architecture and CI/CD implementation",
    description:
        "Applying Clean Architechture, Dependency Injection, Modularization, Dynamic Feature, CI/CD, Leak Canary, Obfuscation, Encryption Database and Certificate Pinning on Android App Project",
  ),
  Project(
    title: "Restaurant App with Flutter",
    description:
        "Feature : list, detail, search, post review from api database restaurant, animation, state management provider, favorite local database, daily reminder, and mock testing",
  ),
  Project(
    title:
        "Forum API : Back End project with clean architechture and CI/CD implementation",
    description:
        "Backend project with NodeJS. Applying Clean Architechture and TDD, CI/CD Pipeline, Security and Scability",
  ),
  Project(
    title:
        "Simple CRUD E-commerce project with Golang (Gin framework) and MySQL database",
    description:
        "Feature : Authentication and Authorization with JWT, CRUD (Create, Read, Update, Delete) Product, Concurency implementation, and Testing",
  ),
  Project(
    title:
        "Inventory Book project with Golang (Gin framework) and PostgresSQL database",
    description:
        "Feature : Authentication and Authorization with JWT, CRUD (Create, Read, Update, Delete) Book, and simple frontend template",
  ),
];
