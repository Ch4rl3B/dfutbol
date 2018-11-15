/// USED TO SIGN THE APLICATION ON CONSOLE LOG...
/// OMG!!
var sign = print('''
  << ------------------------------------- >>   
        Builded by: Charmit Solutions
        -----------------------------
                  Starring:
                Ernesto Alfonso
                Rene Lazo Mendez
                      ...
        -----------------------------
                Havana, 2018.
        @Copirigth All Rigths Reserved
  << ------------------------------------- >>
''');



/// List all available competitions.
const String URL_COMPETITIONS = "https://api.football-data.org/v2/competitions?plan=TIER_ONE";

/// List one particular competition.
const String URL_COMPETITION_DETAIL = "https://api.football-data.org/v2/competitions/%id";


/// List all teams for a particular competition.
/// params:
///     season={YEAR} : String /YYYY/ 	The starting year of a season e.g. 2017 or 2016
///     stage={STAGE} : String /[A-Z]+/ 	Check the season node for available stages of a particular competition/season

const String URL_COMPETITION_TEAMS = "https://api.football-data.org/v2/competitions/%id/teams";


/// Show Standings for a particular competition
/// params:
///     standingType={standingType} : String /[A-Z]+/ 	[ TOTAL (default) | HOME | AWAY ]
const String URL_COMPETITION_STANDINGS = "https://api.football-data.org/v2/competitions/%id/standings";

/// List all matches for a particular competition.
/// params:
///     dateFrom={DATE} : String /YYYY-MM-dd/ e.g. 2018-06-22
///    dateTo={DATE} : String /YYYY-MM-dd/ e.g. 2018-06-22
///    stage={STAGE} : Check the season node for available stages of a particular competition/season
///    status={STATUS} :   The status of a match. [SCHEDULED | LIVE | IN_PLAY | PAUSED | FINISHED | POSTPONED | SUSPENDED | CANCELED]
///    matchday={MATCHDAY} : Integer /[1-4]+[0-9]* /
///    group={GROUP} : String /[A-Z]+/ 	Allows filtering for groupings in a competition.
///    season={YEAR} : String /YYYY/ 	The starting year of a season e.g. 2017 or 2016
const String URL_COMPETITION_MATCH = "https://api.football-data.org/v2/competitions/%id/matches";

/// List goal scorers for a particular competition
/// params:
///     limit={LIMIT} : Integer /\d+/ 	Limits your result set to the given number. Defaults to 10.
const String URL_COMPETITION_SCORERS = "https://api.football-data.org/v2/competitions/%id/scorers";