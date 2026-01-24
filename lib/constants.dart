/// Application-wide constants used by both desktop and mobile views.
///
/// Centralizes layout ratios, animation timings, scroll thresholds, and
/// styling-related values so that tuning UX behavior is straightforward.
class AppConstants {
  /// Scroll thresholds that control when each section's fade-in animation
  /// becomes fully visible on desktop view. Values are scroll offsets in pixels.
  static const double scrollThresholdSection1 = 70.0;
  static const double scrollThresholdSection2 = 600.0;
  static const double scrollThresholdSection3 = 1200.0;
  static const double scrollThresholdSection4 = 1800.0;

  /// Horizontal content padding as a ratio of screen width.
  /// Adjust to change left/right spacing in desktop layout.
  static const double horizontalPaddingRatio = 0.15;

  /// Sidebar width as a ratio of screen width for desktop view.
  static const double sidebarWidthRatio = 0.1;

  /// Initial delay before enabling user scrolling on desktop landing.
  /// This prevents accidental scroll during intro; reduce to shorten wait.
  static const Duration scrollEnableDelay = Duration(seconds: 2);

  /// Duration used by section fade-in animations on desktop.
  static const Duration fadeAnimationDuration = Duration(milliseconds: 1000);

  /// Visual noise overlay settings for the background painter.
  /// Tweaking these impacts performance and aesthetic subtly.
  static const int noiseParticleCount = 5000; // Performance-tuned from 10000
  static const double noiseParticleRadius = 0.5;
  static const double noiseOpacity = 0.25;

  /// Public contact address rendered in the right sidebar (desktop).
  static const String email = 'dark70rd@proton.me';

  /// Section height ratios relative to the screen height (desktop only).
  /// These determine how tall each segment renders within the scroll view.
  static const double titleSectionHeight = 0.85;
  static const double aboutSectionHeight = 0.99;
  static const double serviceSectionHeight = 0.85;
  static const double showcaseSectionHeight = 2.0;
  static const double contactSectionHeight = 0.60;
}
