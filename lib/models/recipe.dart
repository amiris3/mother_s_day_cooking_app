
class Recipe {
  int id;
  String name;
  String time;
  String imageUrl;
  String ingredients;
  String link;

  //this int is 1 if I like it, 2 if my sister likes it, 3 if both of us do
  int whoLikesIt;

  Recipe({this.id, this.name, this.time, this.imageUrl, this.whoLikesIt, this.ingredients, this.link});

}

List<Recipe> recipes = [
  Recipe(
    id: 0,
    name: "Gratin",
    time: '40 min',
    imageUrl: 'assets/gratin.jpg',
    whoLikesIt: 3,
    ingredients: 'pommes de terre, tomates, mozzarella, basilic, huile',
    link:"https://www.marmiton.org/recettes/recette_gratin-de-pommes-de-terre-aux-tomates_17453.aspx",
  ),
  Recipe(
      id: 1,
      name: 'Pâtes carbonara',
      time: '25 min',
      imageUrl: 'assets/carbonara.jpeg',
      whoLikesIt: 3,
      ingredients: 'pâtes, lardons, oeufs, crème fraiche, bouillon',
      link: 'https://www.marmiton.org/recettes/recette_pates-carbonara_391892.aspx',
  ),
  Recipe(
    id: 2,
    name: "Pizza",
    imageUrl: 'assets/pizza.jpg',
    time: '40 min',
    ingredients: "pâte à pizza, fromage de chèvre, coulis de tomate, mozzarella, "
                "gruyère râpé, poivre, sel",
    whoLikesIt: 3,
    link: "https://www.marmiton.org/recettes/index/categorie/pizza?rcp=0",
  ),
  Recipe(
    id: 3,
    name: "Quiche sans pâte",
    imageUrl: 'assets/quiche.jpeg',
    time: '40 min',
    ingredients: "oeufs, lait, crème fraiche, jambon, farine, gruyère rapé",
    whoLikesIt: 1,
    link: "https://www.marmiton.org/recettes/recette_quiche-sans-pate_12744.aspx"
  ),
  Recipe(
    id:4,
    name: "Brandade de merlu",
    imageUrl: 'assets/merlu.jpg',
    time: '50 min',
    ingredients: "merlu, pommes de terre, gousses d'ail (germe ôté), oeuf, crème fraîche",
    whoLikesIt: 1,
    link: "https://www.marmiton.org/recettes/recette_brandade-de-merlu_170821.aspx"
  ),
  Recipe(
    id: 5,
    name: "Poulet coco curry",
    imageUrl: 'assets/poulet.jpg',
    time: '1 h 15',
    ingredients: "escalopes de poulet, copeau de noix de coco, Gingembre en boîte, "
                "Lait de coco, Curry en poudre (2 à 3 cuillères à soupe rases), "
                "oignons jaunes",
    whoLikesIt: 2,
    link: "https://www.marmiton.org/recettes/recette_poulet-au-coco-et-curry_17803.aspx"
  ),
  Recipe(
    id: 6,
    name: "Steak-Frites en brochette",
    imageUrl: 'assets/steak.jpg',
    time: '35 min',
    ingredients: "viande hâchée, pommes de terre, oeuf, coulis de tomate, "
                "oignon, persil",
    whoLikesIt: 3,
    link: "https://www.marmiton.org/recettes/recette_steak-frites-en-brochettes_345024.aspx"
  ),
  Recipe(
    id: 7,
    name: "Saucisses lentilles",
    imageUrl: 'assets/saucisse.jpg',
    time: '25 min',
    ingredients: "saucisses et lentilles",
    whoLikesIt: 1,
    link: "https://www.marmiton.org/recettes/recette_saucisse-aux-lentilles_17588.aspx"
  ),
  Recipe(
      id: 8,
      name: "Gnocchis sauce bacon",
      imageUrl: 'assets/gnocchi.jpg',
      time: '35 min',
      ingredients: "gnoccis, bacon, fromage",
      whoLikesIt: 3,
      link: "https://www.marmiton.org/recettes/recette_gnocchis-sauce-bacon_44816.aspx#d43943-p1"
  ),
  Recipe(
      id: 9,
      name:"Flamenkuche",
      imageUrl: 'assets/flamenkueche.jpg',
      time: '20 min',
      ingredients: "pâte feuilletée, crème fraîche épaisse, lardons en "
                  "allumettes, oignon, gruyère râpé",
      whoLikesIt: 1,
      link: "https://www.marmiton.org/recettes/recette_flamenkuche-express_18540.aspx#d63309-p1"
  ),
  Recipe(
      id: 10,
      name: "Tomates farcies",
      imageUrl: 'assets/tomates_farcies.jpg',
      time: '1 h 20',
      ingredients: "chair à saucisse, tomates, oignons, gousses d'ail",
      whoLikesIt: 3,
      link: "https://www.marmiton.org/recettes/recette_tomates-farcies-facile_63622.aspx")
];