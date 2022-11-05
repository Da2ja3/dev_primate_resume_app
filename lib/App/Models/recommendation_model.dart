class RecommendationModel {
  final String? name, source, text;

  RecommendationModel({this.name, this.source, this.text});
}

final List<RecommendationModel> demoRecommendationModel = [
  RecommendationModel(
      name: "Precious Adeleye",
      source: "Linkedin",
      text:
      "I have had the pleasure of working with Adedeji, dev_primate as we fondly call him on two flutter projects and what strikes me the most about his work is his ability to write clean and reusable codes with best practices. He is hardworking and makes it so easy to transcribe ideas into beautiful and testable flutter apps.He is a Flutter/Dart gem and has my highest recommendation"
  ),
  RecommendationModel(
    name: "Solafunmi (Juwon) Adigun ",
    source: "Linkedin",
    text:
    "Adedeji  is great asset for any organisation. It's a true pleasure working with him at Grazac Academy.His flutter skill is amazing as well as his professionalism and being a good team player.Adedeji's problem solving skill is also one of his great skills.",
  ),

];
