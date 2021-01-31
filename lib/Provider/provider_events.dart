import 'package:flutter/material.dart';
import 'event_model.dart';

class Events with ChangeNotifier {
  List<TaskModel> _items = [
    TaskModel(
      id: 't1',
      title: 'Code Investigation',
      image:
          'https://cdn4.iconfinder.com/data/icons/crime-and-security-24/64/24-512.png',
      categories: ['b1'],
      description:
          'Crack the puzzle from the given program and unveil that Sherlock in you.',
      coordinators: ' Coordinators:Aniketh,Hitesh',
      prize: "Prize:Double the amount you paid",
    ),
    TaskModel(
        id: 't1',
        title: 'Coder\'s Guess  ',
        image:
            'https://www.freevector.com/uploads/vector/preview/15637/FreeVector-Man-With-Question-Mark.jpg',
        categories: ['b1'],
        description:
            'Put your guessing skills to work and solve the given puzzles',
        coordinators: 'Coordinators:Srinidhi,Harshitha,Meghana',
        prize: "Prize:Double the amount you paid"),
    TaskModel(
        id: 't1',
        title: 'Brain Hunker',
        image:
            'https://cdn3.iconfinder.com/data/icons/brain-games/1042/Puzzle.png',
        categories: ['b2'],
        description: 'Find the answer from given puzzle table.',
        coordinators: 'Coordinators:Deekshitha',
        prize: "Prize:Double the amount you paid"),
    TaskModel(
        id: 't1',
        title: 'The Circuit Way',
        image:
            'https://cdn2.iconfinder.com/data/icons/design-thinking-gradient-ideate-the-solution/512/processor-512.png',
        categories: ['b2'],
        description: 'Reach the destination without touching the coil',
        coordinators: 'Coordinators:Rinku',
        prize: "Prize:50/-"),
    TaskModel(
        id: 't1',
        title: 'Code Mania',
        image:
            'https://cdn0.iconfinder.com/data/icons/small-n-flat/24/678123-file-code-512.png',
        categories: ['b3'],
        description:
            'Pick the right code for output in one round and Write the code in other round with given constraints',
        coordinators: 'Coordinators:Navya & Karunakar',
        prize: 'Prize:250/-'),
    TaskModel(
        id: 't1',
        title: 'Code Puzzle',
        image:
            'https://cdn2.iconfinder.com/data/icons/free-simple-line-mix/48/40-Web_Development-512.png',
        categories: ['b3'],
        description:
            'Complete the parts of missing code and execute code to get right output',
        coordinators: 'Coordinators:Shivam & Sandeep',
        prize: "Prize: 150"),
    TaskModel(
        id: 't1',
        title: 'Hangman',
        image:
            'https://cdn2.iconfinder.com/data/icons/picol-vector/32/text-512.png',
        categories: ['b3'],
        description:
            'A word with missing blocks is diaplayed on the screen. Guess the word within the given chances.',
        coordinators: 'Coordinators:Shivam & Vamshi',
        prize: "Prize: 150"),
    TaskModel(
        id: 't1',
        title: 'Prototype Modelling',
        image:
            'https://cdn1.iconfinder.com/data/icons/software-engineering-and-video-gaming/512/457_Draft_engineering_process_prototype_prototyping_Advertising_Promo_Creative_Process-512.png',
        categories: ['b4'],
        description: 'Showcase your chasis prototype made with given material',
        coordinators: 'Coordinators:Ramu & Gaurav',
        prize: "Prize : 200/-"),
    TaskModel(
        id: 't1',
        title: 'Aero Design Challenge',
        image:
            'https://cdn0.iconfinder.com/data/icons/summer_holiday_icons/256/aeroplane.png',
        categories: ['b4'],
        description: 'Build an aeroplane model with given materials',
        coordinators: 'Coordinators:Diwakar & Prathyusha',
        prize: "Prize: 100/-"),
    TaskModel(
        id: 't1',
        title: 'Paper Presentation',
        image:
            'https://cdn2.iconfinder.com/data/icons/circle-icons-1/64/compose-512.png',
        categories: ['b4'],
        description: 'Give a paper presentation on a relevant technical topic',
        coordinators: 'Coordinators:Vivek & Shourika',
        prize: "Prize : 50/-"),
    TaskModel(
        id: 't1',
        title: 'Mechanical Quiz',
        image:
            'https://cdn3.iconfinder.com/data/icons/brain-games/1042/Quiz-Games.png',
        categories: ['b4'],
        description: 'Guess all the components of given Machine',
        coordinators: 'Coordinators:Phanindra & Vineeth',
        prize: "Prize: 50/-"),
    TaskModel(
        id: 't1',
        title: 'Don\'t Freak Out',
        image:
            'https://cdn1.iconfinder.com/data/icons/ui-navigation-1/152/alert-512.png',
        categories: ['b5'],
        description:
            'Return to a safe point by crossing all electrical hazards',
        coordinators: 'Coordinators:Priyank',
        prize: "Prize: 100"),
    TaskModel(
        id: 't1',
        title: 'Spot the wave',
        image: 'https://cdn0.iconfinder.com/data/icons/fatcow/32/draw_wave.png',
        categories: ['b5'],
        description: 'Determine wave magnitude at a given time',
        coordinators: 'Coordinators:Hasini & Lavanya',
        prize: "Double the amount you paid"),
    TaskModel(
        id: 't1',
        title: 'Circuit Debugging',
        image:
            'https://cdn2.iconfinder.com/data/icons/round-varieties/60/Rounded_-_High_Ultra_Colour10_-_Circuit_Board-512.png',
        categories: ['b5'],
        description: 'Complete given incomplete circuit network',
        coordinators: 'Coordinators:Swami & Nikhil',
        prize: "50 and 80 /- based on persons"),
    TaskModel(
        id: 't1',
        title: 'Defuse The Bomb',
        image:
            'https://cdn2.iconfinder.com/data/icons/circle-icons-1/64/bomb-512.png',
        categories: ['b5'],
        description:
            'Participant should find the right wire from the fiven circuit and diffuse a Bulb(Just like you would diffuse a bomb)',
        coordinators: 'Coordinators:Swami & Nikhil',
        prize: "50 and 80 /- based on persons"),
    TaskModel(
        id: 't1',
        title: 'Model Expo',
        image:
            'https://cdn3.iconfinder.com/data/icons/the-elegant-set/96/floor-plan.png',
        categories: ['b6'],
        description: 'Present a model related to Civil Engineering',
        coordinators: 'Coordinators:Aditya',
        prize: "1st Prize: 1000/- 2nd Prize : 500/-"),
    TaskModel(
      id: 't1',
      title: 'PosterPresentation',
      image:
          'https://cdn0.iconfinder.com/data/icons/kameleon-free-pack-rounded/110/Mind-Map-Paper-512.png',
      categories: ['b6'],
      description: 'Present any Civil Engg. topic in a paper or poster',
      coordinators: 'Coordinators:Sahithi',
      prize: "1st Prize: 500/- 2nd Prize : 300/-",
    ),
    TaskModel(
        id: 't1',
        title: 'PPT Presentation',
        image:
            'https://cdn3.iconfinder.com/data/icons/file-extension-names-vol-5-3/512/42-512.png',
        categories: ['b6'],
        description: 'Explain a brief Civil Engg topic with PPT',
        coordinators: 'Coordinators: Mani Teja',
        prize: "1st Prize: 500/- 2nd Prize : 300/"),
    TaskModel(
        id: 't1',
        title: 'Quick Survey',
        image:
            'https://cdn1.iconfinder.com/data/icons/adventure-outline-1/64/Adventure-Line-16-512.png',
        categories: ['b6'],
        description:
            'Survey the given area with given tools.Team of 3 can participate.',
        coordinators: 'Coordinators: Tarun Reddy',
        prize: "Prize : 500"),
    TaskModel(
      id: 't1',
      title: 'Laser Castle',
      image:
          'https://cdn0.iconfinder.com/data/icons/IS_credit-cards-full_final/512/laser.png',
      categories: ['b7'],
      description:
          'Start from one end of the room,participany has to reach the other end without touching the Lasers',
      coordinators: 'Coordinators:Sampath,Sunil,     Suhas',
      prize: "Double the amount you paid",
    ),
    TaskModel(
      id: 't1',
      title: 'Beat The Buzz',
      image:
          'https://cdn2.iconfinder.com/data/icons/nasty/60/apocolypse_nuclear_explosion_atomic_bomb-512.png',
      categories: ['b7'],
      description:
          'Two players must simuntaneously reach the destination crossing the hurdle of Landmines within 4 minutes',
      coordinators: 'Coordinators:Malavika,Sahithi',
      prize: "Prize: 100/-",
    ),
    TaskModel(
      id: 't1',
      title: 'Mind Hunt',
      image:
          'https://cdn0.iconfinder.com/data/icons/octicons/1024/circuit-board-512.png',
      categories: ['b7'],
      description:
          'Assemble the electric components using Breadboards,resistors,LED\'s,Resistors',
      coordinators: 'Coordinators:Akshay,Vamshi',
      prize: "Prize:Depends on the timing",
    ),
  ];
  List<TaskModel> get items {
    return [..._items];
  }
}
