import 'package:flutter/material.dart';

import 'package:meals__app/models/category.dart';
// import 'package:meals__app/models/meal.dart';

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

// const dummyMeals = [
//   Meal(
//     id: 'm1',
//     categories: [
//       'c1',
//       'c5',
//     ],
//     title: 'Płatki owsiane z orzechami i owocami',
//     imageUrl:
//         'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/smoothie_bowl_0.jpg',
//     ingredients: [
//       'Płatki owsiane 100 gramów',
//       'Mleko 0,5% tłuszczu 1 litr',
//       'Gorzkie naturalne kakao 4 łyżki',
//       'Orzechy włoskie (posiekane) 4 łyżeczki',
//       'Truskawki 280 gramów',
//       'Borówki 200 gramów'
//     ],
//     steps: [
//       'Płatki owsiane ugotować na mleku, dodać kakao i wymieszać.',
//       'Przełożyć gotową owsiankę do miseczki.',
//       'Wierzch posypać posiekanymi orzechami i migdałami, borówkami oraz pokrojonymi na drobne fragmenty truskawkami.',
//     ],
//   ),
//   Meal(
//     id: 'm2',
//     categories: [
//       'c1',
//     ],
//     title: 'Tortilla z omletem, pomidorem I awokado',
//     imageUrl:
//         'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortilla-z-omletem-pomidorem-awokado.jpg',
//     ingredients: [
//       '2 tortille',
//       '2 łyżeczki masła',
//       '1 awokado',
//       '1 pomidor',
//       '2 jajka'
//       'kilkanaście listków szpinaku sałatkowego',
//       '50 g tartej żółtej mozzarelli'
//     ],
//     steps: [
//       'Przygotować patelnię o średnicy takiej jak tortille.',
//       'Awokado obrać, usunąć pestkę, pokroić na cienkie półplasterki. Pomidora pokroić na cienkie plasterki.',
//       'Przygotować pierwszą tortillę: po dnie patelni rozprowadzić łyżeczkę masła.',
//       'Jajko roztrzepać w miseczce z dodatkiem soli i pieprzu, wylać na patelnię.',
//       'Na wierzch położyć tortillę i smażyć aż jajko się zetnie, przez około pół minuty.',
//       'Przewrócić na drugą stronę np. za pomocą szerokiej łopatki.',
//       'Ułożyć plasterki pomidora, posypać serem, dodać listki szpinaku i awokado. Doprawić solą i pieprzem.',
//       'Chwilę podgrzewać sprawdzając stopień zrumienienia się tortilli od spodu. Złożyć na pół, delikatnie docisnąć łopatką i chwilę jeszcze podgrzewać.',
//       'Zdjąć na talerz, powtórzyć z drugą tortillą.'
//     ],
//   ),
//   Meal(
//     id: 'm3',
//     categories: [
//       'c2',
//     ],
//     title: 'Krem z cukinii z fetą',
//     imageUrl:
//         'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/zupa-krem-z-cukinii.jpg',
//     ingredients: [
//       '500 g cukinii',
//       '1 por',
//       '1 łyżka oliwy',
//       '1 łyżka masła',
//       '1 duży ząbek czosnku',
//       '750 ml bulionu'
//       '1/3 łyżeczki kurkumy',
//       '1/3 szklanki śmietanki 30%',
//       'ok. 100 g fety'
//       'Szczypiorek',
//     ],
//     steps: [
//       'Cukinię umyć, przyciąć na końcach i pokroić w kostkę.',
//       'Pora dokładnie umyć, odciąć mocno zielone końce. Białą i jasnozieloną część pokroić na talarki.',
//       'W garnku roztopić masło z oliwą, dodać pora oraz starty czosnek. Smażyć co chwilę mieszając przez ok. 4 minuty.',
//       'Dodać cukinię i mieszając co chwilę smażyć przez ok. 3 minuty.',
//       'Zalać bulionem i zagotować. Dodać kurkumę. Doprawić solą, pieprzem i gotować przez ok. 15 minut.'
//       'Zupę zmiksować z dodatkiem śmietanki.',
//       'Podawać z pokruszoną fetą i szczypiorkiem.'
//     ],
//   ),
//   Meal(
//     id: 'm4',
//     categories: [
//       'c3',
//     ],
//     title: 'Tortille Z Kurczakiem Curry',
//     imageUrl:
//         'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/tortille-z-kurczakiem-curry.jpg',
//     ingredients: [
//       '1 podwójny filet kurczaka, ok. 600 g',
//       'przyprawy: sól, pieprz',
//       'łyżka mąki pszennej',
//       '1 jajko',
//       'panierka panko lub bułka tarta',
//       'oliwa lub olej roślinny do smażenia',
//     ],
//     steps: [
//       'Filet z kurczaka pokroić na podłużne kawałki. Doprawić wszystkimi przyprawami, potem obtoczyć w mące a następnie w roztrzepanym jajku. Na koniec obtoczyć w panierce panko lub bułce tartej.',
//       'Rozgrzać patelnię (lub najlepiej od razu 2 patelnie) z oliwą. Smażyć partiami kurczaka na złoty kolor z dwóch stron. Przed kolejną parią smażenia, wytrzeć patelnię z resztek poprzedniego smażenia.',
//       'Surówka: sałatę lodową posiekać, marchewkę zetrzeć lub jak ogórka pokroić w cienkie słupki. ',
//       'Sos: składniki sosu wymieszać w miseczce.',
//       'Zgrzewanie: na placki tortilli ułożyć trochę mieszanki surówki, potem kurczaka, tarty ser, sos i znów sałatkę. Zawinąć tortille i podgrzać w opiekaczu, grillu elektrycznym lub na patelni pod obciążeniem z talerza.',
//     ],
//   ),
//   Meal(
//     id: 'm5',
//     categories: [
//       'c4'
//     ],
//     title: 'Malinowy budyń jaglany',
//     imageUrl:
//         'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/malinowy_budyn_jaglany.jpg',
//     ingredients: [
//       '1/2 szklanki kaszy jaglanej',
//       '2 szklanki mleka',
//       'ok. 1/2 szklanki malin (świeżych lub mrożonych)',
//       '3 łyżki syropu/soku malinowego',
//     ],
//     steps: [
//       'Do sitka wsypać kaszę jaglaną i wypłukać pod bieżącą wodą. Włożyć do rondelka, wlać mleko i zagotować pod przykryciem. Zmniejszyć ogień do minimum i gotować 15 minut nie otwierając garnka.',
//       'Ugotowaną kaszę zmiksować w blenderze (stojącym, kielichowym) na gładki mus z dodatkiem (rozmrożonych) malin oraz syropu malinowego. Jeśli budyń jest za gęsty można dodać więcej mleka. Podawać z dodatkowymi malinami i/lub syropem malinowym.',
//     ],
//   ),
//   Meal(
//     id: 'm6',
//     categories: [
//       'c6',
//     ],
//     title: 'Sałatka meksykańska',
//     imageUrl:
//         'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/salatka-meksykanska_0.jpg',
//     ingredients: [
//       '1 por (biała i jasnozielona część)',
//       '1 mała puszka kukuryd',
//       '1 puszka ananasa (może być plastry lub krojony)',
//       '1 puszka czerwonej fasolki',
//       '1/2 czerwonej papryki',
//       '200 g sera żółtego',
//       '3 pełne łyżki majonezu',
//       'sól, pieprz, szczypta ostrej papryki',
//       'natka pietruszki do dekoracji',
//     ],
//     steps: [
//       'Pora przekroić wzdłuż na pół i dokładnie opłukać. Przekroić jeszcze raz wzdłuż na mniejsze części, następnie w poprzek na kawałeczki. Włożyć na sitko i przelać wrzącą wodą z czajnika.',
//       'Na to samo sitko wyłożyć i odsączyć kukurydzę. Składniki z sitka przełożyć do większej miski i dodać pokrojonego ananasa.',
//       'Na sitko wyłożyć zawartość puszki z fasolką i przepłukać wodą. Odsączyć i dodać do miski.',
//       'Dodać pokrojoną w kosteczkę paprykę i pokrojony w małą kosteczkę ser żółty. Dodać majonez, doprawić solą i pieprzem, wymieszać. Przełożyć do czystej salaterki, udekorować natką pietruszki.',
//     ],
//   ),
//   Meal(
//     id: 'm7',
//     categories: [
//       'c7',
//     ],
//     title: 'Ciasto kinder country',
//     imageUrl:
//         'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/ciasto-kinder-country.jpg',
//     ingredients: [
//       'około 100 g krakersów',
//       '250 g mascarpone',
//       '350 ml śmietanki 30%',
//       '200 g białej czekolady',
//       '200 g mlecznej czekolady',
//       '3 szklanki płatków śniadaniowych "Kangus"',
//     ],
//     steps: [
//       'Mascarpone i śmietanka mają być zimne, schłodzone. Dno formy o średnicy około 24 - 26 cm wyłożyć pierwszą warstwą krakersów.',
//       'Mascarpone oraz 250 ml śmietanki ubić jednocześnie mikserem na gęsty i puszysty krem (około 2 minuty, do potrojenia objętości).',
//       'Czekoladę białą połamać na kosteczki i roztopić. Roztopioną czekoladą umieścić w większej misce i dodać do niej 2 - 3 łyżkami ubitego kremu. Wymieszać, następnie dodać kolejne 2 - 3 łyżki kremu i znów połączyć. Teraz dodawać już większe porcje kremu i wymieszać.',
//       'Do otrzymanej masy dodać 2 szklanki płatków i wymieszać. Wyłożyć do formy i przykryć drugą warstwą krakersów.'
//       'Resztę śmietanki (100 ml) podgrzać w rondelku aż będzie gorąca, odstawić z ognia, dodać połamaną na kosteczki mleczną czekoladę i mieszać aż do jej rozpuszczenia.',
//       'Wyłożyć na wierzch ciasta i posypać resztą płatków. Wstawić do lodówki i chładzać przez ok. 3 godziny.'
//     ],
//   ),
//   Meal(
//     id: 'm8',
//     categories: [
//       'c8',
//     ],
//     title: 'Koktajl Jagodowy',
//     imageUrl:
//         'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/koktajl_jagodowy_0.jpg',
//     ingredients: [
//       '4 łyżki jagód',
//       '1 banan ok. 200 - 250 g',
//       '200 g jogurtu naturalnego',
//       '100 ml soku jabłkowego lub ananasowego',
//     ],
//     steps: [
//       'Do pojemnika blendera włożyć opłukane jagody i obranego banana. Dodać jogurt oraz sok, zmiksować.',
//     ],
//   ),
// ];
