# 🖤 DARK70RD's Portfolio Web

A responsive Flutter web & mobile portfolio application showcasing projects, services, and contact information with smooth animations and dark-themed UI.

## 🌟 Features

- **Responsive Design**: Seamlessly adapts between desktop and mobile layouts
  - Desktop: Scroll-triggered fade-in animations, sidebar navigation, fixed sections
  - Mobile: Swipeable content, bottom tab-like sidebar with quick navigation
- **Animated Title Page**: Sequential typewriter animations with custom timing
- **Global Text Styling System**: Centralized typography management for consistency
- **Project Showcase**: Dynamic project cards with image galleries and GitHub links
- **Contact Form Integration**: Google Forms CTA for structured inquiries
- **Social Links**: Direct GitHub and email shortcuts
- **Background Noise Effect**: Subtle procedural texture overlay for visual depth
- **Keyboard Navigation**: Arrow keys and Page Up/Down support on desktop
- **Performance Optimized**: Tree-shaken fonts (99%+ reduction), responsive scaling

## 📱 Layout Structure

### Desktop View (`lib/main.dart`)
- Hero title section with animated text reveal
- Fade-in sections on scroll (About, Services, Showcase, Contact)
- Fixed left/right sidebars with links and contact info
- Noise background animation
- Scroll delay during intro animation

### Mobile View (`lib/mobile/mobile_main.dart`)
- Fixed left sidebar with section navigation buttons
- Smooth scroll-to-section using `Scrollable.ensureVisible`
- Responsive padding and sizing
- Optimized touch targets and spacing

## 🛠️ Tech Stack

- **Framework**: Flutter 3.x
- **Language**: Dart
- **Responsive Design**: flutter_screenutil (^5.9.3)
- **Animations**: animated_text_kit (^4.2.2), custom AnimatedOpacity sequences
- **Icons**: font_awesome_flutter (^10.7.0)
- **URL Handling**: url_launcher (^6.2.6)
- **Web Deployment**: GitHub Pages (auto-deploy on main branch push)

## 🚀 Getting Started

### Prerequisites
- Flutter 3.x or later
- Dart SDK (included with Flutter)

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Dark70rd/portfolioweb.git
   cd portfolioweb
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run on web**:
   ```bash
   flutter run -d chrome
   ```

4. **Build for production**:
   ```bash
   flutter build web --release --base-href "/portfolioweb/"
   ```

## 📂 Project Structure

```
lib/
├── main.dart                      # Entry point, desktop view root
├── constants.dart                 # Global app constants & thresholds
├── theme_manager.dart             # App theming (colors, typography)
├── title_page.dart               # Animated intro sequence
├── about_page.dart               # About section with tech stack
├── my_services.dart              # Services/capabilities section
├── showcase.dart                 # Project showcase gallery
├── contact_view_page.dart        # Contact CTA with Google Form
├── footer.dart                   # Footer attribution
├── page_header.dart              # Reusable section header widget
├── projectShowcase_model.dart    # Project card component
├── text_animations.dart          # Hover-triggered text scramble
├── mobile/
│   ├── mobile_main.dart         # Mobile view root
│   ├── mobile_title_page.dart   # Mobile title animation
│   ├── mobile_about_page.dart   # Mobile About
│   ├── mobile_services_page.dart # Mobile Services
│   ├── mobile_showcase_page.dart # Mobile Showcase
│   ├── mobile_contact_page.dart  # Mobile Contact
│   ├── mobile_footer.dart        # Mobile Footer
│   ├── mobile_text_styles.dart   # Centralized mobile typography
│   └── mobile_widgets.dart       # Reusable mobile text widgets
└── assets/
    └── images/                   # Logo and visual assets
```

## 🎨 Styling & Customization

### Global Constants (`lib/constants.dart`)
Adjust UX behavior by editing:
- `scrollEnableDelay`: Initial scroll lock duration (default: 2 seconds)
- `scrollThresholdSection*`: Section fade-in scroll positions
- `noiseParticleCount`, `noiseOpacity`: Background texture settings
- Section height ratios for responsive layout

