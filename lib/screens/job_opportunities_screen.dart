import 'package:flutter/material.dart';

import '../theme/clario_colors.dart';

/// A single employment opportunity listed on the Jobs & Opportunities
/// screen. Kept as plain data so the list can later be swapped for a
/// Firestore-backed feed without touching the UI.
@immutable
class JobOpportunity {
  const JobOpportunity({
    required this.title,
    required this.team,
    required this.engagement,
    required this.location,
    required this.summary,
    required this.skills,
  });

  final String title;
  final String team;
  final String engagement;
  final String location;
  final String summary;
  final List<String> skills;
}

/// A themed group of opportunities (Engineering, Content, Data, ...).
@immutable
class JobSection {
  const JobSection({
    required this.title,
    required this.caption,
    required this.icon,
    required this.opportunities,
  });

  final String title;
  final String caption;
  final IconData icon;
  final List<JobOpportunity> opportunities;
}

const List<JobSection> _jobSections = [
  JobSection(
    title: "Content & Media",
    caption: "Grow Kepler's voice on social platforms",
    icon: Icons.play_circle_outline,
    opportunities: [
      JobOpportunity(
        title: "Content Creator — TikTok",
        team: "Kepler Communications",
        engagement: "Part-time · Paid",
        location: "Remote / Kigali",
        summary:
        "Script, shoot and edit short-form videos that introduce Kepler "
            "programmes, student life and study tips to a Gen-Z audience. "
            "You own a weekly posting calendar and report on reach and "
            "watch time.",
        skills: [
          "Video editing",
          "Scriptwriting",
          "CapCut / Premiere",
          "Trend research",
        ],
      ),
      JobOpportunity(
        title: "Content Creator — YouTube",
        team: "Kepler Communications",
        engagement: "Part-time · Paid",
        location: "Remote / Kigali",
        summary:
        "Longer-form storytelling: campus documentaries, alumni "
            "interviews and explainer series. You plan episodes end-to-end "
            "together with the communications team.",
        skills: [
          "Storytelling",
          "Camera work",
          "YouTube Studio",
          "Thumbnail design",
        ],
      ),
      JobOpportunity(
        title: "Social Media Coordinator",
        team: "Kepler Marketing",
        engagement: "Internship",
        location: "Hybrid · Kigali",
        summary:
        "Schedule and moderate content across Kepler's channels, respond "
            "to comments and keep the community calendar aligned with "
            "admissions campaigns.",
        skills: [
          "Community management",
          "Copywriting",
          "Analytics",
        ],
      ),
    ],
  ),
  JobSection(
    title: "Engineering & Technology",
    caption: "Build the products Kepler students use every day",
    icon: Icons.code,
    opportunities: [
      JobOpportunity(
        title: "Software Engineer — Backend",
        team: "Kepler Product Team",
        engagement: "Full-time",
        location: "Hybrid · Kigali",
        summary:
        "Design and ship the APIs behind Kepler's learning platform — "
            "from authentication to progress tracking — inside an agile team "
            "with code review and continuous integration.",
        skills: [
          "Node.js / Python",
          "REST APIs",
          "PostgreSQL",
          "Git",
        ],
      ),
      JobOpportunity(
        title: "Software Engineer — Mobile (Flutter)",
        team: "Kepler Product Team",
        engagement: "Full-time",
        location: "Hybrid · Kigali",
        summary:
        "Extend the Kepler student app: offline notes, notifications and "
            "a smoother study flow across Android and iOS.",
        skills: [
          "Flutter",
          "Dart",
          "Firebase",
          "State management",
        ],
      ),
      JobOpportunity(
        title: "Frontend Web Developer",
        team: "Kepler Product Team",
        engagement: "Contract",
        location: "Remote",
        summary:
        "Turn design mockups into fast, accessible pages for the student "
            "portal and the public Kepler website.",
        skills: [
          "React",
          "HTML / CSS",
          "Responsive design",
          "Accessibility",
        ],
      ),
    ],
  ),
  JobSection(
    title: "Data & Analytics",
    caption: "Turn learning data into decisions",
    icon: Icons.insights_outlined,
    opportunities: [
      JobOpportunity(
        title: "Junior Data Analyst",
        team: "Kepler Learning Analytics",
        engagement: "Full-time",
        location: "Kigali",
        summary:
        "Build dashboards that show how cohorts are progressing and where "
            "students need support, then present the findings to programme "
            "leads.",
        skills: [
          "SQL",
          "Excel / Sheets",
          "Looker Studio",
          "Data storytelling",
        ],
      ),
      JobOpportunity(
        title: "Data Science Intern",
        team: "Kepler Learning Analytics",
        engagement: "Internship",
        location: "Hybrid · Kigali",
        summary:
        "Support modelling projects such as dropout risk and engagement "
            "scoring, from cleaning raw data to documenting the results.",
        skills: [
          "Python",
          "pandas",
          "Statistics",
          "Jupyter",
        ],
      ),
      JobOpportunity(
        title: "Learning Analytics Assistant",
        team: "Academic Affairs",
        engagement: "Part-time",
        location: "On campus",
        summary:
        "Work with the academics team to measure the impact of new "
            "courses and student interventions.",
        skills: [
          "Research methods",
          "Survey design",
          "Reporting",
        ],
      ),
    ],
  ),
  JobSection(
    title: "Design & Creative",
    caption: "Shape how Kepler looks and feels",
    icon: Icons.brush_outlined,
    opportunities: [
      JobOpportunity(
        title: "UI / UX Designer",
        team: "Kepler Product Team",
        engagement: "Full-time",
        location: "Hybrid · Kigali",
        summary:
        "Research student needs, wireframe flows and deliver polished "
            "interfaces for Kepler's web and mobile products.",
        skills: [
          "Figma",
          "User research",
          "Prototyping",
          "Design systems",
        ],
      ),
      JobOpportunity(
        title: "Graphic Designer",
        team: "Kepler Brand Studio",
        engagement: "Part-time · Paid",
        location: "Remote",
        summary:
        "Produce campaign visuals, course covers and print material that "
            "keep Kepler's brand consistent across every channel.",
        skills: [
          "Adobe Suite",
          "Typography",
          "Brand guidelines",
        ],
      ),
    ],
  ),
  JobSection(
    title: "Business, Operations & Student Support",
    caption: "Keep the student experience running smoothly",
    icon: Icons.business_center_outlined,
    opportunities: [
      JobOpportunity(
        title: "Student Ambassador",
        team: "Admissions & Outreach",
        engagement: "Part-time · Paid",
        location: "Field based",
        summary:
        "Represent Kepler at school visits, fairs and online Q&A "
            "sessions, and guide prospective students through the "
            "application process.",
        skills: [
          "Public speaking",
          "Outreach",
          "Kinyarwanda & English",
        ],
      ),
      JobOpportunity(
        title: "Business Development Associate",
        team: "Employer Partnerships",
        engagement: "Full-time",
        location: "Kigali",
        summary:
        "Identify and follow up partnership opportunities with employers "
            "who want to hire Kepler graduates, and keep the pipeline "
            "organised.",
        skills: [
          "Communication",
          "CRM tools",
          "Proposal writing",
        ],
      ),
      JobOpportunity(
        title: "Academic Peer Mentor",
        team: "Student Success",
        engagement: "Part-time",
        location: "On campus",
        summary:
        "Coach first-year students in study skills, time management and "
            "coding fundamentals through weekly sessions.",
        skills: [
          "Mentoring",
          "Subject mastery",
          "Patience",
        ],
      ),
    ],
  ),
];

