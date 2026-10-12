import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

import '../widgets/portfolio/hero_section.dart';
import '../widgets/portfolio/about_section.dart';
import '../widgets/portfolio/skills_section.dart';
import '../widgets/portfolio/projects_section.dart';
import '../widgets/portfolio/education_section.dart';
import '../widgets/portfolio/contact_section.dart';
import '../widgets/portfolio/footer_section.dart';
import '../widgets/portfolio/portfolio_app_bar.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ==========================================
      // TOP NAVIGATION
      // ==========================================

      appBar: const PortfolioAppBar(),

      // ==========================================
      // MOBILE DRAWER
      // ==========================================

      endDrawer: const PortfolioDrawer(),

      // ==========================================
      // MAIN BODY
      // ==========================================

      backgroundColor: AppTheme.black,

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // ==========================================
            // HERO
            // ==========================================

            KeyedSubtree(
              key: PortfolioNavigation.homeKey,
              child: const HeroSection(),
            ),

            // ==========================================
            // ABOUT
            // ==========================================

            KeyedSubtree(
              key: PortfolioNavigation.aboutKey,
              child: const AboutSection(),
            ),

            // ==========================================
            // SKILLS
            // ==========================================

            KeyedSubtree(
              key: PortfolioNavigation.skillsKey,
              child: const SkillsSection(),
            ),

            // ==========================================
            // PROJECTS
            // ==========================================

            KeyedSubtree(
              key: PortfolioNavigation.projectsKey,
              child: const ProjectsSection(),
            ),

            // ==========================================
            // EDUCATION
            // ==========================================

            KeyedSubtree(
              key: PortfolioNavigation.educationKey,
              child: const EducationSection(),
            ),

            // ==========================================
            // CONTACT
            // ==========================================

            KeyedSubtree(
              key: PortfolioNavigation.contactKey,
              child: const ContactSection(),
            ),

            // ==========================================
            // FOOTER
            // ==========================================

            const FooterSection(),
          ],
        ),
      ),
    );
  }
}