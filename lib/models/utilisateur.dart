class Utilisateur {
  const Utilisateur({
    required this.id,
    required this.nom,
    required this.reputation,
  });

  final String id;
  final String nom;
  final int reputation;

  factory Utilisateur.fromJson(Map<String, dynamic> json) {
    return Utilisateur(
      id: json['id'] as String,
      nom: json['nom'] as String,
      reputation: (json['reputation'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nom': nom,
        'reputation': reputation,
      };
}