class JobOpportunitiesScreen extends StatelessWidget {
  const JobOpportunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClarioColors.background(context),
      appBar: AppBar(
        backgroundColor: ClarioColors.background(context),
        foregroundColor: ClarioColors.text(context),
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          "Jobs & Opportunities",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 40),
        children: [
          _buildIntro(context),

          for (final section in _jobSections) ...[
            const SizedBox(height: 30),
            _buildSectionHeader(context, section),
            for (final job in section.opportunities)
              _buildJobCard(context, job),
          ],

          _buildFooter(context),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------
  // Header
  // ---------------------------------------------------------------

  Widget _buildIntro(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ClarioColors.blue.withOpacity(0.08),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: ClarioColors.blue.withOpacity(0.22),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.work_outline,
                color: ClarioColors.blue,
                size: 22,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Kepler Career Network",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: ClarioColors.text(context),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "Paid roles, internships and part-time work reserved for Kepler "
                "students and recent graduates. Every listing below is reviewed "
                "by the Kepler Talent team before it is published.",
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: ClarioColors.text(context).withOpacity(0.78),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------
  // Section header
  // ---------------------------------------------------------------

  Widget _buildSectionHeader(BuildContext context, JobSection section) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
            color: ClarioColors.blue.withOpacity(0.12),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            section.icon,
            size: 20,
            color: ClarioColors.blue,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                section.title.toUpperCase(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1,
                  color: ClarioColors.blue,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                section.caption,
                style: TextStyle(
                  fontSize: 13,
                  color: ClarioColors.text(context).withOpacity(0.65),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ---------------------------------------------------------------
  // Job card
  // ---------------------------------------------------------------

  Widget _buildJobCard(BuildContext context, JobOpportunity job) {
    final textColor = ClarioColors.text(context);

    return Container(
      margin: const EdgeInsets.only(top: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: textColor.withOpacity(0.03),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: textColor.withOpacity(0.10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  job.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              _buildBadge(context, job.engagement),
            ],
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              Icon(
                Icons.apartment_outlined,
                size: 14,
                color: textColor.withOpacity(0.55),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  "${job.team}  ·  ${job.location}",
                  style: TextStyle(
                    fontSize: 12.5,
                    color: textColor.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Text(
            job.summary,
            style: TextStyle(
              fontSize: 13.5,
              height: 1.55,
              color: textColor.withOpacity(0.78),
            ),
          ),

          const SizedBox(height: 14),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final skill in job.skills) _buildSkillChip(context, skill),
            ],
          ),

          const SizedBox(height: 6),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => _showApplyInfo(context, job),
              style: TextButton.styleFrom(
                foregroundColor: ClarioColors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
              ),
              child: const Text(
                "Apply",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBadge(BuildContext context, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: ClarioColors.blue.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.3,
          color: ClarioColors.blue,
        ),
      ),
    );
  }

  Widget _buildSkillChip(BuildContext context, String label) {
    final textColor = ClarioColors.text(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: textColor.withOpacity(0.06),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11.5,
          fontWeight: FontWeight.w500,
          color: textColor.withOpacity(0.72),
        ),
      ),
    );
  }

  // ---------------------------------------------------------------
  // Footer
  // ---------------------------------------------------------------

  Widget _buildFooter(BuildContext context) {
    final textColor = ClarioColors.text(context);

    return Padding(
      padding: const EdgeInsets.only(top: 34),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info_outline,
            size: 16,
            color: textColor.withOpacity(0.5),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              "These listings are shared by Kepler and its hiring partners. "
                  "If nothing matches your track yet, check back — new roles are "
                  "posted at the start of every term.",
              style: TextStyle(
                fontSize: 12.5,
                height: 1.5,
                color: textColor.withOpacity(0.55),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------
  // Actions
  // ---------------------------------------------------------------

  void _showApplyInfo(BuildContext context, JobOpportunity job) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Applications for \"${job.title}\" open in the Kepler Talent portal.",
        ),
      ),
    );
  }
}