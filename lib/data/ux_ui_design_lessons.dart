import '../models/skill_lesson.dart';

/// All lessons for the UX/UI Design track.
///
/// Fully static. No AI, no network. Written for a South African
/// audience — every rand amount, every platform and every legal
/// reference is what a student here would actually use.
class UxUiDesignLessons {
  UxUiDesignLessons._();

  static const String trackId = 'ux_ui_design';

  static const List<SkillLesson> lessons = [
    _lesson1,
    _lesson2,
    _lesson3,
    _lesson4,
    _lesson5,
    _lesson6,
    _lesson7,
  ];

  // ─────────────────────────────────────────────────────────────
  // Lesson 1 — what UX/UI really is
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson1 = SkillLesson(
    id: 'uxui_1',
    trackId: trackId,
    title: 'What UX/UI Design Really Is',
    subtitle: 'The difference that decides your career',
    estimatedMinutes: 20,
    blocks: [
      LessonParagraph(
        'UX and UI are two different jobs that sound the same. '
            'Almost every beginner confuses them. The ones who '
            'understand the difference early end up charging 3–5x '
            'more than the ones who do not.',
      ),
      LessonParagraph(
        'This track teaches both, but the priority is UX. UI is '
            'the part people notice. UX is the part that decides '
            'whether they stay, buy, or leave.',
      ),

      LessonHeading('UX — User Experience Design'),
      LessonParagraph(
        'UX is the design of the entire experience a person has '
            'with a product. From the moment they hear about it, '
            'to the first visit, to signing up, using it, getting '
            'help, and deciding whether to come back.',
      ),
      LessonParagraph('A UX designer asks:'),
      LessonBullets([
        'Who is this for? What do they actually need?',
        'Where do they get confused? Where do they leave?',
        'What is the fastest, clearest path to what they want?',
        'What happens when something goes wrong?',
        'Why would they come back?',
      ]),

      LessonHeading('UI — User Interface Design'),
      LessonParagraph(
        'UI is the design of the visual surface — how the app or '
            'website actually looks. Colours, typography, spacing, '
            'icons, buttons, images. The pixels.',
      ),
      LessonParagraph('A UI designer asks:'),
      LessonBullets([
        'Does this look trustworthy?',
        'Is the hierarchy clear — can I see the main action in '
            'one glance?',
        'Is this readable? Is it consistent?',
        'Does it work on a small phone and a big screen?',
        'Does it feel like a real brand, or a template?',
      ]),

      LessonCallout(
        title: 'The one-sentence distinction',
        body:
        'UX is the experience — the logic, the flow, the '
            'problem-solving. UI is the surface — the visuals, the '
            'colours, the pixels. A good UX with bad UI feels '
            'functional but ugly. A good UI with bad UX looks '
            'beautiful but nobody can use it. You need both.',
        tone: CalloutTone.info,
      ),

      LessonHeading('Why this matters for money'),
      LessonParagraph(
        'A pure UI designer charges R400–R800/hour. A pure UX '
            'designer charges R500–R1,000/hour. A designer who '
            'can do both — and can explain the *why* behind every '
            'decision — charges R800–R1,500/hour and gets the '
            'higher-budget clients.',
      ),
      LessonParagraph(
        'Clients do not actually want a "pretty mockup". They '
            'want a product that converts, that people return to, '
            'that generates revenue. Designers who can connect '
            'their pixels to business outcomes get paid more. '
            'Designers who just make things "look nice" get '
            'treated like order-takers.',
      ),

      LessonHeading('The two career paths'),
      LessonParagraph(
        'Almost every UX/UI designer takes one of two paths. '
            'Most begin in-house and move to freelance once they '
            'have a portfolio.',
      ),

      LessonHeading('Path 1 — In-house designer'),
      LessonBullets([
        'You join a company (a bank, a startup, an agency, a '
            'university). Steady salary. You work on one '
            'product line.',
        'Salary in South Africa — R25,000–R55,000/month for '
            'mid-level, R55,000–R100,000/month for senior at '
            'larger companies.',
        'Best for — people who like stability, working with '
            'developers and product managers, and learning one '
            'product deeply.',
      ]),

      LessonHeading('Path 2 — Freelance designer'),
      LessonBullets([
        'You work for multiple clients on project-based work. '
            'Websites, mobile apps, redesigns, design systems.',
        'Rate in South Africa — R500–R1,500/hour, or '
            'R8,000–R80,000 per project depending on scope.',
        'Best for — people who like variety, want to build a '
            'business, and can manage their own time.',
      ]),
      LessonCallout(
        title: 'The honest entry point',
        body:
        'You will not start earning R50,000/month. The '
            'realistic first year: 3–5 small projects for '
            'friends, family, or local businesses at R2,000–'
            'R8,000 each, mostly for portfolio building. The '
            'money comes in year 2 and 3, once you have case '
            'studies and referrals.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('The five things design actually solves'),
      LessonParagraph(
        'Design is not decoration. It is problem-solving. Every '
            'good design decision is answering one of five '
            'questions:',
      ),
      LessonSteps(
        title: 'The five problems design solves',
        steps: [
          LessonStep(
            title: '1. Confusion',
            body:
            'The user does not know where to click, what '
                'to do next, or what the product does. Good '
                'design makes the next step obvious.',
          ),
          LessonStep(
            title: '2. Distrust',
            body:
            'The user does not feel safe entering their '
                'card details or personal info. Good design '
                'signals trust through clarity, real '
                'photography, and familiar patterns.',
          ),
          LessonStep(
            title: '3. Friction',
            body:
            'The user wants to do something but the '
                'product makes it hard. Extra steps, unclear '
                'buttons, hidden menus. Good design removes '
                'steps.',
          ),
          LessonStep(
            title: '4. Exclusion',
            body:
            'The user cannot use the product because of '
                'small text, poor contrast, or an interface '
                'that assumes things about them. Good design '
                'works for everyone.',
          ),
          LessonStep(
            title: '5. Abandonment',
            body:
            'The user leaves, or does not come back. '
                'Usually the result of one of the four above. '
                'Good design gives a reason to return.',
          ),
        ],
      ),

      LessonHeading('The design process — five stages'),
      LessonParagraph(
        'Professional design follows a process. Skip the '
            'process and you become an order-taker. Follow it and '
            'you become the person who ships products that work.',
      ),
      LessonBullets([
        'Empathise — understand the user and the problem. '
            'Talk to people. Research.',
        'Define — write a clear problem statement. "We need '
            'to reduce checkout abandonment on mobile."',
        'Ideate — sketch solutions. Explore options. Do not '
            'commit to the first idea.',
        'Prototype — build a rough version to test. '
            'Paper, Figma, whatever. Not the final design.',
        'Test — put it in front of real users. Fix what '
            'breaks. Iterate.',
      ]),
      LessonCallout(
        title: 'The biggest beginner mistake',
        body:
        'Skipping straight to "prototype" — opening Figma '
            'and drawing screens before understanding the user. '
            'It feels productive. It is not. Half the value of '
            'design is in the first three stages, before you '
            'touch a pixel.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('What you will actually do in this track'),
      LessonBullets([
        'Learn the visual fundamentals — colour, typography, '
            'layout, hierarchy.',
        'Run user research — interviews, surveys, and '
            'synthesis.',
        'Wireframe before you design — sketch, then refine.',
        'Build in Figma from a blank file to a finished '
            'screen.',
        'Create a design system — reusable components and '
            'tokens.',
        'Build a portfolio that lands clients.',
        'Handle contracts, pricing, and POPIA compliance.',
      ]),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What is the difference between UX and UI, in one '
              'sentence?',
          'Why does a designer who can do both charge more?',
          'What are the five things design actually solves?',
          'What are the five stages of the design process?',
          'Why is skipping straight to Figma a beginner '
              'mistake?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'Lesson 2 is the visual fundamentals — colour theory, '
            'typography, spacing, layout, and visual hierarchy. '
            'Everything you see on a screen is one of those five '
            'things used well or badly. Learn them once and every '
            'design you look at, from that point on, you can '
            'diagnose why it works or why it does not.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 2 — design fundamentals
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson2 = SkillLesson(
    id: 'uxui_2',
    trackId: trackId,
    title: 'Design Fundamentals',
    subtitle: 'Colour, typography, spacing, layout, hierarchy',
    estimatedMinutes: 26,
    blocks: [
      LessonParagraph(
        'Every design decision you will ever make falls into one '
            'of five buckets: colour, typography, spacing, layout, '
            'or visual hierarchy. Master these five and you can '
            'design almost anything from scratch.',
      ),
      LessonParagraph(
        'This lesson is dense. Read it once, then revisit it '
            'after Lesson 5 when you have actually built something '
            'in Figma. It will make much more sense the second '
            'time.',
      ),

      LessonHeading('1. Colour'),
      LessonParagraph(
        'Colour is the fastest way to make a design look '
            'professional — or amateur. Two rules do 90% of the '
            'work:',
      ),
      LessonBullets([
        'Pick 2–3 colours, not 10. One primary (used for the '
            'main action), one neutral (background and text), '
            'one accent (used sparingly).',
        'Use the 60-30-10 rule — 60% of a design is your '
            'neutral, 30% is your secondary, 10% is your '
            'accent.',
      ]),
      LessonParagraph('Where beginners go wrong:'),
      LessonBullets([
        'Too many colours — five different blues, three '
            'different reds. Looks chaotic.',
        'Too saturated — bright neon green everywhere is '
            'exhausting. Use saturation for accents, not '
            'backgrounds.',
        'No contrast — light grey text on white fails '
            'readability. WCAG (the accessibility standard) '
            'requires a contrast ratio of at least 4.5:1 for '
            'body text.',
      ]),
      LessonCodeBlock(
        caption: 'A safe, professional colour palette',
        content:
        'PRIMARY       #2563EB   Blue — for main actions\n'
            'PRIMARY DARK  #1E40AF   Hover state\n'
            'NEUTRAL       #FFFFFF   Background (white)\n'
            'TEXT          #0F172A   Body text\n'
            'TEXT MUTED    #64748B   Secondary text\n'
            'BORDER        #E2E8F0   Card borders\n'
            'SUCCESS       #16A34A   Success messages\n'
            'WARNING       #F59E0B   Warning states\n'
            'DANGER        #DC2626   Error states\n'
            '\n'
            'This palette works for 80% of apps. Copy it. Use\n'
            'it. Do not invent your own until you understand\n'
            'why this works.',
      ),
      LessonCallout(
        title: 'The contrast check',
        body:
        'Any text you put on any background must have a '
            'contrast ratio of at least 4.5:1. Test it free at '
            'webaim.org/resources/contrastchecker. If the text '
            'fails, either darken the text or lighten the '
            'background. This is not optional — bad contrast is '
            'the single most common accessibility failure and '
            'it makes designs look amateur.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('2. Typography'),
      LessonParagraph(
        'Typography is text design. The average app has 15 '
            'different font sizes, weights, and colours scattered '
            'across it. Professional designs use 3–5. That '
            'discipline is what separates polished from sloppy.',
      ),
      LessonParagraph('Pick a type scale and stick to it. A common '
          'professional scale:'),
      LessonCodeBlock(
        caption: 'A professional type scale',
        content:
        'Display     36px / bold      / 1.2 line height\n'
            'Heading 1   28px / bold      / 1.3\n'
            'Heading 2   22px / bold      / 1.3\n'
            'Heading 3   18px / semibold  / 1.4\n'
            'Body Large  16px / regular   / 1.6\n'
            'Body        14px / regular   / 1.6\n'
            'Caption     12px / regular   / 1.4\n'
            '\n'
            'That is 7 sizes. Most apps only need 4–5 of these.\n'
            'Do not use every size on every screen. Pick the\n'
            '2–3 you need.',
      ),
      LessonParagraph('Font pairing — the safe rule:'),
      LessonBullets([
        'One font family for everything (Inter, Roboto, or '
            'system fonts). Safest and cleanest.',
        'Or two — one for headings, one for body. Pair a '
            'display font (Poppins, Fraunces) with a plain '
            'sans-serif body (Inter, DM Sans).',
        'Never three. Three fonts is a red flag that says '
            '"I am still learning".',
      ]),
      LessonCallout(
        title: 'Free fonts worth using',
        body:
        'Inter — the safest, cleanest sans-serif. Used by '
            'Figma, GitHub, and half the internet.\n'
            'DM Sans — friendly and modern.\n'
            'Poppins — geometric, good for headings.\n'
            'Playfair Display — serif, good for premium brands.\n'
            'IBM Plex Sans — technical, professional.\n\n'
            'All free on Google Fonts. Do not use 20 different '
            'fonts on one project.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('3. Spacing'),
      LessonParagraph(
        'Spacing is the invisible glue that holds a design '
            'together. Most amateur designs feel "off" because '
            'the spacing is inconsistent — some gaps are 8px, '
            'some are 13px, some are 22px.',
      ),
      LessonParagraph(
        'The rule: pick a spacing scale and stick to it. Every '
            'margin, every padding, every gap is one of the '
            'values from the scale.',
      ),
      LessonCodeBlock(
        caption: 'The 8-point spacing scale',
        content:
        '4px      very tight (icon to text)\n'
            '8px      tight (inside buttons, small cards)\n'
            '12px     small (between form fields)\n'
            '16px     medium (inside standard cards)\n'
            '24px     large (between sections)\n'
            '32px     section break\n'
            '48px     large section break\n'
            '64px     page section\n'
            '\n'
            'Every value is a multiple of 4 (and 8). This is\n'
            'called the "8-point grid" — the industry standard.\n'
            'If you ever need 13px or 22px, use 12px or 24px\n'
            'instead.',
      ),
      LessonCallout(
        title: 'Whitespace is not wasted space',
        body:
        'Beginners try to fill every gap with content. '
            'Professionals use whitespace to create focus, '
            'breathing room, and hierarchy. A crowded screen '
            'feels overwhelming. A spacious screen feels '
            'premium. Apple, Stripe, Linear — all use more '
            'whitespace than you think, deliberately.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('4. Layout'),
      LessonParagraph(
        'Layout is where you place things on the screen. There '
            'are three patterns you will use constantly:',
      ),
      LessonBullets([
        'Single column — the simplest. Used on mobile, '
            'landing pages, forms. One thing after another, '
            'vertically.',
        'Grid — 12 columns, 3–4 rows. Used on dashboards, '
            'galleries, product listings.',
        'Sidebar + content — used on apps with navigation '
            '(Gmail, Notion, Figma itself).',
      ]),
      LessonParagraph(
        'Almost every screen falls into one of those three '
            'layouts. Do not invent a new one for every screen — '
            'pick the pattern that fits and make it consistent '
            'across the app.',
      ),
      LessonCallout(
        title: 'The F-pattern and the Z-pattern',
        body:
        'Research shows people scan screens in predictable '
            'patterns. Text-heavy pages: eyes move in an F — '
            'top to bottom down the left, then sweep right for '
            'headlines. Image/action pages: eyes move in a Z — '
            'top-left, top-right, diagonal, bottom-right. Put '
            'your most important content where the eyes '
            'already go.',
        tone: CalloutTone.info,
      ),

      LessonHeading('5. Visual hierarchy'),
      LessonParagraph(
        'Visual hierarchy is the order in which the eye sees '
            'things. Every screen has one, whether you designed '
            'it or not. If you did not design it deliberately, '
            'the eye sees the wrong things first.',
      ),
      LessonParagraph('The four tools for creating hierarchy:'),
      LessonBullets([
        'Size — the biggest thing is seen first. Make the '
            'headline biggest.',
        'Weight — bold draws the eye. Reserve it for what '
            'matters.',
        'Colour — a bright accent draws attention. Use it '
            'sparingly.',
        'Position — top and centre are seen first. Bottom '
            'and corners are seen last.',
      ]),
      LessonParagraph(
        'The rule: on any screen, one thing should be the '
            'clear primary. Everything else supports it. If '
            'multiple things compete for attention, nothing '
            'wins.',
      ),

      LessonHeading('Accessibility — the fundamentals'),
      LessonBullets([
        'Contrast — at least 4.5:1 for body text, 3:1 for '
            'large text (18px+).',
        'Font size — minimum 16px for body text on web. '
            'Anything smaller is hard to read.',
        'Touch targets — buttons must be at least 44x44px. '
            'Smaller and they are hard to tap on mobile.',
        'Labels — never rely on colour alone to convey '
            'meaning. Add an icon or text label.',
        'Alt text — every image needs a description for '
            'screen readers.',
        'Focus states — every interactive element needs a '
            'visible focus ring for keyboard users.',
      ]),
      LessonCallout(
        title: 'Accessibility is not optional',
        body:
        'In South Africa, accessibility is increasingly '
            'required — government sites must comply with WCAG '
            '2.1 AA. Beyond the law, accessible design is '
            'better design. It works better for everyone, not '
            'just people with disabilities. Designers who do '
            'accessibility well get hired by serious '
            'organisations.',
        tone: CalloutTone.warning,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What is the 60-30-10 rule?',
          'What is the 8-point spacing scale, and why does it '
              'matter?',
          'What are the four tools for creating visual '
              'hierarchy?',
          'What contrast ratio does WCAG require for body '
              'text?',
          'What are the three common layout patterns?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You have the visual vocabulary. Lesson 3 is user '
            'research — how to actually find out what users need '
            'before you design anything. Interviews, surveys, '
            'usability tests, and the synthesis method that turns '
            'messy notes into a clear problem statement.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 3 — user research
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson3 = SkillLesson(
    id: 'uxui_3',
    trackId: trackId,
    title: 'User Research',
    subtitle: 'Finding out what users actually need',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'You are not your user. Whatever you think is obvious, '
            'is not. Whatever you think is intuitive, is not. '
            'Every design decision that is not based on research '
            'is a guess — and guesses get expensive.',
      ),
      LessonParagraph(
        'User research is how you replace guesses with evidence. '
            'You do not need a research team or a big budget. You '
            'need a phone, a few hours, and the ability to shut '
            'up and listen.',
      ),

      LessonHeading('The five research methods'),
      LessonParagraph(
        'You will use five methods, in roughly this order. None '
            'of them requires anything you do not already have.',
      ),

      LessonHeading('1. User interviews'),
      LessonBullets([
        'What — one-on-one conversations with real users, 20–30 '
            'minutes each.',
        'When — at the very start, before you design anything.',
        'How many — 5–8 is enough to spot patterns. More than '
            '10 and you are hearing the same things again.',
        'Output — raw notes, quotes, and the pain points you '
            'heard most.',
      ]),

      LessonHeading('2. Surveys'),
      LessonBullets([
        'What — written questionnaires sent to many users at '
            'once.',
        'When — when you already have a hypothesis and want to '
            'test it at scale.',
        'How many — 30+ responses for quantitative data.',
        'Output — percentages, ranked preferences, ratings.',
      ]),

      LessonHeading('3. Usability tests'),
      LessonBullets([
        'What — you watch real users try to do a task on your '
            'prototype or site.',
        'When — after wireframes, before final design.',
        'How many — 5 users. This is well-established in '
            'research — 5 users surface 85% of usability '
            'problems.',
        'Output — where they got stuck, what confused them, '
            'where they clicked first.',
      ]),

      LessonHeading('4. Analytics'),
      LessonBullets([
        'What — the numbers on your existing site or app. '
            'Google Analytics, Mixpanel, Hotjar.',
        'When — when you already have a live product.',
        'What to look at — bounce rate, drop-off points, '
            'heatmaps, most-clicked elements.',
        'Output — quantitative evidence of where users leave.',
      ]),

      LessonHeading('5. Competitive analysis'),
      LessonBullets([
        'What — studying how competitors solve the same problem.',
        'When — at the start, alongside interviews.',
        'How — screenshots of 3–5 competitor products, notes '
            'on patterns and problems.',
        'Output — what is standard in the industry, what is '
            'missing, what to improve.',
      ]),

      LessonHeading('How to run a user interview'),
      LessonParagraph(
        'The biggest mistake in user interviews is talking. The '
            'goal is to get the user to talk, in their own words, '
            'about their real behaviour — not their opinions on '
            'your idea.',
      ),
      LessonSteps(
        title: 'The 25-minute interview structure',
        steps: [
          LessonStep(
            title: 'Minutes 1–3 — warm-up',
            body:
            '"Thanks for your time. There are no wrong '
                'answers. I am not here to sell you anything. '
                'I just want to understand how you do X."',
          ),
          LessonStep(
            title: 'Minutes 3–10 — their context',
            body:
            '"Walk me through the last time you [did the '
                'thing]. What did you do? Where were you? '
                'Who was involved?" Get specifics. Not '
                'generalities.',
          ),
          LessonStep(
            title: 'Minutes 10–18 — the pain',
            body:
            '"What was frustrating about that? What '
                'would have made it easier? Have you tried '
                'other ways to solve this?"',
          ),
          LessonStep(
            title: 'Minutes 18–23 — their ideal',
            body:
            '"If you could wave a magic wand, what '
                'would the perfect version of this look '
                'like?"',
          ),
          LessonStep(
            title: 'Minutes 23–25 — wrap up',
            body:
            '"Is there anything else I should have asked? '
                'Can I contact you later if I have more '
                'questions?"',
          ),
        ],
      ),
      LessonCallout(
        title: 'The three interview rules',
        body:
        '1. Never ask "would you use this?" — the answer '
            'is always yes, and it is always wrong.\n'
            '2. Never ask "do you like this?" — opinion, not '
            'behaviour.\n'
            '3. Always ask "what did you do last time?" — '
            'behaviour reveals truth. Opinions reveal what '
            'people think they should say.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('Synthesis — turning notes into insight'),
      LessonParagraph(
        'After 5–8 interviews, you have a mess of notes. '
            'Synthesis is how you find the pattern in that mess. '
            'The method is called "affinity mapping".',
      ),
      LessonSteps(
        title: 'Affinity mapping',
        steps: [
          LessonStep(
            title: 'Write every observation on a sticky note',
            body:
            'Use FigJam, Miro, or real sticky notes. One '
                'observation per note. Aim for 30–60 notes '
                'total.',
          ),
          LessonStep(
            title: 'Group the notes by similarity',
            body:
            'Put notes that say the same thing near each '
                'other. Do not label the groups yet — just '
                'cluster.',
          ),
          LessonStep(
            title: 'Label each group with a theme',
            body:
            '"People do not trust the payment page." '
                '"The form is too long." "Nobody knows what '
                'the product does."',
          ),
          LessonStep(
            title: 'Rank the themes by frequency',
            body:
            'Which theme had the most notes? That is your '
                'biggest problem. Solve it first.',
          ),
          LessonStep(
            title: 'Write the problem statement',
            body:
            'One sentence. "Users do not complete '
                'checkout because they do not trust the '
                'payment page on mobile." That is what you '
                'design for.',
          ),
        ],
      ),

      LessonHeading('The problem statement template'),
      LessonCodeBlock(
        caption: 'How to write a clear problem statement',
        content:
        '[WHO] needs a way to [DO SOMETHING]\n'
            'because [REASON / PROBLEM].\n'
            '\n'
            'Examples that work:\n'
            '  "New users need a way to see what the product\n'
            '   actually does before signing up, because the\n'
            '   current home page is abstract and they leave."\n'
            '\n'
            '  "Returning customers need a way to reorder in\n'
            '   under 30 seconds, because they currently go\n'
            '   through 5 screens to do it and abandon."\n'
            '\n'
            'Examples that fail:\n'
            '  "We need to redesign the app."\n'
            '  "The current design is ugly."\n'
            '  "Users want better UX."\n'
            '\n'
            'Notice the pattern: a good problem statement\n'
            'names a specific user, a specific problem, and a\n'
            'specific consequence.',
      ),

      LessonHeading('Research does not need to be expensive'),
      LessonBullets([
        '5 user interviews — free. Just ask. Local '
            'businesses, friends of friends, past clients.',
        'Usability tests — free. Any 5 people willing to '
            'try a prototype. Coffee voucher is a nice touch.',
        'Google Analytics — free. If your client already '
            'has a site, ask for read access.',
        'Competitive analysis — free. Screenshots. Notes.',
        'Hotjar heatmaps — free tier. Shows where users '
            'actually click.',
        'Only survey tools cost money (Typeform, Google '
            'Forms — free is fine).',
      ]),
      LessonCallout(
        title: 'The trap',
        body:
        'Skipping research to "save time" is the most '
            'expensive time-saver in design. You will spend '
            '3 weeks building something, ship it, and watch '
            'users do the opposite of what you assumed. Then '
            'you rebuild it. The 5 interviews you skipped '
            'would have saved 3 weeks.',
        tone: CalloutTone.warning,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What are the five research methods?',
          'How many users do you need for a usability test?',
          'What are the three interview rules?',
          'What is affinity mapping?',
          'Write a problem statement for a product you '
              'know.',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You know what users need. Lesson 4 is the sketching '
            'and wireframing phase — how to translate research '
            'into rough solutions, how to choose between options, '
            'and how to move from paper sketches to your first '
            'Figma file.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 4 — wireframes and prototypes
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson4 = SkillLesson(
    id: 'uxui_4',
    trackId: trackId,
    title: 'Wireframes and Prototypes',
    subtitle: 'Sketching before Figma, and testing before launching',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'You have a problem statement. Now you translate it into '
            'a solution. The biggest temptation is to open Figma '
            'immediately and start designing. That is the mistake '
            'that separates amateurs from professionals.',
      ),
      LessonParagraph(
        'The professional order: sketch on paper first, wireframe '
            'in a simple tool second, design in Figma third. Each '
            'step is faster and cheaper than the one after it. '
            'Fix mistakes on paper before they become expensive '
            'in Figma.',
      ),

      LessonHeading('Sketching — the 20-minute start'),
      LessonParagraph(
        'A sketch is a rough, hand-drawn layout of a screen. It '
            'takes 2 minutes. It costs nothing. It tests the '
            'structure before you commit to any pixels.',
      ),
      LessonSteps(
        title: 'The 20-minute sketch session',
        steps: [
          LessonStep(
            title: 'Paper and pen, not Figma',
            body:
            'Open a notebook, or use any blank sheet. '
                'Do not open Figma yet.',
          ),
          LessonStep(
            title: 'Sketch 10 different layouts for one screen',
            body:
            'Ten. Not two. Not three. Ten. '
                'Force yourself to try radically different '
                'structures. Sketch 1 will be the obvious '
                'one. Sketch 7 will be interesting. '
                'Sketch 10 might be the winner.',
          ),
          LessonStep(
            title: 'Use boxes, lines, and words only',
            body:
            'A rectangle with "HEADLINE" written in it is '
                'enough. A box with "BUTTON" written in it '
                'is enough. No colour, no font, no details.',
          ),
          LessonStep(
            title: 'Circle the best 2–3',
            body:
            'Which ones solve the problem statement? '
                'Which are the simplest? Which feel right? '
                'Circle them.',
          ),
          LessonStep(
            title: 'Test them with 1–2 people',
            body:
            'Show the circles to a friend. "What would '
                'you click first? What do you think this '
                'screen does?" Their answer tells you which '
                'sketch to develop.',
          ),
        ],
      ),
      LessonCallout(
        title: 'Why 10 sketches',
        body:
        'The first idea you have is the one everyone '
            'has. It is the template in your head. The '
            'interesting ideas come when you force yourself '
            'past the obvious. 10 sketches is the standard '
            'professional practice — it takes 20 minutes and '
            'produces solutions you would never have found '
            'otherwise.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('Wireframes — the digital version'),
      LessonParagraph(
        'A wireframe is a digital sketch — the same layout, but '
            'with proper alignment, consistent spacing, and real '
            'placeholder text. Still no colour, still no images, '
            'still no fonts.',
      ),
      LessonParagraph(
        'Wireframes test whether the layout works. They are '
            'faster to iterate than final designs, and they are '
            'what clients should approve before you spend time on '
            'polish.',
      ),
      LessonBullets([
        'Grey boxes for images.',
        'Placeholder lines for text ("Lorem ipsum" is fine, '
            'or real text if you have it).',
        'Squares for icons.',
        'Solid rectangles for buttons.',
        'Consistent spacing (use the 8-point scale from '
            'Lesson 2).',
      ]),

      LessonHeading('The wireframe vs the final design'),
      LessonParagraph(
        'Beginners skip wireframes because "I can just design '
            'the final thing directly". This is why beginner '
            'designs are pretty but structurally broken.',
      ),
      LessonBullets([
        'Wireframe — "Is the layout right? Are the right '
            'things in the right places? Does the flow work?"',
        'Final design — "Does it look good? Is it on brand? '
            'Is it polished?"',
        'Test the layout first. Polish the layout second. '
            'Designers who skip step 1 end up redesigning '
            'step 2 repeatedly.',
      ]),

      LessonHeading('Prototypes — clickable wireframes'),
      LessonParagraph(
        'A prototype is a wireframe where the screens are '
            'connected. You click a button, the next screen '
            'appears. It is the cheapest way to test the flow '
            'before you build anything.',
      ),
      LessonParagraph('In Figma, prototypes work like this:'),
      LessonSteps(
        title: 'Making a Figma prototype',
        steps: [
          LessonStep(
            title: 'Design 3–5 screens',
            body:
            'A login screen, a home screen, a detail '
                'screen, a checkout, a confirmation. Enough '
                'to test the flow.',
          ),
          LessonStep(
            title: 'Switch to "Prototype" tab',
            body:
            'Top right of the Figma interface. There is '
                'a "Design" tab and a "Prototype" tab.',
          ),
          LessonStep(
            title: 'Connect buttons to next screens',
            body:
            'Click a button, then drag the blue arrow '
                'to the next screen. Set the trigger (Click) '
                'and animation (Instant or Slide).',
          ),
          LessonStep(
            title: 'Test the flow',
            body:
            'Click the play button (top right). You '
                'now have a clickable prototype. Try it as '
                'a user would.',
          ),
          LessonStep(
            title: 'Share the link',
            body:
            'Click "Share prototype" — you get a URL '
                'you can send to a friend, client, or '
                'test participant. They can click through '
                'on their own device.',
          ),
        ],
      ),

      LessonHeading('Usability testing your prototype'),
      LessonParagraph(
        'You built a prototype. Now watch 5 real people try to '
            'use it. This is called a usability test, and it is '
            'the single most valuable thing a designer does.',
      ),
      LessonSteps(
        title: 'How to run a 15-minute usability test',
        steps: [
          LessonStep(
            title: 'Give them a task',
            body:
            '"You are a new user. Try to sign up for '
                'the app and buy the R399 product. Talk out '
                'loud as you go."',
          ),
          LessonStep(
            title: 'Do not help',
            body:
            'When they get stuck, do not tell them what '
                'to click. Watch. Their confusion is your '
                'data. If you help, you lose the insight.',
          ),
          LessonStep(
            title: 'Note where they hesitate',
            body:
            'The 3-second pause. The misclick. The '
                'frown. Every micro-moment of hesitation '
                'is a design problem.',
          ),
          LessonStep(
            title: 'Ask at the end',
            body:
            '"What was the most confusing part? What '
                'would you have done differently?" Their '
                'answer is always right.',
          ),
          LessonStep(
            title: 'Look for patterns across 5 people',
            body:
            'If 3 out of 5 got stuck on the same '
                'screen, that is not user error — that '
                'is a design problem. Fix it.',
          ),
        ],
      ),
      LessonCallout(
        title: 'The rules of usability testing',
        body:
        '1. Never explain. Watch them struggle. '
            'Their struggle is the data.\n'
            '2. Never defend. If they say it is confusing, '
            'it is confusing. Your opinion does not count.\n'
            '3. Never test with friends who will be nice. '
            'Test with people who will be honest.',
        tone: CalloutTone.warning,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'Why do you sketch on paper before opening Figma?',
          'Why do professionals sketch 10 layouts, not 2?',
          'What is the difference between a wireframe and a '
              'final design?',
          'What is a prototype, and why does it exist?',
          'How many users do you need to find most usability '
              'problems?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You have a tested structure. Lesson 5 is where you '
            'actually design it in Figma — the interface, the '
            'frames, the components, the auto layout, the design '
            'system. This is where the sketch becomes something '
            'a client will pay for.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 5 — Figma in practice
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson5 = SkillLesson(
    id: 'uxui_5',
    trackId: trackId,
    title: 'Designing in Figma',
    subtitle: 'From blank file to finished screen',
    estimatedMinutes: 30,
    blocks: [
      LessonParagraph(
        'Figma is the industry standard. Everything from '
            'Instagram to Airbnb to most South African startups '
            'is designed in it. It is free for individual use, '
            'runs in a browser, and takes about 3 hours to learn '
            'the basics.',
      ),
      LessonParagraph(
        'This lesson takes you from a blank file to a '
            'professional-quality screen. Not by explaining every '
            'button — by building one real thing, step by step.',
      ),

      LessonHeading('Set up'),
      LessonSteps(
        title: 'Get Figma ready',
        steps: [
          LessonStep(
            title: 'Go to figma.com',
            body: 'Sign up free with Google. No credit card.',
          ),
          LessonStep(
            title: 'Create a new design file',
            body:
            'Click "+ New design file". Name it '
                '"Practice - First Screen".',
          ),
          LessonStep(
            title: 'Install the Figma desktop app (optional)',
            body:
            'Easier than the browser once you use it '
                'daily. Free download from figma.com/downloads.',
          ),
        ],
      ),

      LessonHeading('The interface'),
      LessonParagraph(
        'Figma has four main areas. Learn these once and the '
            'rest is just shortcuts.',
      ),
      LessonBullets([
        'Left panel — layers, pages, assets. Every element '
            'on your canvas is listed here.',
        'Top toolbar — move, frame, shape, pen, text, '
            'comment. The tools you use constantly.',
        'Center canvas — where you actually design.',
        'Right panel — properties of whatever is selected. '
            'Position, size, fill, border, effects. Also where '
            'Figma shows "Design" and "Prototype" tabs.',
      ]),

      LessonHeading('Build the screen — step by step'),
      LessonParagraph(
        'We are going to design a simple login screen for a '
            'fictional app called "Wake" — a sleep tracking '
            'app. Login screen, two fields, one button.',
      ),
      LessonSteps(
        title: 'Step by step',
        steps: [
          LessonStep(
            title: 'Create a frame',
            body:
            'Press F on your keyboard (or click the '
                '"Frame" tool in the toolbar). Draw a '
                'rectangle on the canvas. Look at the right '
                'panel — preset sizes appear. Choose '
                '"iPhone 14 & 15 Pro" (393 x 852). You now '
                'have a mobile screen frame.',
          ),
          LessonStep(
            title: 'Set a background',
            body:
            'With the frame selected, look at the '
                'right panel under "Fill". Click the colour '
                'swatch and change it to a warm off-white: '
                '#F8FAFC. This gives the screen a soft '
                'background.',
          ),
          LessonStep(
            title: 'Add the logo area',
            body:
            'Press T (text tool) and click anywhere '
                'in the top third of the frame. Type '
                '"wake.". Set the font to Inter, size 36, '
                'weight Bold. Set the colour to #0F172A.',
          ),
          LessonStep(
            title: 'Add a subtitle',
            body:
            'Press T again, click under the logo. '
                'Type "Sign in to track your sleep". Set '
                'Inter, size 15, weight Regular, colour '
                '#64748B.',
          ),
          LessonStep(
            title: 'Add the email field',
            body:
            'Press R (rectangle tool). Draw a box '
                'under the subtitle. In the right panel, '
                'set width 100% of the frame (Figma shows '
                'a lock icon — click it to lock width). '
                'Set height 52. Set fill to #FFFFFF, '
                'border to #E2E8F0, corner radius 12.',
          ),
          LessonStep(
            title: 'Add placeholder text inside the field',
            body:
            'Press T, click inside the field. Type '
                '"Email address". Set Inter, size 14, '
                'colour #94A3B8. Position it 16px from '
                'the left edge of the field, vertically '
                'centered.',
          ),
          LessonStep(
            title: 'Duplicate for password',
            body:
            'Select the email field and its text '
                '(click and drag to select both). Press '
                'Ctrl+D (Cmd+D on Mac) to duplicate. Drag '
                'the duplicate 12px below. Change the text '
                'to "Password".',
          ),
          LessonStep(
            title: 'Add the button',
            body:
            'Press R again. Draw a rectangle below '
                'the password field. Set width 100% of the '
                'frame, height 52, fill #2563EB, corner '
                'radius 12.',
          ),
          LessonStep(
            title: 'Add button text',
            body:
            'Press T, click inside the button. Type '
                '"Sign in". Set Inter, size 16, weight Bold, '
                'colour #FFFFFF. Center it horizontally and '
                'vertically inside the button.',
          ),
          LessonStep(
            title: 'Add a link',
            body:
            'Press T, click below the button. Type '
                '"Forgot password?". Set Inter, size 14, '
                'colour #2563EB (same blue as button — '
                'signals it is clickable).',
          ),
          LessonStep(
            title: 'Select all, align, and check',
            body:
            'Press Ctrl+A to select everything. '
                'Look at the right panel — under "Auto '
                'layout" click "Add auto layout". Figma '
                'now stacks everything vertically with '
                'consistent spacing. Adjust the gap to '
                '24px in the right panel.',
          ),
        ],
      ),

      LessonHeading('Auto layout — the feature that changes everything'),
      LessonParagraph(
        'Auto layout is what makes Figma feel professional. It '
            'turns a jumble of elements into a responsive, '
            'self-organising stack. Every professional Figma '
            'file uses it.',
      ),
      LessonBullets([
        'Select 2+ elements, press Shift+A to add auto '
            'layout.',
        'Figma now treats them as a group that stacks '
            'vertically (or horizontally).',
        'Adjust gap, padding, and alignment in the right '
            'panel.',
        'Resizing the frame now reflows everything — no '
            'manual repositioning.',
      ]),
      LessonCallout(
        title: 'The auto layout habit',
        body:
        'Every group of elements you design should be in '
            'an auto layout frame. Buttons, cards, form '
            'fields, entire screens. Once you are used to it, '
            'designing without it feels like drawing in '
            'crayon. Every professional Figma designer uses '
            'it constantly.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('Components — the other game-changing feature'),
      LessonParagraph(
        'A component is a reusable UI element. Design a '
            'button once, reuse it 50 times. Change the '
            'component, every instance updates automatically.',
      ),
      LessonSteps(
        title: 'Turn your button into a component',
        steps: [
          LessonStep(
            title: 'Select the button',
            body:
            'Click the button rectangle and its text.',
          ),
          LessonStep(
            title: 'Press Ctrl+Alt+K (Cmd+Opt+K on Mac)',
            body:
            'This creates a component. The icon changes '
                'to a diamond — that is the component icon.',
          ),
          LessonStep(
            title: 'Name it',
            body:
            'Right panel — double-click the name. '
                'Name it "Button / Primary / Large".',
          ),
          LessonStep(
            title: 'Reuse it',
            body:
            'Open the "Assets" panel on the left. '
                'Drag the button component anywhere in '
                'your file. Every copy is a linked '
                '"instance".',
          ),
          LessonStep(
            title: 'Edit the master',
            body:
            'Change the master button (the diamond '
                'icon one). Every instance updates '
                'automatically. Try it — change the fill '
                'colour of the master and watch every '
                'copy change.',
          ),
        ],
      ),

      LessonHeading('Variants — one button, many states'),
      LessonParagraph(
        'A button has multiple states — default, hover, '
            'disabled, loading. Variants let you have all of '
            'them in one component.',
      ),
      LessonSteps(
        title: 'Create a variant set',
        steps: [
          LessonStep(
            title: 'Select the component',
            body: 'Click the diamond icon.',
          ),
          LessonStep(
            title: 'Click "Add variant" in the right panel',
            body:
            'A second copy appears with a dashed '
                'outline.',
          ),
          LessonStep(
            title: 'Change the second variant',
            body:
            'Change the fill colour to a darker blue '
                '(hover state). Rename it "Hover".',
          ),
          LessonStep(
            title: 'Add a third variant',
            body:
            'Add another. Set fill to grey, text '
                'colour to muted. Rename to "Disabled".',
          ),
          LessonStep(
            title: 'Use the variants',
            body:
            'Drag the component from Assets. In the '
                'right panel, you now see a "State" '
                'dropdown. Switch between Default, Hover, '
                'Disabled with one click.',
          ),
        ],
      ),

      LessonHeading('The design system — the file that gets you hired'),
      LessonParagraph(
        'A design system is a shared library of colours, '
            'text styles, and components that a whole team uses. '
            'Clients hire designers who can build design systems '
            'far more often than designers who can just make '
            'pretty screens.',
      ),
      LessonSteps(
        title: 'Build the three parts of a design system',
        steps: [
          LessonStep(
            title: 'Colour styles',
            body:
            'In the right panel, click the fill colour '
                'of a shape, then click "Styles" — create a '
                'new style called "Primary / Blue". Do the '
                'same for every colour in your palette. Now '
                'you can change colours across the whole '
                'file from one place.',
          ),
          LessonStep(
            title: 'Text styles',
            body:
            'Select a text element, then in the text '
                'properties panel click "Styles" — create '
                'a style called "Heading 1". Repeat for '
                'Body, Caption, Button.',
          ),
          LessonStep(
            title: 'Components',
            body:
            'Every repeated UI element — buttons, '
                'inputs, cards, navigation — as a '
                'component. Every screen is built from '
                'these components, not raw shapes.',
          ),
        ],
      ),
      LessonCallout(
        title: 'The design system advantage',
        body:
        'A designer who builds a design system can ship '
            'a 20-screen app in a week. A designer who builds '
            'every screen from scratch takes a month. And '
            'the system-built app is consistent, while the '
            'scratch-built one is not. This is why serious '
            'clients pay 3x for design-system-literate '
            'designers.',
        tone: CalloutTone.tip,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What is a frame in Figma, and why does every '
              'screen start with one?',
          'What does auto layout do, and why is it '
              'essential?',
          'What is a component, and what does it let you '
              'do?',
          'What is a variant, and when do you use one?',
          'What are the three parts of a design system?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You can design a screen. Lesson 6 is about turning '
            'design into income — the portfolio that lands '
            'clients, the case study structure that gets '
            'interviews, the pricing that gets paid, and the '
            'pitch that gets yes.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 6 — portfolio and clients
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson6 = SkillLesson(
    id: 'uxui_6',
    trackId: trackId,
    title: 'Portfolio and Clients',
    subtitle: 'What gets you hired, and what gets you paid',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'You can design. That does not mean anyone will hire '
            'you. Between "I can design" and "I get paid to '
            'design" there is a portfolio, a pricing strategy, '
            'and a pitch. This lesson is about all three.',
      ),

      LessonHeading('The portfolio mistake'),
      LessonParagraph(
        'Most beginner portfolios are a gallery of pretty '
            'screens. No context. No research. No reasoning. '
            'Just a scroll of mockups with no story.',
      ),
      LessonParagraph(
        'Clients and hiring managers do not hire designers who '
            'make pretty screens. They hire designers who solve '
            'problems. A portfolio that shows the problem, the '
            'research, the iterations, and the outcome is worth '
            '5x a portfolio that shows final screens.',
      ),

      LessonHeading('The case study structure'),
      LessonParagraph(
        'A case study is the story of one project. Three '
            'case studies is enough to start. Not ten. Three, '
            'done well.',
      ),
      LessonCodeBlock(
        caption: 'The 8-part case study',
        content:
        '1. TITLE\n'
            '   A one-line summary. "Redesigning checkout for a\n'
            '   South African e-commerce store."\n'
            '\n'
            '2. THE PROBLEM\n'
            '   What was broken? Use data or quotes. "68% of\n'
            '   users abandoned checkout on mobile."\n'
            '\n'
            '3. THE RESEARCH\n'
            '   What did you find out? Who did you talk to?\n'
            '   Include 2-3 quotes from real users.\n'
            '\n'
            '4. THE CONSTRAINTS\n'
            '   Time, budget, tech limits, business rules.\n'
            '   Every real project has these. Include them.\n'
            '\n'
            '5. THE ITERATIONS\n'
            '   Sketch 1, sketch 2, final wireframe. Show\n'
            '   the thinking, not just the final result.\n'
            '\n'
            '6. THE FINAL DESIGN\n'
            '   3-5 high-quality screenshots of the shipped\n'
            '   design. Full-width, clean, on the real device.\n'
            '\n'
            '7. THE OUTCOME\n'
            '   Numbers if you have them. "Checkout abandonment\n'
            '   fell from 68% to 41% in 6 weeks." If you do not\n'
            '   have numbers, use a qualitative outcome: "Client\n'
            '   said the design finally felt premium."\n'
            '\n'
            '8. WHAT I LEARNED\n'
            '   One paragraph. Honest. Not "this project was\n'
            '   a success". What would you do differently?',
      ),
      LessonCallout(
        title: 'Three case studies, not ten',
        body:
        'A portfolio with 3 deep case studies beats a '
            'portfolio with 15 shallow ones. Hiring managers '
            'spend 90 seconds per portfolio. In that time, '
            'they can only absorb 2-3 stories. Three deep '
            'stories is the right number. Quality over '
            'quantity, always.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('How to get your first three case studies'),
      LessonBullets([
        'Do three free or low-cost projects for local '
            'businesses. A café. A tutor. A small NGO. '
            'Ask for permission to publish.',
        'Redesign three existing apps you use — even '
            'without permission. "An unsolicited redesign '
            'of X" is a legitimate case study. Document '
            'the problem, the research, the outcome as '
            'you would have done if it were paid.',
        'Take a 30-day design challenge. One app '
            'redesigned per week, documented as a case '
            'study. Four case studies in a month.',
        'Do a course project with a real brief. If the '
            'course gives you a fictional client, treat it '
            'seriously — the case study counts.',
      ]),

      LessonHeading('Where clients come from'),
      LessonBullets([
        'Local businesses — coffee shops, salons, '
            'restaurants, dentists. They all need a '
            'website. Most have terrible ones.',
        'Startups — South African startup ecosystem is '
            'small but real. Founders need design help.',
        'Agencies — do not want to hire, do want to '
            'subcontract. Reach out to marketing and dev '
            'agencies.',
        'Dribbble and Behance — slow to pay, but good '
            'for visibility. Post weekly.',
        'LinkedIn — the highest-quality leads in South '
            'Africa. Post case studies and process '
            'breakdowns.',
        'Referrals — once you have 2 happy clients, '
            'ask them to introduce you to 2 more.',
      ]),

      LessonHeading('Pricing — the three models'),
      LessonParagraph(
        'There are three ways to price design work. Every '
            'designer uses at least two.',
      ),

      LessonHeading('Model 1 — Hourly'),
      LessonBullets([
        'Beginner — R400–R700/hour.',
        'Mid-level — R700–R1,000/hour.',
        'Senior — R1,000–R1,800/hour.',
        'Good for — small ongoing work, unclear scope.',
        'Bad for — most projects. You get punished for '
            'efficiency.',
      ]),

      LessonHeading('Model 2 — Fixed project'),
      LessonBullets([
        'Single screen — R1,500–R5,000.',
        'Full app screen set (10–15 screens) — '
            'R15,000–R50,000.',
        'Website redesign (10 pages) — R20,000–R80,000.',
        'Design system — R25,000–R100,000.',
        'Good for — clear scope, standard deliverables.',
        'Bad for — projects that keep expanding. Always '
            'write the scope down.',
      ]),

      LessonHeading('Model 3 — Monthly retainer'),
      LessonBullets([
        'Small business — R8,000–R15,000/month for '
            'ongoing design work.',
        'Startup — R15,000–R30,000/month for a designer '
            'essentially on-call.',
        'Good for — clients who need ongoing design '
            'support.',
        'Bad for — beginners. You need 2+ years of '
            'portfolio before a retainer is realistic.',
      ]),

      LessonHeading('The pitch'),
      LessonParagraph(
        'A design pitch is not a portfolio dump. It is a '
            'specific solution to a specific problem. The '
            'structure:',
      ),
      LessonCodeBlock(
        caption: 'The 5-slide pitch',
        content:
        'SLIDE 1 — The problem you noticed\n'
            '  "Your current signup page loses users because\n'
            '   the form is 8 fields long. Most checkout forms\n'
            '   in 2025 are 3 fields."\n'
            '\n'
            'SLIDE 2 — The impact\n'
            '  "Each additional field reduces conversion by\n'
            '   roughly 10%. 8 fields is a 50% loss vs 3\n'
            '   fields. You are losing real revenue."\n'
            '\n'
            'SLIDE 3 — The solution\n'
            '  3 screenshots of your proposed redesign,\n'
            '  side-by-side with the current version.\n'
            '\n'
            'SLIDE 4 — The plan\n'
            '  "2 weeks: research, wireframes, design,\n'
            '   usability testing. 3 screens delivered."\n'
            '\n'
            'SLIDE 5 — The price\n'
            '  "R18,000 fixed. 50% deposit, 50% on delivery.\n'
            '   Includes 2 rounds of revisions and a 30-day\n'
            '   post-launch support window."',
      ),
      LessonCallout(
        title: 'The specific pitch wins',
        body:
        'A generic pitch — "I am a UX designer, here '
            'is my portfolio" — gets ignored. A specific '
            'pitch — "I noticed your checkout is 8 fields, '
            'here is a 3-field version" — gets replies. '
            'You must research the client before you '
            'pitch. This is the whole job.',
        tone: CalloutTone.tip,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What are the eight parts of a case study?',
          'Why is 3 case studies better than 10?',
          'What are the three pricing models?',
          'What are the five slides of a pitch?',
          'Why does a specific pitch win over a generic '
              'one?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You know how to pitch and price. Lesson 7 is the '
            'business side — POPIA (research data is personal '
            'data), contracts, intellectual property, and the '
            'full Kepler Study disclaimer about what we are and '
            'what we are not.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 7 — business, legal, disclaimer
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson7 = SkillLesson(
    id: 'uxui_7',
    trackId: trackId,
    title: 'The Business of Design',
    subtitle: 'POPIA, contracts, IP, and where Kepler Study stands',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'You can design. You can pitch. The last thing '
            'standing between you and a paid career is the '
            'business side: what the law requires of you when '
            'you handle user data, what to sign before you '
            'start, and what happens to the work once you '
            'deliver it.',
      ),
      LessonParagraph(
        'None of this is legal advice. It is orientation. If '
            'any of it applies to you, get a lawyer.',
      ),

      LessonHeading('POPIA — research data is personal data'),
      LessonParagraph(
        'When you run user research, you are collecting '
            'personal information. Names, emails, ages, '
            'occupations, opinions, sometimes health or '
            'financial details. Under POPIA, that makes you a '
            '"responsible party" — you must handle it '
            'lawfully.',
      ),
      LessonBullets([
        'Ask permission before you record any interview. '
            'Written consent, even a WhatsApp message, is '
            'enough for casual research.',
        'Anonymise your notes. "Participant 3" beats '
            '"Thabo from Sandton".',
        'Never share raw interview notes with clients. '
            'Share the synthesis — themes and quotes, '
            'anonymised.',
        'Delete raw recordings and notes after the project '
            'is complete. Keep the synthesis, discard the '
            'personal data.',
        'Never screenshot someone\'s real data when '
            'designing. Use dummy data in your mockups.',
      ]),
      LessonCallout(
        title: 'The fines are real',
        body:
        'POPIA fines go up to R10 million and 10 years in '
            'prison for serious breaches. A designer who '
            'published a screenshot of a client\'s customer '
            'database as a "case study" would be personally '
            'liable. Anonymise everything before you publish '
            'a case study.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('Contracts — what every design contract needs'),
      LessonParagraph(
        'Every project needs a signed contract. Even small '
            'ones. Even for a friend. Especially for a friend.',
      ),
      LessonBullets([
        'Parties — your name and the client\'s, full legal '
            'names.',
        'Scope — exactly what you will deliver. "3 screens, '
            '2 rounds of revisions, Figma file handoff." Not '
            '"a design".',
        'Out of scope — research costs, content writing, '
            'development, extra screens. All separately '
            'quoted.',
        'Timeline — milestones with dates. "Wireframes by '
            'Nov 15, final design by Nov 22."',
        'Client responsibilities — timely feedback, '
            'content and assets, decisions within X days.',
        'Revisions — how many included, extra at R[X]/hour.',
        'Payment — amount, structure (50/50 or milestone), '
            'due date, late fee.',
        'Intellectual property — who owns the design once '
            'paid.',
        'Termination — how either party ends, notice '
            'period, non-refundable deposit.',
        'Limitation of liability — you are not liable '
            'for the product\'s business outcome.',
      ]),

      LessonHeading('Intellectual property — who owns the design'),
      LessonParagraph(
        'This is one of the most common design contract '
            'disputes. Who owns the design once it is '
            'delivered? Get this in writing.',
      ),
      LessonBullets([
        'Standard — the client owns the final design '
            'after final payment. You own the process, the '
            'sketches, and rejected iterations.',
        'You retain the right to show it in your '
            'portfolio. State this explicitly — some '
            'clients try to forbid it.',
        'Do not give source files (Figma, Sketch) unless '
            'the contract says so. Many designers charge '
            'extra for source file handoff.',
        'If you use stock photos, fonts, or icons in the '
            'design, ensure the licence covers commercial '
            'use. Unsplash is fine. Some Google Fonts '
            'require attribution.',
      ]),
      LessonCallout(
        title: 'The source file rule',
        body:
        'Your Figma source file is your intellectual '
            'property until the contract transfers it. Many '
            'designers deliver only PNG/JPG exports, and '
            'charge R2,000–R5,000 extra if the client wants '
            'the editable source. That is standard, not '
            'unreasonable. State it upfront.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('The honest reality of design'),
      LessonParagraph(
        'Most people who learn design do not build a '
            'long-term income from it. The ones who do are '
            'not the most talented — they are the ones who:',
      ),
      LessonBullets([
        'Finished 3 case studies, not 15 half-finished '
            'ones.',
        'Sent 50 pitches before getting their first client.',
        'Accepted underpriced work in year 1, learned, '
            'and doubled their rates in year 2.',
        'Delivered on time, every time, even when the '
            'client was chaotic.',
        'Asked for reviews and referrals after every '
            'project.',
        'Kept learning after the first course — design '
            'is a craft that takes years.',
        'Specialised in a niche (e-commerce UX, mobile '
            'apps, SaaS dashboards) instead of "any '
            'design".',
      ]),
      LessonCallout(
        title: 'The realistic timeline',
        body:
        'Month 1–3 — learning Figma, building the '
            'first case study.\n'
            'Month 4–6 — 3 case studies done, first paid '
            'project (under R5,000).\n'
            'Month 7–12 — 5+ projects shipped. Rates '
            'rising. Portfolio looks real.\n'
            'Year 2 — R15,000–R30,000/month freelance, '
            'or first in-house job.\n'
            'Year 3–5 — R30,000–R60,000/month freelance, '
            'or senior role.\n\n'
            'Anyone selling "R50,000/month in 6 months" '
            'is selling a dream, not a career.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('Where Kepler Study stands'),
      LessonParagraph(
        'One last thing, and it is the most important thing '
            'in this track.',
      ),
      LessonParagraph(
        'Kepler Study is an education platform. We teach '
            'skills. That is all we do.',
      ),
      LessonBullets([
        'Kepler Study is not your employer. You are an '
            'independent designer or contractor, not our '
            'employee.',
        'Kepler Study is not a party to any contract you '
            'sign with any client. Your contracts are '
            'between you and them. We are not named in '
            'them and have no obligations under them.',
        'Kepler Study is not responsible for any client '
            'relationship, any design outcome, any project '
            'result, or any financial outcome — successful '
            'or unsuccessful — of any design work you do.',
        'Kepler Study is not liable for POPIA fines, '
            'copyright disputes, client lawsuits, '
            'non-payment, or any legal or financial '
            'consequence of your design work.',
        'Kepler Study does not provide legal, financial, '
            'or tax advice. Everything in this track is '
            'educational illustration. Consult a qualified '
            'South African lawyer before signing any '
            'contract or publishing any case study.',
        'Kepler Study does not endorse Figma, Dribbble, '
            'Behance, or any tool mentioned in this track. '
            'Mentioning them is not a recommendation.',
        'Kepler Study makes no promise that you will '
            'earn money from design. Most people who '
            'attempt it do not build a long-term income '
            'from it.',
        'Kepler Study does not represent you, endorse '
            'you, or recommend you to any client. Every '
            'client you land is yours alone.',
        'Any invoice, bank account, business registration, '
            'tax number, and legal compliance is your own. '
            'Kepler Study does not handle any of that for '
            'you.',
      ]),
      LessonCallout(
        title: 'Why this section exists',
        body:
        'Because teaching someone a skill is one '
            'thing. Becoming their partner in the business '
            'they build with that skill is a different '
            'thing — one we are not set up to be, and one '
            'we do not want to be. You are the designer. '
            'You take the risk. You take the reward. That '
            'is the whole point.',
        tone: CalloutTone.info,
      ),

      LessonParagraph(
        'If you take money from a client, you are running '
            'a business. Register it, open a bank account '
            'for it, keep records, file your tax. If you '
            'breach POPIA, you face the fine. If a client '
            'refuses to pay, your contract is your only '
            'remedy. If you publish a case study with real '
            'customer data, you face a lawsuit. Kepler Study '
            'will not and cannot stand in for any of that.',
      ),

      LessonHeading('You finished the track'),
      LessonParagraph(
        'Seven chapters. You started not knowing the '
            'difference between UX and UI. You now know: '
            'the design process, visual fundamentals '
            '(colour, typography, spacing, layout, '
            'hierarchy), accessibility, user research '
            '(interviews, synthesis, problem statements), '
            'wireframes and prototypes, usability testing, '
            'Figma (frames, auto layout, components, '
            'variants, design systems), case study '
            'structure, pricing models, the pitch, '
            'contracts, POPIA, and intellectual property.',
      ),
      LessonParagraph(
        'That is more than most people who call '
            'themselves "designers" actually know.',
      ),
      LessonParagraph(
        'The next step is not more learning. It is one '
            'real project — a redesign of a local business '
            'site, a case study of an app you use, a free '
            'design for a nonprofit. Ship it. Document it '
            'as a case study. That first real piece of work '
            'is worth more than any course you could take '
            'next.',
      ),
      LessonParagraph(
        'Then a second project. Then a third. Then a paid '
            'client at a rate you were scared to ask for. '
            'And then, one day, you look up and you are '
            'earning a real freelance income from a skill '
            'you taught yourself.',
      ),
      LessonParagraph(
        'If you try it and decide design is not for you, '
            'that is a valid outcome too. You now understand '
            'how good products are designed, how users '
            'actually behave, and how accessibility works. '
            'Those skills make you better at any job that '
            'touches a product.',
      ),

      LessonSelfCheck(
        title: 'Final check',
        questions: [
          'What are the three POPIA obligations for a '
              'designer doing research?',
          'What are five clauses every design contract '
              'needs?',
          'Who owns the design once delivered, and why '
              'does the contract need to say so?',
          'What is the realistic timeline to a paid '
              'design career?',
          'What is Kepler Study\'s role in any contract '
              'you sign?',
        ],
      ),
    ],
  );
}