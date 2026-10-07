import 'annonce.dart';

/// Simule un chargement réseau de cinq annonces de démonstration.
Future<List<Annonce>> chargerAnnonces() async {
  await Future<void>.delayed(const Duration(milliseconds: 500));

  return const [
    Annonce(
      id: 'annonce-1',
      titre: 'Lampe de bureau',
      description: 'Lampe en bon état, à donner contre un livre.',
      categorie: CategorieAnnonce.objet,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'utilisateur-1',
    ),
    Annonce(
      id: 'annonce-2',
      titre: 'Aide pour monter un meuble',
      description: 'Je peux aider samedi après-midi.',
      categorie: CategorieAnnonce.service,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'utilisateur-2',
    ),
    Annonce(
      id: 'annonce-3',
      titre: 'Covoiturage vers le centre',
      description: 'Départ du quartier à 8 h.',
      categorie: CategorieAnnonce.covoiturage,
      statut: StatutAnnonce.reservee,
      idProprietaire: 'utilisateur-3',
    ),
    Annonce(
      id: 'annonce-4',
      titre: 'Lot de livres jeunesse',
      categorie: CategorieAnnonce.objet,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'utilisateur-4',
    ),
    Annonce(
      id: 'annonce-5',
      titre: 'Arrosage de plantes',
      description: 'Service rendu pendant le week-end.',
      categorie: CategorieAnnonce.service,
      statut: StatutAnnonce.terminee,
      idProprietaire: 'utilisateur-5',
    ),
  ];
}

/// Une annonce ne peut être réservée que si elle est disponible.
bool peutReserver(Annonce annonce) =>
    annonce.statut == StatutAnnonce.disponible;
