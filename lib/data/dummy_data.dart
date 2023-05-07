import 'package:flutter/material.dart';

import 'package:meals__app/models/category.dart';
import 'package:meals__app/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Śniadania',
    color: Colors.purple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/27/23/12/bread-2349711_960_720.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Zupy',
    color: Colors.red,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/08/31/19/13/pumpkin-soup-3645375_960_720.jpg',
  ),
  Category(
    id: 'c3',
    title: 'Dania główne',
    color: Colors.orange,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_960_720.jpg',
  ),
  Category(
    id: 'c4',
    title: 'Desery',
    color: Colors.amber,
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/07/28/04/16/sweets-4367905_960_720.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Przekąski',
    color: Colors.blue,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523_960_720.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Sałatki',
    color: Colors.green,
    imageUrl:
        'https://cdn.pixabay.com/photo/2022/05/20/08/55/pasta-7209002_960_720.jpg',
  ),
  Category(
    id: 'c7',
    title: 'Ciasta',
    color: Colors.blue,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552_960_720.jpg',
  ),
  Category(
    id: 'c8',
    title: 'Napoje',
    color: Colors.green,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/05/23/15/16/herbal-tea-1410565_960_720.jpg',
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c5',
    ],
    title: 'Płatki owsiane z orzechami i owocami',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/smoothie_bowl_0.jpg',
    duration: 20,
    ingredients: [
      'Płatki owsiane 100 gramów',
      'Mleko 0,5% tłuszczu 1 litr',
      'Gorzkie naturalne kakao 4 łyżki',
      'Orzechy włoskie (posiekane) 4 łyżeczki',
      'Truskawki 280 gramów',
      'Borówki 200 gramów'
    ],
    steps: [
      'Płatki owsiane ugotować na mleku, dodać kakao i wymieszać.',
      'Przełożyć gotową owsiankę do miseczki.',
      'Wierzch posypać posiekanymi orzechami i migdałami, borówkami oraz pokrojonymi na drobne fragmenty truskawkami.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Tortilla z omletem, pomidorem I awokado',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-omletem-pomidorem-awokado.jpg',
    duration: 10,
    ingredients: [
      '2 tortille',
      '2 łyżeczki masła',
      '1 awokado',
      '1 pomidor',
      '2 jajka'
      'kilkanaście listków szpinaku sałatkowego',
      '50 g tartej żółtej mozzarelli'
    ],
    steps: [
      'Przygotować patelnię o średnicy takiej jak tortille.',
      'Awokado obrać, usunąć pestkę, pokroić na cienkie półplasterki. Pomidora pokroić na cienkie plasterki.',
      'Przygotować pierwszą tortillę: po dnie patelni rozprowadzić łyżeczkę masła.',
      'Jajko roztrzepać w miseczce z dodatkiem soli i pieprzu, wylać na patelnię.',
      'Na wierzch położyć tortillę i smażyć aż jajko się zetnie, przez około pół minuty.',
      'Przewrócić na drugą stronę np. za pomocą szerokiej łopatki.',
      'Ułożyć plasterki pomidora, posypać serem, dodać listki szpinaku i awokado. Doprawić solą i pieprzem.',
      'Chwilę podgrzewać sprawdzając stopień zrumienienia się tortilli od spodu. Złożyć na pół, delikatnie docisnąć łopatką i chwilę jeszcze podgrzewać.',
      'Zdjąć na talerz, powtórzyć z drugą tortillą.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
    ],
    title: 'Krem z cukinii z fetą',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/zupa-krem-z-cukinii.jpg',
    duration: 45,
    ingredients: [
      '500 g cukinii',
      '1 por',
      '1 łyżka oliwy',
      '1 łyżka masła',
      '1 duży ząbek czosnku',
      '750 ml bulionu'
      '1/3 łyżeczki kurkumy',
      '1/3 szklanki śmietanki 30%',
      'ok. 100 g fety'
      'Szczypiorek',
    ],
    steps: [
      'Cukinię umyć, przyciąć na końcach i pokroić w kostkę.',
      'Pora dokładnie umyć, odciąć mocno zielone końce. Białą i jasnozieloną część pokroić na talarki.',
      'W garnku roztopić masło z oliwą, dodać pora oraz starty czosnek. Smażyć co chwilę mieszając przez ok. 4 minuty.',
      'Dodać cukinię i mieszając co chwilę smażyć przez ok. 3 minuty.',
      'Zalać bulionem i zagotować. Dodać kurkumę. Doprawić solą, pieprzem i gotować przez ok. 15 minut.'
      'Zupę zmiksować z dodatkiem śmietanki.',
      'Podawać z pokruszoną fetą i szczypiorkiem.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c3',
    ],
    title: 'Tortille Z Kurczakiem Curry',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortille-z-kurczakiem-curry.jpg',
    duration: 60,
    ingredients: [
      '1 podwójny filet kurczaka, ok. 600 g',
      'przyprawy: sól, pieprz',
      'łyżka mąki pszennej',
      '1 jajko',
      'panierka panko lub bułka tarta',
      'oliwa lub olej roślinny do smażenia',
    ],
    steps: [
      'Filet z kurczaka pokroić na podłużne kawałki. Doprawić wszystkimi przyprawami, potem obtoczyć w mące a następnie w roztrzepanym jajku. Na koniec obtoczyć w panierce panko lub bułce tartej.',
      'Rozgrzać patelnię (lub najlepiej od razu 2 patelnie) z oliwą. Smażyć partiami kurczaka na złoty kolor z dwóch stron. Przed kolejną parią smażenia, wytrzeć patelnię z resztek poprzedniego smażenia.',
      'Surówka: sałatę lodową posiekać, marchewkę zetrzeć lub jak ogórka pokroić w cienkie słupki. ',
      'Sos: składniki sosu wymieszać w miseczce.',
      'Zgrzewanie: na placki tortilli ułożyć trochę mieszanki surówki, potem kurczaka, tarty ser, sos i znów sałatkę. Zawinąć tortille i podgrzać w opiekaczu, grillu elektrycznym lub na patelni pod obciążeniem z talerza.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c4'
    ],
    title: 'Malinowy budyń jaglany',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/malinowy_budyn_jaglany.jpg',
    duration: 15,
    ingredients: [
      '1/2 szklanki kaszy jaglanej',
      '2 szklanki mleka',
      'ok. 1/2 szklanki malin (świeżych lub mrożonych)',
      '3 łyżki syropu/soku malinowego',
    ],
    steps: [
      'Do sitka wsypać kaszę jaglaną i wypłukać pod bieżącą wodą. Włożyć do rondelka, wlać mleko i zagotować pod przykryciem. Zmniejszyć ogień do minimum i gotować 15 minut nie otwierając garnka.',
      'Ugotowaną kaszę zmiksować w blenderze (stojącym, kielichowym) na gładki mus z dodatkiem (rozmrożonych) malin oraz syropu malinowego. Jeśli budyń jest za gęsty można dodać więcej mleka. Podawać z dodatkowymi malinami i/lub syropem malinowym.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
];
