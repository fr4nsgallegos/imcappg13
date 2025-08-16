class ImcModel {
  String title;
  String recomendation;
  String pathImage;
  ImcModel(this.title, this.recomendation, this.pathImage);
}

List<ImcModel> imcModelList = [
  ImcModel(
    "Bajo Peso",
    "Se debe alimentar con los nutrienes necesarios",
    "delgadez",
  ),
  ImcModel("Normal", "El IMC es normal, manten tu dieta balanceada", "normal"),
  ImcModel(
    "Sobrepeso",
    "Salir a correr, tomar agua y comer saludable",
    "sobrepeso",
  ),
  ImcModel(
    "Obesidad",
    "Realiza una dieta balanceada y has mas ejercicios",
    "obesidad",
  ),
];
