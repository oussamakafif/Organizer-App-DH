// Modèle pour organiser les tâches avec tous les attributs nécessaires

class Task {
  final String taskName;
  final String description;
  final String startTime;
  final String endTime;
  final String location;
  final List<Name> supervisors; // Liste des superviseurs
  final List<Name> members; // Liste des membres assignés

  Task({
    required this.taskName,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.location,
    required this.supervisors,
    required this.members,
  });
}

class Name {
  final String nom;
  final String prenom;

  Name({
    required this.nom,
    required this.prenom,
  });
}

// Modèle pour l'organiseur (collecteur de tâches)
class TaskOrganiser {
  final Name name; // Utilisation de la classe Name pour le nom complet
  final String role;
  final String? profileImage; // Chemin vers l'image de profil
  final String email;
  final String password;
  final String phoneNumber;

  TaskOrganiser({
    required this.name,
    required this.password,
    required this.email,
    required this.role,
    this.profileImage,
    required this.phoneNumber,
  });
}

// ==================== LISTE DES TÂCHES ====================
final List<Task> allTasks = [
  Task(
    taskName: "Check In",
    description: "Vérification de présence et état initial",
    startTime: "14:00",
    endTime: "17:00",
    location: "Les nouveaux salles 25",
    supervisors: [Name(nom: "Rayane", prenom: "Benkradidja")],
    members: [Name(nom: "Rayane", prenom: "Benkradidja")],
  ),
  Task(
    taskName: "Task name",
    description: "Description de la tâche",
    startTime: "11:00",
    endTime: "12:30",
    location: "Les nouveaux salles 25",
    supervisors: [Name(nom: "Rayane", prenom: "Benkradidja")],
    members: [Name(nom: "Rayane", prenom: "Benkradidja")],
  ),
  Task(
    taskName: "Team Meeting",
    description: "Réunion d'équipe pour discuter des objectifs",
    startTime: "09:00",
    endTime: "10:00",
    location: "Salle de réunion 1",
    supervisors: [Name(nom: "Rayane", prenom: "Benkradidja")],
    members: [Name(nom: "Rayane", prenom: "Benkradidja")],
  ),
  Task(
    taskName: "Project Review",
    description: "Révision du projet en cours",
    startTime: "15:00",
    endTime: "16:30",
    location: "Bureau principal",
    supervisors: [Name(nom: "Rayane", prenom: "Benkradidja")],
    members: [Name(nom: "Rayane", prenom: "Benkradidja")],
  ),
  Task(
    taskName: "Documentation",
    description: "Écrire la documentation du projet",
    startTime: "10:00",
    endTime: "12:00",
    location: "Bureau",
    supervisors: [Name(nom: "Rayane", prenom: "Benkradidja")],
    members: [Name(nom: "Rayane", prenom: "Benkradidja")],
  ),
  Task(
    taskName: "Code Review",
    description: "Vérifier le code de l'équipe",
    startTime: "14:00",
    endTime: "15:00",
    location: "Salle développement",
    supervisors: [Name(nom: "Rayane", prenom: "Benkradidja")],
    members: [Name(nom: "Rayane", prenom: "Benkradidja")],
  ),
];

// ==================== LISTE DES ORGANISEURS ====================
final List<TaskOrganiser> sampleOrganisers = [
  TaskOrganiser(
    name: Name(nom: "Rayane", prenom: "Benkradidja"),
    role: "Supervisor",
    profileImage: "assets/Benkradidja_Rayane.png",
    email: "rayane@datahack.com",
    phoneNumber: "+213 123 456 789",
    password: "rayane2005",
  ),
  TaskOrganiser(
    name: Name(nom: "Issam", prenom: "Boussebata"),
    role: "Member",
    profileImage: "assets/Issam_Boussebta.png",
    email: "issam@datahack.com",
    phoneNumber: "+213 987 654 321",
    password: "issam2003",
  ),
];
