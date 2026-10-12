import 'dart:ui';

import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 80,
      ),
      color: AppTheme.darkBlack,
      child: Column(
        children: [
          // =========================
          // SECTION TITLE
          // =========================

          const Text(
            'My Projects',
            style: TextStyle(
              color: AppTheme.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            width: 55,
            height: 3,
            decoration: BoxDecoration(
              color: AppTheme.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.blue.withValues(alpha: 0.45),
                  blurRadius: 12,
                ),
              ],
            ),
          ),

          const SizedBox(height: 45),

          // =========================
          // PROJECTS
          // =========================

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 25,
            runSpacing: 25,
            children: [
              _project(
                'Student Management App',
                'Flutter application for managing students, '
                    'courses and attendance.',
                Icons.school_rounded,
              ),

              _project(
                'Weather App',
                'Weather application using an API to display '
                    'weather information.',
                Icons.cloud_rounded,
              ),

              _project(
                'WhatsApp UI',
                'Modern messaging application UI created '
                    'with Flutter.',
                Icons.chat_rounded,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // =========================
  // PROJECT CARD
  // =========================

  Widget _project(
      String title,
      String description,
      IconData icon,
      ) {
    return SizedBox(
      width: 330,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 18,
            sigmaY: 18,
          ),
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: AppTheme.glass,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: AppTheme.glassBorderLight,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.blue.withValues(alpha: 0.06),
                  blurRadius: 30,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                // =========================
                // PROJECT IMAGE / ICON
                // =========================

                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppTheme.black,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: AppTheme.glassBorder,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Blue glow
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppTheme.blue.withValues(
                              alpha: 0.08,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppTheme.blue.withValues(
                                  alpha: 0.12,
                                ),
                                blurRadius: 50,
                                spreadRadius: 10,
                              ),
                            ],
                          ),
                        ),

                        Icon(
                          icon,
                          color: AppTheme.blue,
                          size: 70,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 22),

                // =========================
                // TITLE
                // =========================

                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppTheme.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                // =========================
                // DESCRIPTION
                // =========================

                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppTheme.grey,
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 22),

                // =========================
                // VIEW PROJECT BUTTON
                // =========================

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_rounded,
                      size: 18,
                    ),
                    label: const Text(
                      'View Project',
                    ),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppTheme.blue,
                      side: BorderSide(
                        color: AppTheme.blue.withValues(
                          alpha: 0.45,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 13,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}