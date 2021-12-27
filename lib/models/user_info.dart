class User {
  final nom;
  final email;
  final phone;
  final adresse;
  final sexe;
  final dateNaissance;
  final status;

  final iconEmail;
  final iconPhone;
  final iconAdresse;
  final iconSexe;
  final iconDateNaissance;
  final iconStatus;

  User(
      this.nom,
      this.email,
      this.phone,
      this.adresse,
      this.sexe,
      this.dateNaissance,
      this.status,
      this.iconEmail,
      this.iconPhone,
      this.iconAdresse,
      this.iconSexe,
      this.iconDateNaissance,
      this.iconStatus);
}

class Publication {
  final type;
  final titre;
  final name;
  final contenue;
  final times;
  final nbrLikes;
  final lien;

  Publication(this.type, this.titre, this.name, this.contenue, this.times,
      this.nbrLikes, this.lien);
}

class Diplome {
  final titre;
  final date;
  final lieu;

  Diplome(this.titre, this.date, this.lieu);
}

class Exp {
  final titreExp;
  final dateExp;
  final lieuExp;

  Exp(this.titreExp, this.dateExp, this.lieuExp);
}