### Typography (`lib/mobile/mobile_text_styles.dart` & `lib/theme_manager.dart`)
- Centralized text styles for consistent branding
- Easy font size/weight adjustments across the app
- Mobile uses flutter_screenutil for responsive scaling

### Colors & Theme (`lib/theme_manager.dart`)
- Primary theme colors and accent values
- Grey palette for dark aesthetic
- Adjustable opacity and layering

## 🔗 Configuration

### Google Form Link (`lib/contact_view_page.dart`)
Replace the placeholder link with your actual Google Form:
```dart
launchUrl(Uri.parse('https://forms.gle/YOUR_FORM_ID'));
```

### Contact Email (`lib/constants.dart`)
Update the email in the right sidebar:
```dart
static const String email = 'your.email@example.com';
```

### GitHub Profile Links
- Desktop: `lib/main.dart` (left sidebar GitHub button)
- Mobile: `lib/mobile/mobile_main.dart` (sidebar button)
- Replace with your actual GitHub profile URL

## 📊 Performance Notes

- **Font tree-shaking**: MaterialIcons and FontAwesome reduced by 99%+ in production builds
- **Noise background**: Uses deterministic random seeding for smooth, performant texture
- **Lazy section rendering**: Mobile sections load after title animation (`_showOtherPages` flag)
- **Scroll physics**: Desktop view prevents accidental scroll during intro (configurable delay)

## 🧪 Testing & Quality

Run analyzer for code quality checks:
```bash
flutter analyze
```

Known info-level warnings (safe to ignore):
- Private types in public APIs (title_page, mobile_title_page, text_animations)
- File naming convention (projectShowcase_model.dart)

## 🚢 Deployment

### GitHub Pages (Auto-Deploy)

1. Push to the `main` branch:
   ```bash
   git add -A
   git commit -m "Update portfolio"
   git push origin main
   ```

2. GitHub Actions automatically builds and deploys to `https://github.com/Dark70rd/portfolioweb`

### Manual Build & Deploy

```bash
flutter build web --release --base-href "/portfolioweb/"
# Deploy the contents of build/web/ to your hosting
```

## 🔐 Security

- Sensitive files are excluded via `.gitignore`
- No API keys or credentials stored in version control
- External links use `url_launcher` for safe URL handling

## 📝 Documentation

Every major component includes doc comments (`///`) for IDE tooltips and quick reference:
- File headers explain purpose and high-level behavior
- Class-level docs describe roles and state management
- Key methods annotated with behavior notes

## 📋 TODO / Future Enhancements

- [ ] **Dark/Light Theme Toggle**: Add theme switcher for accessibility
- [ ] **Multi-language Support**: i18n for portfolio content (EN, ES, FR, etc.)
- [ ] **Animation Preferences**: Respect `prefers-reduced-motion` for accessibility
- [ ] **Blog Section**: Add a simple blog or articles showcase
- [ ] **Analytics Integration**: Track page views and user engagement
- [ ] **CMS Integration**: Connect to Strapi or Sanity for dynamic content updates
- [ ] **Project Filtering**: Add tags/categories to showcase projects
- [ ] **Resume Download**: PDF download link in About section
- [ ] **Social Media Links**: Twitter, LinkedIn, Instagram integration
- [ ] **Testimonials Section**: Display client/collaborator feedback
- [ ] **SEO Optimization**: Meta tags, structured data, sitemap
- [ ] **Newsletter Signup**: Email list capture for updates
- [ ] **Dark Mode Transitions**: Smooth theme switch animations
- [ ] **Performance Metrics**: Lighthouse optimizations and monitoring
- [ ] **Unit Tests**: Add comprehensive test coverage
- [ ] **E2E Tests**: Playwright or Cypress integration tests

## 🤝 Contributing

Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📞 Contact

**Email**: dark70rd@proton.me  
**GitHub**: [@Dark70rd](https://github.com/Dark70rd)

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

**Last Updated**: January 2026  
**Flutter Version**: 3.x  
**Status**: Active Development
