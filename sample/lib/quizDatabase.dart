import 'package:sample/utils/image_constant.dart';

class Quizdatabase {


  //Movies 
static Map<String, List<Map<String, dynamic>>>questions ={
 "questionList":[
  {
    "question": "Who directed the movie 'Inception'?",
    "options": ["Steven Spielberg", "Christopher Nolan", "James Cameron", "Martin Scorsese"],
    "answerIndex": 1, // Christopher Nolan
  },
  {
    "question": "In which movie would you find the character 'Jack Dawson'?",
    "options": ["The Great Gatsby", "Titanic", "Avatar", "Inception"],
    "answerIndex": 1, // Titanic
  },
  {
    "question": "Which movie won the Oscar for Best Picture in 2020?",
    "options": ["1917", "Parasite", "Joker", "Once Upon a Time in Hollywood"],
    "answerIndex": 1, // Parasite
  },
  {
    "question": "What is the highest-grossing film of all time?",
    "options": ["Avatar", "Avengers: Endgame", "Titanic", "The Lion King"],
    "answerIndex": 1, // Avengers: Endgame
  },
  {
    "question": "Which actor played 'Forrest Gump'?",
    "options": ["Tom Hanks", "Brad Pitt", "Leonardo DiCaprio", "Robert De Niro"],
    "answerIndex": 0, // Tom Hanks
  },
  {
    "question": "Which movie features the song 'My Heart Will Go On'?",
    "options": ["The Bodyguard", "Beauty and the Beast", "Titanic", "Ghost"],
    "answerIndex": 2, // Titanic
  },
],


// Toys


 "toys":[
  {
    "question": "Which toy brand is known for small interlocking bricks?",
    "options": ["Lego", "Playmobil", "Hot Wheels", "Hasbro"],
    "answerIndex": 0, // Lego
  },
  {
    "question": "In which year was the popular doll 'Barbie' first introduced?",
    "options": ["1959", "1975", "1985", "1992"],
    "answerIndex": 0, // 1959
  },
  {
    "question": "Which toy car brand is famous for its miniature collectible cars?",
    "options": ["Hot Wheels", "Nerf", "Fisher-Price", "Mattel"],
    "answerIndex": 0, // Hot Wheels
  },
  {
    "question": "What is the name of the bear that was introduced as a collectible toy in 1993?",
    "options": ["Beanie Baby", "Teddy Ruxpin", "Care Bear", "Build-A-Bear"],
    "answerIndex": 0, // Beanie Baby
  },
  {
    "question": "Which classic board game involves buying and trading properties?",
    "options": ["Chess", "Monopoly", "Checkers", "Scrabble"],
    "answerIndex": 1, // Monopoly
  },
  {
    "question": "What toy line features action figures with characters like Optimus Prime and Bumblebee?",
    "options": ["Transformers", "GI Joe", "Power Rangers", "Teenage Mutant Ninja Turtles"],
    "answerIndex": 0, // Transformers
  }
],

 "cars": [
  
  {
    "question": "Which company manufactures the Mustang?",
    "options": ["Chevrolet", "Ford", "Toyota", "Honda"],
    "answerIndex": 1, // Ford
  },
  {
    "question": "What type of car is known as an SUV?",
    "options": ["Sports Car", "Sedan", "Coupe", "Sport Utility Vehicle"],
    "answerIndex": 3, // Sport Utility Vehicle
  },
  {
    "question": "Which car brand has a logo with a prancing horse?",
    "options": ["Porsche", "Ferrari", "Lamborghini", "Ford"],
    "answerIndex": 1, // Ferrari
  },
  {
    "question": "Which country is BMW from?",
    "options": ["USA", "Germany", "Japan", "Italy"],
    "answerIndex": 1, // Germany
  },
  {
    "question": "What does 'EV' stand for in car technology?",
    "options": ["Electric Vehicle", "Engine Vehicle", "Economy Vehicle", "Eco Vehicle"],
    "answerIndex": 0, // Electric Vehicle
  },
  {
    "question": "Which car is famous for its gull-wing doors?",
    "options": ["Ford Mustang", "Chevrolet Camaro", "DeLorean DMC-12", "Honda Civic"],
    "answerIndex": 2, // DeLorean DMC-12
  }
],

// bikes

"bikes": [
 {
    "question": "Which company manufactures the popular bike model 'Ninja'?",
    "options": ["Yamaha", "Honda", "Suzuki", "Kawasaki"],
    "answerIndex": 3, // Kawasaki
  },
  {
    "question": "Which bike brand has the iconic tagline 'Ready to Race'?",
    "options": ["KTM", "Ducati", "Royal Enfield", "Harley-Davidson"],
    "answerIndex": 0, // KTM
  },
  {
    "question": "The 'Bullet' is a famous model from which bike brand?",
    "options": ["Yamaha", "Royal Enfield", "Bajaj", "Hero"],
    "answerIndex": 1, // Royal Enfield
  },
  {
    "question": "In which country is Ducati headquartered?",
    "options": ["Japan", "Italy", "USA", "Germany"],
    "answerIndex": 1, // Italy
  },
  {
    "question": "What does 'ABS' stand for in motorcycle technology?",
    "options": ["Advanced Bike System", "Automatic Braking System", "Anti-lock Braking System", "Anti Bike Skid"],
    "answerIndex": 2, // Anti-lock Braking System
  },
  {
    "question": "Which bike model is commonly associated with police departments worldwide?",
    "options": ["Ducati Monster", "Harley-Davidson Road King", "Yamaha YZF", "Honda CBR"],
    "answerIndex": 1, // Harley-Davidson Road King
  }
],


 "Sports": [
  {
    "question": "Which country won the FIFA World Cup in 2018?",
    "options": ["Brazil", "Germany", "France", "Argentina"],
    "answerIndex": 2, // France
  },
  {
    "question": "In which sport is the 'Wimbledon' tournament held?",
    "options": ["Tennis", "Cricket", "Soccer", "Basketball"],
    "answerIndex": 0, // Tennis
  },
  {
    "question": "Who holds the record for the most Olympic gold medals?",
    "options": ["Usain Bolt", "Michael Phelps", "Carl Lewis", "Mark Spitz"],
    "answerIndex": 1, // Michael Phelps
  },
  {
    "question": "In which sport is a 'hat-trick' a common term?",
    "options": ["Basketball", "Cricket", "Soccer", "Rugby"],
    "answerIndex": 2, // Soccer
  },
  {
    "question": "Which country hosted the 2020 Summer Olympics?",
    "options": ["Brazil", "China", "Japan", "USA"],
    "answerIndex": 2, // Japan
  },
  {
    "question": "How many players are there in a standard soccer team?",
    "options": ["9", "10", "11", "12"],
    "answerIndex": 2, // 11
  },
],


// games
" games":[
{
    "question": "Which company developed the game 'PUBG'?",
    "options": ["Tencent", "Epic Games", "Krafton", "Rockstar Games"],
    "answerIndex": 2, // Krafton
  },
  {
    "question": "In 'GTA V,' which fictional city is the main setting?",
    "options": ["Liberty City", "Los Santos", "Vice City", "San Fierro"],
    "answerIndex": 1, // Los Santos
  },
  {
    "question": "What is the main objective in the game 'Free Fire'?",
    "options": ["Racing", "Battle Royale Survival", "Treasure Hunt", "Building Cities"],
    "answerIndex": 1, // Battle Royale Survival
  },
  {
    "question": "Which of these games features characters like Trevor, Michael, and Franklin?",
    "options": ["PUBG", "Free Fire", "GTA V", "Fortnite"],
    "answerIndex": 2, // GTA V
  },
  {
    "question": "Which platform is Fortnite primarily associated with?",
    "options": ["Steam", "Epic Games Store", "PlayStation", "Google Play"],
    "answerIndex": 1, // Epic Games Store
  },
  {
    "question": "In 'PUBG,' what is the highest rank a player can achieve?",
    "options": ["Diamond", "Crown", "Conqueror", "Ace"],
    "answerIndex": 2, // Conqueror
  }
],

// history

 "history":[
 {
    "question": "Who was the first President of the United States?",
    "options": ["George Washington", "Abraham Lincoln", "Thomas Jefferson", "John Adams"],
    "answerIndex": 0, // George Washington
  },
  {
    "question": "In which year did World War II end?",
    "options": ["1940", "1945", "1950", "1960"],
    "answerIndex": 1, // 1945
  },
  {
    "question": "The ancient city of Rome was founded along which river?",
    "options": ["Danube", "Nile", "Tiber", "Thames"],
    "answerIndex": 2, // Tiber
  },
  {
    "question": "Who was the famous leader of the Mongol Empire?",
    "options": ["Attila", "Genghis Khan", "Alexander the Great", "Julius Caesar"],
    "answerIndex": 1, // Genghis Khan
  },
  {
    "question": "Which civilization is known for building the pyramids?",
    "options": ["Mayan", "Incan", "Roman", "Egyptian"],
    "answerIndex": 3, // Egyptian
  },
  {
    "question": "The Renaissance began in which European country?",
    "options": ["France", "Italy", "Spain", "England"],
    "answerIndex": 1, // Italy
  }
],

// geography
 "geography":[
  {
    "question": "What is the capital city of Japan?",
    "options": ["Tokyo", "Kyoto", "Osaka", "Hokkaido"],
    "answerIndex": 0, // Tokyo
  },
  {
    "question": "Which river is the longest in the world?",
    "options": ["Amazon", "Nile", "Yangtze", "Mississippi"],
    "answerIndex": 1, // Nile
  },
  {
    "question": "What is the largest desert in the world?",
    "options": ["Sahara", "Gobi", "Kalahari", "Antarctic"],
    "answerIndex": 3, // Antarctic
  },
  {
    "question": "Which country has the largest land area?",
    "options": ["Canada", "Russia", "China", "United States"],
    "answerIndex": 1, // Russia
  },
  {
    "question": "Mount Everest is located in which mountain range?",
    "options": ["Himalayas", "Andes", "Rockies", "Alps"],
    "answerIndex": 0, // Himalayas
  },
  {
    "question": "Which continent is known as the 'Dark Continent'?",
    "options": ["Asia", "Africa", "South America", "Australia"],
    "answerIndex": 1, // Africa
  }
],


};
}






// home screen

class gridspace{

  static List <Map<String, dynamic>> gridcontents= [
    {
      "name": "Movie",
      "image1":ImageConstant.movie,

    },
     {
      "name": "Toy",
      "image1":ImageConstant.Toys,

    },
     {
      "name": "Car",
      "image1":ImageConstant.car,

    },
     {
      "name": "Bike",
      "image1":ImageConstant.Bike,

    },
     {
      "name": "Sports",
      "image1":ImageConstant.soccer,

    },
     {
      "name": "Game",
      "image1":ImageConstant.Games,

    },
     {
      "name": "History",
      "image1":ImageConstant.history,

    },
     {
      "name": "Geography",
      "image1":ImageConstant.geography,

    },



  ];
}