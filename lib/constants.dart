/// Application-wide constants
class AppConstants {
  // Scroll thresholds for section animations
  static const double scrollThresholdSection1 = 70.0;
  static const double scrollThresholdSection2 = 600.0;
  static const double scrollThresholdSection3 = 1200.0;
  static const double scrollThresholdSection4 = 1800.0;

  // Layout constants
  static const double horizontalPaddingRatio = 0.15;
  static const double sidebarWidthRatio = 0.1;

  // Animation durations
  static const Duration scrollEnableDelay = Duration(seconds: 2);
  static const Duration fadeAnimationDuration = Duration(milliseconds: 1000);

  // Noise painter settings
  static const int noiseParticleCount =
      5000; // Reduced from 10000 for performance
  static const double noiseParticleRadius = 0.5;
  static const double noiseOpacity = 0.25;

  // Contact information
  static const String email = 'dark70rd@proton.me';

  // Section heights (ratios of screen height)
  static const double titleSectionHeight = 0.85;
  static const double aboutSectionHeight = 0.99;
  static const double serviceSectionHeight = 0.85;
  static const double showcaseSectionHeight = 2.0;
  static const double contactSectionHeight = 0.60;
}
