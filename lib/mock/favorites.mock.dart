import '../models/team.dart';
import 'package:flutter/material.dart';


List<Team> favoritesMock = <Team>[
  new Team(
      id: 1,
      name: "Real Madrid C. F.",
      logo: "assets/images/icons/realmadrid.png",
      lastFives: <String>[
            "E","D","D","D","V"
      ],
      league: 1,
      nextMatch: "Real Valladolid Club de Fútbol, S. A. D",
      position: 8
  ),
  new Team(
      id: 2,
      name: "Borussia Dortmund",
      logo: "assets/images/icons/borussia.png",
      lastFives: <String>[
        "V","V","V","V","V"
      ],
      league: 3,
      nextMatch: "Borussia Monchenladbach",
      position: 1
  ),
  new Team(
      id: 3,
      name: "A. C. Milan",
      logo: "assets/images/icons/acmilan.png",
      lastFives: <String>[
        "D","D","D","D","D"
      ],
      league: 2,
      nextMatch: "Juventus F. C.",
      position: 20
  )
];
