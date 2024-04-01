enum Flavor { devDebug, devRelease, prodDebug, prodRelease }

class AppConfig {
  static const devDebugLeague = 'English Premier League';
  static const devReleaseLeague = 'German Bundesliga';
  static const prodDebugLeague = 'Italian Serie A';
  static const prodReleaseLeague = 'Spanish La Liga';

  static late Flavor appFlavor;

  static String get baseLeague {
    switch (appFlavor) {
      case Flavor.devDebug:
        return devDebugLeague;
      case Flavor.devRelease:
        return devReleaseLeague;
      case Flavor.prodDebug:
        return prodDebugLeague;
      case Flavor.prodRelease:
        return prodReleaseLeague;
    }
  }
}