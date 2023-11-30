class Profile {
  late String nome;
  late int idade;
  late String skill;
  late String description;
  late String extra;
  late int userId;
  late String profPic;

  Profile(String nome, int idade, String skill, String description, String extra, int userId, String profPic){
    this.nome = nome;
    this.idade = idade;
    this.skill = skill;
    this.description = description;
    this.extra = extra;
    this.userId = userId;
    this.profPic = profPic;
  }
}