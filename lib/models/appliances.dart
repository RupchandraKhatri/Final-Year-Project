class Appliances {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;
  Appliances(
      this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl);
  static List<Appliances> generateAppliances() {
    return [
      Appliances('Chair', "Furnitures", "Rs.500", "assets/images/chair.jpg",
          ["assets/images/chair.jpg", "assets/images/deskChair.jpg"]),
      Appliances(
          "Round_table",
          "Furnitures",
          "Rs.800",
          "assets/images/round_table.jpg",
          ["assets/images/round_table.jpg", ""]),
      Appliances("Microwave", "Electronics", "Rs.1400",
          "assets/images/microWave.jpg", ["assets/images/microWave.jpg", ""]),
      Appliances("Desk-Chair", "Furnitures", "Rs.800",
          "assets/images/deskChair.jpg", ["assets/images/deskChair.jpg", ""]),
      Appliances("Dining", "Furnitures", "Rs.1400", "assets/images/dining.jpg",
          ["assets/images/dining.jpg", ""]),
    ];
  }
}
