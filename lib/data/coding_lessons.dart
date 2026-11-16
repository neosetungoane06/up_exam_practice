import '../models/skill_lesson.dart';

/// All lessons for the Coding & Software track.
///
/// Fully static. No AI, no network. This track is deliberately
/// a guide rather than a full language tutorial — it points
/// students to W3Schools, freeCodeCamp, MDN, The Odin Project,
/// and CS50 for syntax, and teaches the projects, workflow,
/// career path and business reality that those platforms do
/// not cover.
class CodingLessons {
  CodingLessons._();

  static const String trackId = 'coding_software';

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
  // Lesson 1 — what coding really is
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson1 = SkillLesson(
    id: 'coding_1',
    trackId: trackId,
    title: 'What Coding Really Is',
    subtitle: 'The honest definition, the language map, and the free platforms',
    estimatedMinutes: 22,
    blocks: [
      LessonParagraph(
        'Coding has a marketing problem. TikTok makes it look like '
            'six months of courses and then a R100,000/month remote '
            'job. Reddit makes it look like a decade of computer '
            'science or nothing. Neither is true.',
      ),
      LessonParagraph(
        'Here is the honest version: coding is the skill of '
            'writing instructions a computer can execute. It is '
            'learnable in months, not years. But being hireable '
            'takes longer than learning the syntax — because being '
            'hireable is about what you can build, not what you '
            'know.',
      ),

      LessonHeading('The one-sentence definition'),
      LessonParagraph(
        'Coding is writing step-by-step instructions that a '
            'computer will execute exactly as written — including '
            'when they are wrong.',
      ),
      LessonParagraph(
        'That last part is the whole job. The computer does not '
            'guess what you meant. If you typed a comma where you '
            'meant a full stop, it does what the comma says. '
            'Learning to code is mostly learning to be precise.',
      ),

      LessonHeading('What coding actually looks like day-to-day'),
      LessonParagraph(
        'Not typing. The typing is the small part. The real work '
            'looks like this:',
      ),
      LessonBullets([
        '30% — reading existing code, trying to understand what '
            'someone else wrote.',
        '30% — debugging. Something is broken and you have to '
            'figure out why.',
        '20% — thinking about the problem. Sketching the approach '
            'before touching the keyboard.',
        '15% — writing new code.',
        '5% — meetings, planning, coordinating with other '
            'developers.',
      ]),
      LessonCallout(
        title: 'The honest surprise',
        body:
        'Most beginners expect coding to be "writing" — '
            'typing new code all day. It is not. Most of your '
            'time will be reading and debugging. If you do not '
            'enjoy the puzzle-solving part, no amount of money '
            'will make this career sustainable. If you do enjoy '
            'it, the money is a bonus.',
        tone: CalloutTone.info,
      ),

      LessonHeading('The three career paths'),
      LessonParagraph(
        'There are three ways to earn from coding, and they are '
            'not the same. Pick the one that matches your '
            'temperament and circumstances.',
      ),

      LessonHeading('Path 1 — Employed developer'),
      LessonBullets([
        'You join a company as a permanent employee. Steady '
            'salary. Regular hours. You work on one team\'s '
            'product.',
        'Salary in South Africa — R20,000–R40,000/month '
            'junior, R40,000–R80,000/month mid, '
            'R80,000–R150,000/month senior. Higher at '
            'international companies hiring remotely.',
        'Best for — people who want stability, structure, '
            'and colleagues. The fastest path to a real income.',
        'Reality — the only path that reliably gets a beginner '
            'paid within 6–12 months of finishing their first '
            'portfolio.',
      ]),

      LessonHeading('Path 2 — Freelance developer'),
      LessonBullets([
        'You work for multiple clients on projects. Web '
            'development is the most common freelance coding '
            'work.',
        'Rate in South Africa — R400–R1,500/hour depending '
            'on experience.',
        'Best for — people who already have a portfolio and '
            'can handle client communication.',
        'Reality — very hard to start freelancing before you '
            'have 1+ year of paid experience or a strong '
            'portfolio. Clients hire freelancers for reliability, '
            'not for potential.',
      ]),

      LessonHeading('Path 3 — Indie hacker / own product'),
      LessonBullets([
        'You build your own product — a SaaS, a tool, an '
            'app — and earn from users or subscriptions.',
        'Income — unbounded. Most do not earn anything. A '
            'few earn R10,000–R100,000+/month.',
        'Best for — people who like uncertainty, can build '
            'both product and marketing, and have savings to '
            'survive the first year.',
        'Reality — the highest ceiling and the highest '
            'failure rate of the three. Do not start here. '
            'Get paid to code first, then build your own thing '
            'on the side.',
      ]),
      LessonCallout(
        title: 'The honest entry point',
        body:
        'Most people who try to learn coding do not '
            'finish. Of the people who finish, most try to '
            'freelance immediately, fail, and quit. The ones '
            'who succeed almost always get a job first — as '
            'a junior developer at a company — learn for 1–2 '
            'years, and then freelance or build their own '
            'product with real experience. There is no shortcut '
            'past that first job.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('The language map'),
      LessonParagraph(
        'There are hundreds of programming languages. You need '
            'to learn exactly one to start. Here are the ones '
            'that matter and what they are for:',
      ),

      LessonHeading('The two beginner languages'),
      LessonBullets([
        'Python — best first language for beginners. Reads '
            'almost like English. Used for automation, data, '
            'AI, backend web, scripts, and (increasingly) '
            'everything. If you are unsure what to learn, learn '
            'Python.',
        'JavaScript — the language of the web. Every website '
            'you have ever used runs JavaScript in your browser. '
            'Also runs backend (via Node.js) and mobile (via '
            'React Native). Learn this if you want to build '
            'websites or web apps.',
      ]),

      LessonHeading('Other languages, and when they come later'),
      LessonBullets([
        'Java — old, huge, used by banks, government, and '
            'Android. Verbose. Not a first language unless a '
            'specific job requires it.',
        'C# — Microsoft\'s Java equivalent. Used in enterprise, '
            'game dev (Unity). Good if you are targeting those '
            'sectors.',
        'TypeScript — JavaScript with types. What almost every '
            'professional web app uses today. Learn after '
            'JavaScript.',
        'Go — Google\'s backend language. Fast, simple. '
            'Growing fast in cloud infrastructure.',
        'Rust — systems language. Very hard. Very fast. Very '
            'safe. Not a first language, no matter what Twitter '
            'says.',
        'Swift / Kotlin — mobile development (iOS / Android). '
            'Learn after you have one language.',
        'C — the language that makes all the others possible. '
            'Learn if you want to understand computer science '
            'deeply, or work in embedded systems.',
        'SQL — not a general-purpose language, but you will '
            'use it constantly. Every developer needs to know '
            'it. Learn it alongside your first language.',
      ]),

      LessonHeading('Which to learn first — the decision'),
      LessonSteps(
        title: 'Pick one and commit',
        steps: [
          LessonStep(
            title: 'If you want to build websites → JavaScript',
            body:
            'Start with HTML + CSS for the structure, '
                'then JavaScript for interactivity. The most '
                'hireable path for a South African beginner '
                'right now.',
          ),
          LessonStep(
            title: 'If you want to automate things → Python',
            body:
            'Scripts, files, data, scraping, AI. The '
                'fastest path to "I built something useful" '
                'for a beginner.',
          ),
          LessonStep(
            title: 'If you want data or AI → Python',
            body:
            'Non-negotiable. Every serious data and AI '
                'tool is built for Python.',
          ),
          LessonStep(
            title: 'If you are unsure → JavaScript',
            body:
            'It has the widest range of use — frontend, '
                'backend, mobile, desktop. Learn JavaScript, '
                'and you can pivot to anything later.',
          ),
          LessonStep(
            title: 'Never learn two at once',
            body:
            'Not Python and JavaScript. Not JavaScript '
                'and Java. One. Commit to one for at least '
                'six months. Learning two at once is the '
                'single most common reason beginners quit — '
                'both feel slow because neither gets enough '
                'focus.',
          ),
        ],
      ),

      LessonHeading('The platforms that actually teach you'),
      LessonParagraph(
        'This track does not teach syntax. It could not — you '
            'need hundreds of hours of practice to learn a '
            'language, and no course compresses that. Instead, '
            'this track points you to the four best free '
            'platforms on the internet, and teaches the parts '
            'they do not: the projects, the workflow, and the '
            'career.',
      ),

      LessonHeading('The five platforms'),
      LessonSteps(
        title: 'Free, proven, and enough to get hired',
        steps: [
          LessonStep(
            title: 'W3Schools — w3schools.com',
            body:
            'The best free syntax reference for HTML, '
                'CSS, JavaScript, Python, SQL, and about 20 '
                'more languages. Every concept has an '
                '"Try it Yourself" editor. This is where you '
                'go to learn what a for loop is, how to '
                'write a function, what a variable does. '
                'Free. No signup required to start.',
          ),
          LessonStep(
            title: 'freeCodeCamp — freecodecamp.org',
            body:
            'The best free project-based curriculum. '
                'You learn by building — a tribute page, a '
                'survey form, a calculator, and eventually '
                'full certifications. Completely free. '
                'Around 3,000 hours across 10 certifications.',
          ),
          LessonStep(
            title: 'MDN Web Docs — developer.mozilla.org',
            body:
            'The authoritative reference for HTML, '
                'CSS, and JavaScript. Not a tutorial — a '
                'reference. When you need to know exactly '
                'what a method does, this is where you look. '
                'Free.',
          ),
          LessonStep(
            title: 'The Odin Project — theodinproject.com',
            body:
            'The most complete free full-stack '
                'curriculum on the internet. Starts from '
                'zero and takes you through to deployment. '
                'Community-driven. Challenging. Free.',
          ),
          LessonStep(
            title: 'CS50 — cs50.harvard.edu',
            body:
            'Harvard\'s introduction to computer '
                'science. Free online. The most rigorous '
                'beginner course on the internet. Hard, but '
                'you will actually understand how computers '
                'work, not just how to write code that runs.',
          ),
        ],
      ),
      LessonCallout(
        title: 'The Kepler philosophy',
        body:
        'We are not going to re-teach what W3Schools, '
            'freeCodeCamp, MDN, Odin, and CS50 have already '
            'perfected. What we are going to do is give you '
            'the map: which platform to use for what, in '
            'what order, and how to turn that into something '
            'you can show a client or an employer. This is '
            'more valuable than another tutorial.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('The terminology'),
      LessonParagraph(
        'Learn these fourteen terms. They appear in every job '
            'ad, every tutorial, and every conversation.',
      ),
      LessonSteps(
        title: 'The 14 words',
        steps: [
          LessonStep(
            title: 'Variable',
            body:
            'A named box that stores a value. '
                '"name = \'Thabo\'" stores the text '
                '"Thabo" in a box called "name".',
          ),
          LessonStep(
            title: 'Function',
            body:
            'A reusable block of code that does one '
                'thing. You "call" a function to run it. '
                'A function can take inputs (parameters) '
                'and give outputs (return values).',
          ),
          LessonStep(
            title: 'Loop',
            body:
            'A way to repeat code. "For each item in '
                'this list, do this." The most-used '
                'programming construct in the world.',
          ),
          LessonStep(
            title: 'Array / List',
            body:
            'An ordered collection of items. '
                '[1, 2, 3, 4, 5] or ["apple", "banana", '
                '"cherry"]. Access by index (starting at 0).',
          ),
          LessonStep(
            title: 'Object / Dictionary',
            body:
            'A collection of key-value pairs. '
                '{"name": "Thabo", "age": 25}. The most '
                'flexible data structure you will use.',
          ),
          LessonStep(
            title: 'String',
            body:
            'Text. "Hello world". Usually wrapped in '
                'quotes. Strings have methods (functions) '
                'attached to them — uppercase, replace, split.',
          ),
          LessonStep(
            title: 'Bug',
            body:
            'An error in the code. Everything either '
                'works or has a bug. There is no third state.',
          ),
          LessonStep(
            title: 'Debug',
            body:
            'Find and fix a bug. Not "delete the code '
                'and hope". The process of reading the '
                'error, finding the cause, and fixing it.',
          ),
          LessonStep(
            title: 'IDE',
            body:
            'Integrated Development Environment. The '
                'program you write code in. VS Code is the '
                'free standard. Others: JetBrains, Sublime.',
          ),
          LessonStep(
            title: 'API',
            body:
            'Application Programming Interface. A way '
                'for two programs to talk. Every app you '
                'use has an API behind it. "Call the '
                'weather API" means "ask another program '
                'for the weather data".',
          ),
          LessonStep(
            title: 'Frontend / Backend',
            body:
            'Frontend — the part users see (HTML, CSS, '
                'JavaScript in the browser). Backend — the '
                'part users do not see (servers, databases, '
                'logic). A "full-stack" developer does both.',
          ),
          LessonStep(
            title: 'Framework',
            body:
            'Pre-written code that handles the boring '
                'parts, so you can focus on your app. '
                'React, Django, Rails, Laravel — all '
                'frameworks.',
          ),
          LessonStep(
            title: 'Version control',
            body:
            'Tracking every change to your code. '
                'Git is the tool. GitHub is where you store '
                'the code online. Every job requires Git.',
          ),
          LessonStep(
            title: 'Deployment',
            body:
            'Putting your code on a server so other '
                'people can use it. "It works on my '
                'machine" becomes "it works for everyone".',
          ),
        ],
      ),

      LessonHeading('The honest timeline'),
      LessonParagraph(
        'How long until you can actually earn from coding?',
      ),
      LessonBullets([
        'Month 1–2 — learning the basics. Variables, '
            'functions, loops. "Hello world" to "a small '
            'calculator".',
        'Month 3–4 — building your first real projects. '
            'Still rough. Still slow. Still Googling '
            'everything.',
        'Month 5–6 — the first project that feels '
            '"real". One you would actually show someone.',
        'Month 7–9 — finishing 3 portfolio projects. '
            'Starting to apply for jobs or take small '
            'freelance work.',
        'Month 10–12 — first interviews. First '
            'rejections. Possibly first paid work.',
        'Year 2 — first developer job, or first '
            'meaningful freelance income. R15,000–'
            'R30,000/month.',
        'Year 3–5 — comfortable mid-level developer. '
            'R40,000–R80,000/month.',
      ]),
      LessonCallout(
        title: 'The uncomfortable truth',
        body:
        'Month 5 is when most people quit. You know '
            'enough to know how little you know. The '
            'projects are not as good as you want. The '
            'job applications return silence. The people '
            'who succeed are simply the ones who are '
            'still there in month 7. There is no shortcut '
            'past this phase. There is only through it.',
        tone: CalloutTone.warning,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What is the difference between frontend and '
              'backend?',
          'Which language should you learn if you want to '
              'build websites?',
          'Which language should you learn if you want to '
              'automate things?',
          'What are the five free platforms this track '
              'points to?',
          'How many months until you can realistically '
              'start applying for jobs?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You know the map. Lesson 2 is the commitment '
            'lesson — picking your first language, the '
            '90-day plan to actually learn it, the '
            '"tutorial hell" trap most beginners fall into, '
            'and how to structure practice so you actually '
            'improve instead of just watching videos.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 2 — the commitment
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson2 = SkillLesson(
    id: 'coding_2',
    trackId: trackId,
    title: 'Choosing Your Path',
    subtitle: 'The 90-day plan, tutorial hell, and how to actually learn',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'Lesson 1 gave you the map. This lesson is about '
            'actually moving. Most people who try to learn '
            'coding quit — not because coding is too hard, but '
            'because they never committed to a specific path.',
      ),
      LessonParagraph(
        'The whole lesson can be summarised in one sentence: '
            'pick one language, follow one platform, build '
            'three projects, ship them. Everything below is '
            'detail on that.',
      ),

      LessonHeading('The commitment'),
      LessonParagraph(
        'Decide now. Not "I will think about it". Decide.',
      ),
      LessonParagraph('Option A — Python'),
      LessonBullets([
        'Why — clean syntax, forgiving, huge ecosystem. '
            'The fastest path to "I built something that '
            'does a thing".',
        'Best for — automation, data, AI, backend, '
            'scripts, general programming.',
        'Learning path — W3Schools Python → Automate '
            'the Boring Stuff (free book) → CS50P (free '
            'Harvard) → your first project.',
      ]),
      LessonParagraph('Option B — JavaScript'),
      LessonBullets([
        'Why — runs in every browser, powers every '
            'website, backend too. The most hireable skill '
            'for a South African beginner right now.',
        'Best for — websites, web apps, mobile apps '
            '(via React Native), full-stack development.',
        'Learning path — W3Schools HTML + CSS + JS → '
            'The Odin Project → freeCodeCamp certifications '
            '→ your first project.',
      ]),
      LessonCallout(
        title: 'The 6-month commitment',
        body:
        'Once you pick one, commit to it for 6 '
            'months. Not 6 weeks. Six months. Do not '
            'switch languages because Python feels slow '
            'in week 3. Do not "just try Rust" in month '
            '2. Language switching is the single biggest '
            'cause of beginner failure. Pick one. Stay.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('Tutorial hell — the trap'),
      LessonParagraph(
        'Tutorial hell is the state most beginners get '
            'stuck in. You have watched 40 hours of tutorials. '
            'You can follow along. You feel like you are '
            'learning. And then you sit down to build '
            'something on your own and you cannot.',
      ),
      LessonParagraph('Why it happens:'),
      LessonBullets([
        'Tutorials teach you to copy. They do not teach '
            'you to think.',
        'You feel productive while watching. You are not '
            'building muscle — you are watching someone else '
            'lift.',
        'Every tutorial covers new material, but none of '
            'it connects to anything you have built.',
        'The moment the tutorial is gone, you have no idea '
            'what to do next.',
      ]),
      LessonCallout(
        title: 'The escape',
        body:
        'Follow the tutorial for the first hour. '
            'Then close the tutorial and rebuild the '
            'same thing from memory. Then add one feature '
            'the tutorial did not cover. That third step '
            '— the "add something new" — is where the '
            'actual learning happens. If you are not '
            'doing that, you are not learning to code. '
            'You are learning to watch tutorials.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('The 90-day plan'),
      LessonParagraph(
        'Ninety days. One hour per day. Realistic for '
            'anyone with a job, a family, or other commitments.',
      ),
      LessonSteps(
        title: 'The 90-day structure',
        steps: [
          LessonStep(
            title: 'Days 1–30 — basics',
            body:
            'W3Schools, 30–45 minutes per day. '
                'Read a topic, do the "Try it Yourself", '
                'then rebuild it from memory. Do not '
                'watch videos. Read and type. By day 30 '
                'you can write a small program that uses '
                'variables, loops, functions, and '
                'conditionals.',
          ),
          LessonStep(
            title: 'Days 31–60 — first project',
            body:
            'One real project. A calculator. A '
                'to-do list. A simple game. Follow a '
                'tutorial if you must, but rebuild '
                'from scratch after. By day 60 you '
                'have something you can show.',
          ),
          LessonStep(
            title: 'Days 61–80 — the harder project',
            body:
            'One project that actually interests '
                'you. A weather app that calls a real '
                'API. A scraper that pulls data from a '
                'site. A budget tracker. Something '
                'you want to exist. Nobody is paying '
                'you — you are doing it because it is '
                'yours.',
          ),
          LessonStep(
            title: 'Days 81–90 — ship it',
            body:
            'Put the project on GitHub. Deploy it '
                'if it is a website (Vercel, Netlify, '
                'Render — all free). Write a README. '
                'Post it on LinkedIn. This is your '
                'first portfolio piece.',
          ),
          LessonStep(
            title: 'Repeat',
            body:
            'Day 91 starts month 4. Same rhythm. '
                'New project. Harder. This is the whole '
                'job for 12+ months. There is no '
                'finish line — there is only becoming '
                'more capable.',
          ),
        ],
      ),

      LessonHeading('How to practice — the 3 modes'),
      LessonParagraph(
        'Not all practice is equal. Three modes, in '
            'increasing order of value:',
      ),
      LessonBullets([
        'Copy — you follow a tutorial word for word. '
            'Low value but necessary at the start. '
            'Necessary to see what code looks like.',
        'Rebuild — you close the tutorial and write '
            'it again from memory. High value. This '
            'is where you actually consolidate. If you '
            'get stuck, peek, then close it again.',
        'Build new — you build something the '
            'tutorial did not cover. Highest value. '
            'This is the only mode that prepares you '
            'for real work. Spend 80% of your time '
            'here after the first month.',
      ]),
      LessonCallout(
        title: 'The rule of thumb',
        body:
        'Copy in month 1. Rebuild in month 2. '
            'Build new from month 3 onward. Most '
            'beginners never leave the copy stage, '
            'which is why they cannot build anything '
            'on their own. The moment you close the '
            'tutorial and try alone — even if you '
            'fail — is where learning begins.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('The tools you actually need'),
      LessonBullets([
        'A laptop — any modern laptop works. A '
            'R6,000 Windows laptop runs Python and '
            'JavaScript fine. Do not buy a MacBook '
            '"to learn coding". You do not need one.',
        'VS Code — code.visualstudio.com. Free. '
            'The industry standard. Install it, and '
            'install the language extension.',
        'Git — git-scm.com. Free. Version control. '
            'Install it in week 1, even if you do '
            'not use it until week 6.',
        'GitHub — github.com. Free. Where your '
            'portfolio lives. Create an account in '
            'week 1.',
        'A browser with developer tools — Chrome '
            'or Firefox. Every modern browser has '
            'DevTools built in (F12 or Ctrl+Shift+I). '
            'You will use it constantly.',
        'Terminal — Terminal on Mac/Linux, '
            'PowerShell or Windows Terminal on '
            'Windows. Get comfortable with it in '
            'week 1.',
      ]),

      LessonHeading('How to actually improve'),
      LessonBullets([
        'Code every day. Even for 20 minutes. '
            'Consistency beats intensity.',
        'Type every example. Do not copy-paste. '
            'Typing forces your brain to process the '
            'syntax.',
        'Read error messages carefully. Every error '
            'message tells you exactly what is wrong. '
            'Most beginners ignore them and paste the '
            'whole error into Google. Read it first.',
        'Google is a skill. Search for the exact '
            'error message. Read 3 results before '
            'clicking. Ask on Stack Overflow only after '
            '1 hour of trying.',
        'Read other people\'s code. Browse GitHub '
            'repos. Look at how professionals structure '
            'projects. You learn more from reading than '
            'from writing at first.',
        'Do not compare yourself to senior '
            'developers. They have years of context '
            'you do not. Compare yourself to yourself '
            '6 weeks ago.',
      ]),
      LessonCallout(
        title: 'The 100-line rule',
        body:
        'When you first start, writing 100 lines '
            'of working code feels impossible. By '
            'month 6, it will feel like 10 minutes '
            'of work. By year 2, it will feel like '
            'warm-up. The gap between where you are '
            'now and where you want to be is smaller '
            'than it feels. It is just time — and '
            'there is no shortcut past it.',
        tone: CalloutTone.info,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What is tutorial hell, and how do you escape '
              'it?',
          'What are the 3 modes of practice, in order '
              'of value?',
          'What is the 6-month commitment, and why '
              'does it matter?',
          'What are the tools you actually need?',
          'What is the 90-day plan, in one sentence?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You have committed. Lesson 3 is the Python '
            'path — a structured walkthrough of what to '
            'learn on W3Schools, in what order, with '
            'specific links, exercises, and the three '
            'projects that actually get you to "I can '
            'build things".',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 3 — the Python path
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson3 = SkillLesson(
    id: 'coding_3',
    trackId: trackId,
    title: 'The Python Path',
    subtitle: 'W3Schools, Automate the Boring Stuff, CS50P, first projects',
    estimatedMinutes: 26,
    blocks: [
      LessonParagraph(
        'Python is the friendliest first language. This '
            'lesson is a step-by-step walkthrough of how to '
            'learn it using free online resources that are '
            'genuinely better than most paid courses.',
      ),
      LessonParagraph(
        'You do not need to buy a Python course. You do '
            'not need to watch 40 hours of YouTube. You need '
            'to read the right documentation, type every '
            'example, and build three projects.',
      ),

      LessonHeading('The Python learning path'),
      LessonSteps(
        title: 'In order',
        steps: [
          LessonStep(
            title: 'Week 1–3 — W3Schools Python',
            body:
            'Go to w3schools.com/python. Work '
                'through every chapter up to '
                '"Functions". This takes about 3 weeks '
                'at 30 minutes per day. Do every "Try '
                'it Yourself" example. Type every code '
                'block manually.',
          ),
          LessonStep(
            title: 'Week 4 — W3Schools Python Exercises',
            body:
            'Go to w3schools.com/python/'
                'python_exercises.asp. Work through '
                'the exercises. If you get stuck, look '
                'at the chapter, do not just look at '
                'the answer. These are designed to be '
                'done in one sitting per exercise.',
          ),
          LessonStep(
            title: 'Week 5–8 — Automate the Boring Stuff',
            body:
            'automatetheboringstuff.com. Free '
                'book online. The single best book '
                'for learning practical Python. Read '
                'chapters 1–12. Type every example. '
                'Build the small projects in each '
                'chapter. This is where Python starts '
                'to feel useful.',
          ),
          LessonStep(
            title: 'Week 9–12 — CS50P (optional but '
                'recommended)',
            body:
            'cs50.harvard.edu/python. Free '
                'Harvard course. Harder than '
                'W3Schools and Automate the Boring '
                'Stuff, but it will teach you to '
                'think like a programmer, not just to '
                'write Python. Do this if you want to '
                'go beyond "scripting" into "software '
                'engineering".',
          ),
          LessonStep(
            title: 'Week 13+ — your first project',
            body:
            'Stop learning. Start building. '
                'Pick something you actually want to '
                'exist. Build it. Ship it. The next '
                'three lessons teach you how.',
          ),
        ],
      ),

      LessonHeading('What W3Schools covers — the map'),
      LessonParagraph(
        'You do not need to memorise the W3Schools '
            'sidebar. Here is what matters, in order, and '
            'why.',
      ),
      LessonCodeBlock(
        caption: 'W3Schools Python — the essential chapters',
        content:
        'Core (do all of these):\n'
            '  w3schools.com/python/python_intro.asp\n'
            '  w3schools.com/python/python_variables.asp\n'
            '  w3schools.com/python/python_datatypes.asp\n'
            '  w3schools.com/python/python_numbers.asp\n'
            '  w3schools.com/python/python_strings.asp\n'
            '  w3schools.com/python/python_operators.asp\n'
            '  w3schools.com/python/python_lists.asp\n'
            '  w3schools.com/python/python_tuples.asp\n'
            '  w3schools.com/python/python_sets.asp\n'
            '  w3schools.com/python/python_dictionaries.asp\n'
            '  w3schools.com/python/python_if_else.asp\n'
            '  w3schools.com/python/python_while_loops.asp\n'
            '  w3schools.com/python/python_for_loops.asp\n'
            '  w3schools.com/python/python_functions.asp\n'
            '  w3schools.com/python/python_lambda.asp\n'
            '\n'
            'Skip for now (learn later):\n'
            '  Classes, inheritance, modules, file handling,\n'
            '  exception handling, regex, JSON, PIP.\n'
            '  These come in week 5+ when you have a project\n'
            '  that needs them.\n'
            '\n'
            'Exercises:\n'
            '  w3schools.com/python/python_exercises.asp\n'
            '\n'
            'Reference (bookmark, do not memorise):\n'
            '  w3schools.com/python/python_reference.asp',
      ),

      LessonHeading('The Python practice exercises'),
      LessonParagraph(
        'Do these in a Python file. Do not look at '
            'the answer until you have tried for at least '
            '15 minutes.',
      ),
      LessonSteps(
        title: 'The 10 exercises',
        steps: [
          LessonStep(
            title: 'Exercise 1 — hello, name',
            body:
            'Ask the user for their name, then '
                'print "Hello, [name]!". Hint: input(), '
                'f-strings.',
          ),
          LessonStep(
            title: 'Exercise 2 — the calculator',
            body:
            'Ask for two numbers, print their '
                'sum, difference, product, and '
                'quotient. Hint: float(), the arithmetic '
                'operators.',
          ),
          LessonStep(
            title: 'Exercise 3 — even or odd',
            body:
            'Ask for a number. Print "even" if it '
                'is divisible by 2, "odd" otherwise. '
                'Hint: the % operator.',
          ),
          LessonStep(
            title: 'Exercise 4 — times table',
            body:
            'Ask for a number. Print its '
                'multiplication table from 1 to 12. '
                'Hint: for loop, range().',
          ),
          LessonStep(
            title: 'Exercise 5 — the shopping list',
            body:
            'Create an empty list. Ask the user '
                'for 5 items. Add each to the list. '
                'Then print the list. Hint: list.append().',
          ),
          LessonStep(
            title: 'Exercise 6 — the temperature converter',
            body:
            'Ask for a temperature and a unit '
                '(C or F). Convert and print the '
                'result in the other unit. Hint: '
                'if/else.',
          ),
          LessonStep(
            title: 'Exercise 7 — the fizz-buzz',
            body:
            'Print numbers 1–100. For multiples '
                'of 3 print "Fizz", for multiples of '
                '5 print "Buzz", for multiples of both '
                'print "FizzBuzz". Hint: the % operator '
                'and if/elif/else.',
          ),
          LessonStep(
            title: 'Exercise 8 — word counter',
            body:
            'Ask for a sentence. Print how many '
                'words it has, and how many times '
                'each word appears. Hint: .split(), '
                'dictionaries.',
          ),
          LessonStep(
            title: 'Exercise 9 — the guessing game',
            body:
            'Generate a random number between '
                '1 and 100. Ask the user to guess. '
                'Tell them "higher" or "lower" until '
                'they get it. Hint: import random, '
                'while loop.',
          ),
          LessonStep(
            title: 'Exercise 10 — the to-do list',
            body:
            'A text-based menu: 1) add task, '
                '2) list tasks, 3) delete task, '
                '4) quit. Store tasks in a list. '
                'Loop until quit. Hint: while loop, '
                'lists, input().',
          ),
        ],
      ),

      LessonHeading('The three Python projects'),
      LessonParagraph(
        'After the exercises, build these three projects. '
            'Each one is a portfolio piece.',
      ),

      LessonHeading('Project 1 — the file organiser'),
      LessonBullets([
        'What — a script that looks at a folder and '
            'sorts every file into subfolders by type '
            '(images, documents, videos, archives).',
        'Why — teaches you file handling, the os '
            'module, loops, and conditionals. Very '
            'practical.',
        'Reference — Automate the Boring Stuff, '
            'chapter 9.',
      ]),

      LessonHeading('Project 2 — the web scraper'),
      LessonBullets([
        'What — a script that fetches a webpage '
            'and extracts specific information '
            '(e.g., all article headlines from a news '
            'site).',
        'Why — teaches you HTTP requests, HTML '
            'parsing, the requests and BeautifulSoup '
            'libraries. A foundational automation '
            'skill.',
        'Reference — Automate the Boring Stuff, '
            'chapter 12.',
      ]),

      LessonHeading('Project 3 — the personal project'),
      LessonBullets([
        'What — something you actually want. A '
            'budget tracker. A pomodoro timer. A '
            'daily quote emailer. A CLI tool you '
            'would use.',
        'Why — this is the one you will actually '
            'care about. The other two are exercises. '
            'This one is yours.',
        'Reference — no tutorial. Just you, '
            'Google, and Stack Overflow. This is '
            'the whole point.',
      ]),
      LessonCallout(
        title: 'The first project is the hardest',
        body:
        'You will get stuck. You will Google '
            'the same error 5 times. You will want '
            'to quit. Everyone does. The people '
            'who succeed are the ones who sit with '
            'the problem for 20 minutes, do not '
            'find an answer, take a walk, come '
            'back, and eventually find it. There is '
            'no shortcut. There is only through.',
        tone: CalloutTone.tip,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What are the three resources for '
              'learning Python in this track?',
          'What are the core W3Schools chapters?',
          'What are the three portfolio projects?',
          'Why is the third project the most '
              'important?',
          'How do you escape tutorial hell?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'If Python is your path, skip Lesson 4 and go '
            'straight to Lesson 5 (Git and GitHub). If '
            'you chose JavaScript instead, Lesson 4 is '
            'your walkthrough. Same structure, different '
            'language.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 4 — the JavaScript path
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson4 = SkillLesson(
    id: 'coding_4',
    trackId: trackId,
    title: 'The JavaScript Path',
    subtitle: 'HTML, CSS, JavaScript, and the web — with W3Schools and MDN',
    estimatedMinutes: 26,
    blocks: [
      LessonParagraph(
        'JavaScript is the language of the web. Every '
            'website, every web app, every browser extension '
            'runs JavaScript. If you want to build things '
            'people can use directly, this is the path.',
      ),
      LessonParagraph(
        'The learning path is slightly longer than Python '
            'because you have to learn three things together '
            '— HTML, CSS, and JavaScript — to make a webpage. '
            'Not because any one of them is hard, but because '
            'they only make sense together.',
      ),

      LessonHeading('The three languages of the web'),
      LessonBullets([
        'HTML — the structure. Headings, paragraphs, '
            'images, buttons. "This is a heading." '
            '"This is a paragraph." "This is a button."',
        'CSS — the styling. Colours, fonts, spacing, '
            'layout. "Make headings blue." "Give buttons '
            'rounded corners." "Centre this."',
        'JavaScript — the behaviour. Click a button and '
            'something happens. Submit a form and the page '
            'updates. Sort a list and the order changes.',
      ]),
      LessonCallout(
        title: 'The three in one sentence',
        body:
        'HTML is the skeleton. CSS is the skin. '
            'JavaScript is the muscles. Every website '
            'you have ever used is those three, '
            'rendered by your browser.',
        tone: CalloutTone.info,
      ),

      LessonHeading('The JavaScript learning path'),
      LessonSteps(
        title: 'In order',
        steps: [
          LessonStep(
            title: 'Week 1–2 — W3Schools HTML',
            body:
            'w3schools.com/html. Every chapter '
                'up to "HTML Forms". Build 5 small '
                'pages: a profile page, a recipe page, '
                'a contact page, a photo gallery, and '
                'a form. Type every tag manually.',
          ),
          LessonStep(
            title: 'Week 3–4 — W3Schools CSS',
            body:
            'w3schools.com/css. Focus on '
                'selectors, colours, fonts, box '
                'model, flexbox, and responsive '
                'design. Style the 5 HTML pages you '
                'built in week 1–2.',
          ),
          LessonStep(
            title: 'Week 5–8 — W3Schools JavaScript',
            body:
            'w3schools.com/js. Every chapter '
                'up to "JS Functions". Focus on '
                'variables, data types, operators, '
                'conditionals, loops, functions, '
                'arrays, objects, and DOM manipulation.',
          ),
          LessonStep(
            title: 'Week 9–10 — MDN Web Docs',
            body:
            'developer.mozilla.org. Not a '
                'tutorial — a reference. When '
                'W3Schools left you with questions, '
                'MDN answers them. Bookmark it. '
                'Use it constantly.',
          ),
          LessonStep(
            title: 'Week 11–16 — The Odin Project',
            body:
            'theodinproject.com. The '
                'full-stack curriculum. Follow the '
                '"Foundations" course. It will take '
                'you from where you are to building '
                'a real project. Free.',
          ),
          LessonStep(
            title: 'Week 17+ — build your own',
            body:
            'Stop learning. Start building. '
                'The next two lessons teach you '
                'how.',
          ),
        ],
      ),

      LessonHeading('What W3Schools covers — the map'),
      LessonCodeBlock(
        caption: 'W3Schools JavaScript — the essential chapters',
        content:
        'HTML (week 1-2):\n'
            '  w3schools.com/html/html_intro.asp\n'
            '  w3schools.com/html/html_basic.asp\n'
            '  w3schools.com/html/html_elements.asp\n'
            '  w3schools.com/html/html_attributes.asp\n'
            '  w3schools.com/html/html_headings.asp\n'
            '  w3schools.com/html/html_paragraphs.asp\n'
            '  w3schools.com/html/html_links.asp\n'
            '  w3schools.com/html/html_images.asp\n'
            '  w3schools.com/html/html_forms.asp\n'
            '\n'
            'CSS (week 3-4):\n'
            '  w3schools.com/css/css_intro.asp\n'
            '  w3schools.com/css/css_selectors.asp\n'
            '  w3schools.com/css/css_colors.asp\n'
            '  w3schools.com/css/css_fonts.asp\n'
            '  w3schools.com/css/css_boxmodel.asp\n'
            '  w3schools.com/css/css_flexbox.asp\n'
            '  w3schools.com/css/css_rwd_intro.asp  (responsive)\n'
            '\n'
            'JavaScript (week 5-8):\n'
            '  w3schools.com/js/js_intro.asp\n'
            '  w3schools.com/js/js_variables.asp\n'
            '  w3schools.com/js/js_datatypes.asp\n'
            '  w3schools.com/js/js_operators.asp\n'
            '  w3schools.com/js/js_if_else.asp\n'
            '  w3schools.com/js/js_loop_for.asp\n'
            '  w3schools.com/js/js_functions.asp\n'
            '  w3schools.com/js/js_arrays.asp\n'
            '  w3schools.com/js/js_objects.asp\n'
            '  w3schools.com/js/js_htmldom.asp\n'
            '  w3schools.com/js/js_htmldom_events.asp\n'
            '\n'
            'Reference:\n'
            '  w3schools.com/jsref/     (built-in functions)\n'
            '  developer.mozilla.org    (authoritative reference)',
      ),

      LessonHeading('The JavaScript practice exercises'),
      LessonParagraph(
        'Do these in a browser console (F12 → Console '
            'tab) or a .html file with a <script> tag. '
            'Try each for 15 minutes before looking at '
            'the answer.',
      ),
      LessonSteps(
        title: 'The 8 exercises',
        steps: [
          LessonStep(
            title: 'Exercise 1 — hello, name',
            body:
            'Ask the user for their name with '
                'prompt(). Alert "Hello, [name]!". '
                'Hint: prompt(), alert(), template '
                'strings.',
          ),
          LessonStep(
            title: 'Exercise 2 — the calculator',
            body:
            'Two input fields, four buttons '
                '(add, subtract, multiply, divide). '
                'Show the result on the page. Hint: '
                'document.getElementById, addEventListener.',
          ),
          LessonStep(
            title: 'Exercise 3 — the colour changer',
            body:
            'A button that changes the background '
                'colour of the page to a random colour '
                'each time it is clicked. Hint: Math.random, '
                'document.body.style.backgroundColor.',
          ),
          LessonStep(
            title: 'Exercise 4 — the to-do list',
            body:
            'An input field and an "add" button. '
                'Add each item to a list on the page. '
                'Click an item to mark it done. Hint: '
                'arrays, forEach, DOM manipulation.',
          ),
          LessonStep(
            title: 'Exercise 5 — the counter',
            body:
            'A number display with "+" and "−" '
                'buttons. Click "+" to increment. Click '
                '"−" to decrement. Hint: let, parseInt, '
                'textContent.',
          ),
          LessonStep(
            title: 'Exercise 6 — the digital clock',
            body:
            'Show the current time, updating every '
                'second. Hint: Date, setInterval, '
                'padStart.',
          ),
          LessonStep(
            title: 'Exercise 7 — the form validator',
            body:
            'A login form. Validate email and '
                'password on submit. Show an error '
                'message if invalid. Hint: submit event, '
                'preventDefault, if/else.',
          ),
          LessonStep(
            title: 'Exercise 8 — the weather app',
            body:
            'Call a free weather API (openweathermap.org '
                'or weatherapi.com). Show the temperature '
                'for a city entered by the user. Hint: '
                'fetch, async/await, JSON.',
          ),
        ],
      ),

      LessonHeading('The three JavaScript projects'),
      LessonParagraph(
        'After the exercises, build these three projects. '
            'Each is a portfolio piece that shows you can '
            'build real, working things.',
      ),

      LessonHeading('Project 1 — the portfolio website'),
      LessonBullets([
        'What — your own personal website. About '
            'you, what you are learning, links to '
            'your other projects.',
        'Why — every developer has one. It is '
            'the first thing employers and clients '
            'look at. Build it from scratch — no '
            'template.',
        'Deploy — Vercel (vercel.com) or Netlify '
            '(netlify.com). Both free.',
      ]),

      LessonHeading('Project 2 — the to-do app'),
      LessonBullets([
        'What — a to-do list with add, complete, '
            'delete, and (optionally) local storage '
            'so tasks survive a refresh.',
        'Why — the classic first project. Teaches '
            'state management, DOM manipulation, and '
            'local storage — three skills every '
            'frontend developer needs.',
        'Deploy — same free platforms.',
      ]),

      LessonHeading('Project 3 — the personal project'),
      LessonBullets([
        'What — something you actually want to '
            'exist. A recipe collector. A workout '
            'tracker. A comic viewer. A flashcard '
            'app. Your own idea.',
        'Why — this is the one you will actually '
            'care about. The other two are exercises. '
            'This one is yours.',
        'Deploy — same free platforms.',
      ]),
      LessonCallout(
        title: 'The "ship it" rule',
        body:
        'A finished, deployed, ugly project '
            'beats an unfinished, beautiful, local '
            'one every single time. Every serious '
            'developer has shipped things they were '
            'not proud of. What matters is that you '
            'shipped. Ship the ugly version. Fix it '
            'later.',
        tone: CalloutTone.tip,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What are the three languages of the web?',
          'What does HTML do? CSS? JavaScript?',
          'What are the core W3Schools chapters '
              'for each language?',
          'What are the three portfolio projects?',
          'Why is "ship the ugly version" so '
              'important?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'Whether you chose Python or JavaScript, '
            'Lesson 5 is the same: Git and GitHub. The '
            'single most important tool after the '
            'language itself. Every job requires it. '
            'Every portfolio lives on it. Learn it '
            'properly.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 5 — Git and GitHub
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson5 = SkillLesson(
    id: 'coding_5',
    trackId: trackId,
    title: 'Git and GitHub',
    subtitle: 'The tool every developer uses, and the portfolio every employer checks',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'Git is the single most important tool after '
            'the language itself. Every professional '
            'developer uses it. Every job requires it. '
            'Every portfolio lives on it. And yet, '
            'most beginners skip it, then panic when '
            'they get to their first interview.',
      ),
      LessonParagraph(
        'This lesson is not a full Git course. It is '
            'the 10 commands you will use every single '
            'day, plus the reason Git exists and how '
            'GitHub fits in.',
      ),

      LessonHeading('What Git is, and why it exists'),
      LessonParagraph(
        'Git is version control. It tracks every '
            'change to every file in your project, so '
            'you can:',
      ),
      LessonBullets([
        'See what changed, when, and by whom.',
        'Undo any change, all the way back to the '
            'first commit.',
        'Work on a feature without breaking the '
            'main code.',
        'Collaborate with others without overwriting '
            'each other\'s work.',
      ]),
      LessonParagraph(
        'Before Git, developers saved files like '
            '"project_final.docx", "project_final_v2.docx", '
            '"project_final_REAL.docx". It was chaos. '
            'Git replaced all of that with one clean '
            'history of changes.',
      ),

      LessonHeading('Git vs GitHub'),
      LessonParagraph(
        'People confuse these constantly. They are '
            'different things.',
      ),
      LessonBullets([
        'Git — the tool. Runs on your laptop. '
            'Tracks changes. Free. You install it once.',
        'GitHub — the website. github.com. Stores '
            'Git repositories online so you can share '
            'them, back them up, and collaborate. '
            'Also free.',
      ]),
      LessonParagraph(
        'You use Git locally. You push to GitHub '
            'when you want to share or back up. Git is '
            'the tool; GitHub is the cloud storage for '
            'that tool.',
      ),

      LessonHeading('Setup — install and configure'),
      LessonSteps(
        title: 'One-time setup',
        steps: [
          LessonStep(
            title: 'Install Git',
            body:
            'git-scm.com/downloads. Free. '
                'Windows installer, macOS via Homebrew '
                'or the installer, Linux via apt.',
          ),
          LessonStep(
            title: 'Configure your identity',
            body:
            'Open a terminal. Run: '
                'git config --global user.name "Your Name" '
                'and git config --global user.email '
                '"you@example.com". Use the same email '
                'as your GitHub account.',
          ),
          LessonStep(
            title: 'Create a GitHub account',
            body:
            'github.com. Free. Use a professional '
                'username (firstname-lastname, not '
                'coolcat2007).',
          ),
          LessonStep(
            title: 'Set up SSH (optional but '
                'recommended)',
            body:
            'Follow the GitHub docs at '
                'docs.github.com/en/authentication. '
                'Once set up, you will not have to '
                'type a password every push.',
          ),
        ],
      ),

      LessonHeading('The 10 Git commands you actually use'),
      LessonSteps(
        title: 'Learn these, and 90% of Git is easy',
        steps: [
          LessonStep(
            title: 'git init',
            body:
            'Start tracking a folder as a Git '
                'repository. Run once per project, in '
                'the project folder.',
          ),
          LessonStep(
            title: 'git status',
            body:
            'See what has changed since the last '
                'commit. The most-used Git command. Run '
                'it constantly to know where you are.',
          ),
          LessonStep(
            title: 'git add .',
            body:
            'Stage all changes — mark them as '
                'ready to commit. "The dot" means '
                '"everything in this folder".',
          ),
          LessonStep(
            title: 'git commit -m "message"',
            body:
            'Save a snapshot of your staged '
                'changes with a description. Example: '
                'git commit -m "Add login form". Good '
                'commit messages make your history '
                'readable.',
          ),
          LessonStep(
            title: 'git log',
            body:
            'See every commit ever made to this '
                'repository. Your history. Your evidence '
                'that you actually built things.',
          ),
          LessonStep(
            title: 'git remote add origin <url>',
            body:
            'Connect your local repository to a '
                'GitHub repository. Run once when you '
                'create a new GitHub repo.',
          ),
          LessonStep(
            title: 'git push',
            body:
            'Upload your commits to GitHub. '
                'Use "git push -u origin main" the '
                'first time, then just "git push" after.',
          ),
          LessonStep(
            title: 'git pull',
            body:
            'Download changes from GitHub. Use '
                'this before starting work each day, '
                'to make sure you have the latest '
                'version.',
          ),
          LessonStep(
            title: 'git branch <name>',
            body:
            'Create a new branch — a separate '
                'line of changes. Used when working on '
                'a feature without touching main.',
          ),
          LessonStep(
            title: 'git checkout <name>',
            body:
            'Switch to a branch. "git checkout '
                'main" returns to the main branch. '
                '"git checkout -b new-feature" creates '
                'and switches in one command.',
          ),
        ],
      ),

      LessonHeading('The daily workflow'),
      LessonParagraph(
        'Every day you code, follow this rhythm. '
            'Every professional developer does.',
      ),
      LessonCodeBlock(
        caption: 'The daily Git workflow',
        content:
        '# 1. Start the day — get the latest\n'
            'git pull\n'
            '\n'
            '# 2. Work on your code\n'
            '#    (writing, editing, debugging — the actual work)\n'
            '\n'
            '# 3. Check what changed\n'
            'git status\n'
            '\n'
            '# 4. Stage your changes\n'
            'git add .\n'
            '\n'
            '# 5. Commit with a clear message\n'
            'git commit -m "Add user login form"\n'
            '\n'
            '# 6. Push to GitHub\n'
            'git push\n'
            '\n'
            '# 7. Repeat — multiple times per day',
      ),
      LessonCallout(
        title: 'Commit often',
        body:
        'A common beginner mistake is committing '
            'once per day, or once per week. Commit '
            'every time you finish a small thing — '
            'a function, a bug fix, a small feature. '
            'Small commits with clear messages are '
            'how professional developers work. If you '
            'break something, you can revert one small '
            'commit instead of losing a week of work.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('Branches — the workflow that scales'),
      LessonParagraph(
        'Branching lets you work on a feature without '
            'touching your main code. If it works, merge '
            'it back. If it breaks, throw it away. Main '
            'stays clean.',
      ),
      LessonCodeBlock(
        caption: 'The feature branch workflow',
        content:
        '# 1. Start from main, get the latest\n'
            'git checkout main\n'
            'git pull\n'
            '\n'
            '# 2. Create a branch for your feature\n'
            'git checkout -b add-login-page\n'
            '\n'
            '# 3. Do the work, commit as normal\n'
            'git add .\n'
            'git commit -m "Add login form"\n'
            '\n'
            '# 4. Push the branch to GitHub\n'
            'git push -u origin add-login-page\n'
            '\n'
            '# 5. On GitHub, open a Pull Request\n'
            '#    (a "PR") — asks to merge your branch into main\n'
            '\n'
            '# 6. After review and merge, delete the branch\n'
            'git checkout main\n'
            'git pull\n'
            'git branch -d add-login-page',
      ),

      LessonHeading('Where to learn Git properly'),
      LessonSteps(
        title: 'Free resources',
        steps: [
          LessonStep(
            title: 'Git documentation — git-scm.com/doc',
            body:
            'The official docs. Free. Dense but '
                'accurate. Use it as reference, not '
                'as a tutorial.',
          ),
          LessonStep(
            title: 'Oh My Git! — ohmygit.org',
            body:
            'A free, open-source game that '
                'teaches Git through play. Excellent '
                'for beginners. Teaches the mental '
                'model, not just the commands.',
          ),
          LessonStep(
            title: 'GitHub Skills — skills.github.com',
            body:
            'Interactive, hands-on GitHub '
                'tutorials. Free. Takes you through '
                'real workflows in real repositories.',
          ),
          LessonStep(
            title: 'Learn Git Branching — '
                'learngitbranching.js.org',
            body:
            'A visual, browser-based Git '
                'simulator. The best way to understand '
                'branching. Free.',
          ),
        ],
      ),

      LessonHeading('GitHub as a portfolio'),
      LessonParagraph(
        'Your GitHub profile is your portfolio. '
            'Every employer, client, or collaborator will '
            'look at it. Here is what makes it good:',
      ),
      LessonBullets([
        'At least 3 finished projects, each with '
            'a clear README. Not 30 half-finished '
            'ones.',
        'Commit history that shows real progress — '
            'not one commit called "final version".',
        'A profile README at '
            'github.com/your-username/your-username — '
            'a short introduction, what you are '
            'learning, what you have built.',
        'Pinned repositories — pin your best 3–6 '
            'projects to the top of your profile.',
        'No secrets. Never commit API keys, '
            'passwords, or .env files. If you have '
            'done it, delete the commit and rotate '
            'the key. Bots scan GitHub continuously.',
      ]),
      LessonCallout(
        title: 'The README rule',
        body:
        'Every project on your GitHub should have '
            'a README that answers three questions: '
            '(1) What does this project do? '
            '(2) How do I run it? '
            '(3) Why did you build it? '
            'If someone opens your repo and cannot '
            'answer those three questions in 60 '
            'seconds, they will close it and never '
            'come back.',
        tone: CalloutTone.tip,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What is the difference between Git and '
              'GitHub?',
          'What does "git add ." do?',
          'What does "git commit -m" do?',
          'What is a branch, and why do you use '
              'one?',
          'What are the three questions every '
              'README should answer?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You know Git. Lesson 6 is about turning '
            'three projects into a portfolio that gets '
            'you hired — the specific projects that '
            'work, how to deploy them, how to write '
            'the README that recruiters actually read, '
            'and how to demo them in an interview.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 6 — portfolio projects
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson6 = SkillLesson(
    id: 'coding_6',
    trackId: trackId,
    title: 'Building the Portfolio',
    subtitle: 'The three projects that get you hired',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'You know your language. You know Git. Now you '
            'need the thing that actually gets you hired: '
            'a portfolio of real, working, deployed '
            'projects.',
      ),
      LessonParagraph(
        'Three deep projects beat thirty shallow ones. '
            'Every serious developer has a portfolio of '
            '3–6 projects they can talk about in detail. '
            'That is the standard. Not "I have done 50 '
            'tutorials". Three projects you built, '
            'deployed, and can explain.',
      ),

      LessonHeading('The three projects'),
      LessonParagraph(
        'Every portfolio needs these three types of '
            'project. Each one demonstrates a different '
            'skill.',
      ),

      LessonHeading('1. The utility — shows you can solve a problem'),
      LessonBullets([
        'What — a small tool that solves a specific '
            'problem. A URL shortener. A markdown '
            'previewer. A password generator. A '
            'budget tracker.',
        'Why — shows you can take a specific need '
            'and build something useful for it.',
        'Scope — should be finishable in 3–5 days '
            'of focused work. If it is taking longer, '
            'the scope is too big.',
        'Example — "I built a tool that converts '
            'CSV files to JSON. Here is the problem it '
            'solves, here is how it works, here is the '
            'live version."',
      ]),

      LessonHeading('2. The integrated app — shows you can build something real'),
      LessonBullets([
        'What — an app that uses an external API, '
            'stores data, and does something users '
            'would actually want. A weather app. A '
            'movie search app. A recipe finder. A '
            'habit tracker.',
        'Why — shows you can integrate services, '
            'manage state, handle errors — the actual '
            'skills of real development.',
        'Scope — 1–2 weeks. Can have a backend '
            '(database) or not, depending on your '
            'path.',
        'Example — "A weather app that calls '
            'OpenWeatherMap, saves your favourite '
            'cities, and shows a 5-day forecast. '
            'Built with JavaScript and deployed on '
            'Vercel."',
      ]),

      LessonHeading('3. The personal project — shows you can ship'),
      LessonBullets([
        'What — something you actually wanted to '
            'exist. A comic viewer. A workout logger. '
            'A journal app. Your own idea.',
        'Why — shows you can see a project '
            'through to completion. The other two are '
            'exercises. This one is yours.',
        'Scope — as big or small as you want. '
            'The point is not the complexity, it is '
            'that you finished it and shipped it.',
        'Example — "A daily journal that stores '
            'entries in local storage, has dark mode, '
            'and exports to PDF."',
      ]),
      LessonCallout(
        title: 'Finished beats polished',
        body:
        'A finished, deployed, ugly project '
            'beats an unfinished, beautiful, local '
            'one. Every single time. Employers do '
            'not care that your CSS is not perfect. '
            'They care that you can see a project '
            'through to a working, deployed state. '
            'Ship the ugly version. Iterate later. '
            'The hardest part of any project is the '
            'last 10% — and shipping teaches you to '
            'push through it.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('Deployment — free hosting'),
      LessonParagraph(
        'Every project on your portfolio should be '
            'live, with a URL you can send to anyone. '
            'Free hosting exists for both frontend and '
            'backend.',
      ),
      LessonBullets([
        'Vercel — vercel.com. Best for React, '
            'Next.js, and any JavaScript frontend. '
            'Free tier. Deploy from GitHub in 30 '
            'seconds.',
        'Netlify — netlify.com. Similar to Vercel. '
            'Great for static sites, HTML/CSS/JS. '
            'Free tier.',
        'Render — render.com. Best for Python '
            'backends (Flask, Django) and Node.js '
            'backends. Free tier (with sleep after '
            'inactivity).',
        'Railway — railway.app. Good for full-stack '
            'apps with databases. Free trial, then '
            'small monthly cost.',
        'GitHub Pages — pages.github.com. Free '
            'hosting for static HTML/CSS/JS sites. '
            'The simplest option for a portfolio '
            'website.',
      ]),
      LessonParagraph(
        'The deployment process for all of them is '
            'the same:',
      ),
      LessonCodeBlock(
        caption: 'Deploy in four steps',
        content:
        '1. Push your code to GitHub\n'
            '   git add .\n'
            '   git commit -m "Ready to deploy"\n'
            '   git push\n'
            '\n'
            '2. Go to vercel.com (or netlify, render, railway)\n'
            '\n'
            '3. Connect your GitHub account, select the repo\n'
            '\n'
            '4. Click "Deploy" — the platform builds and hosts\n'
            '   your project automatically\n'
            '\n'
            'Every future push to main = automatic re-deploy.',
      ),

      LessonHeading('The README that gets you hired'),
      LessonParagraph(
        'Your README is what people read before they '
            'look at your code. It should answer three '
            'questions in 30 seconds.',
      ),
      LessonCodeBlock(
        caption: 'The README template',
        content:
        '# Project Name\n'
            '\n'
            '## What it does\n'
            'One paragraph explaining the project. What problem\n'
            'does it solve? Who is it for? Why did you build it?\n'
            '\n'
            '## Live demo\n'
            '[link to deployed project]\n'
            '\n'
            '## Screenshots\n'
            '![Screenshot 1](path/to/image.png)\n'
            '![Screenshot 2](path/to/image.png)\n'
            '\n'
            '## How to run it locally\n'
            '```\n'
            'git clone https://github.com/yourname/project\n'
            'cd project\n'
            'npm install      # (or pip install -r requirements.txt)\n'
            'npm run dev      # (or python app.py)\n'
            '```\n'
            '\n'
            '## Technologies used\n'
            '- HTML, CSS, JavaScript\n'
            '- Node.js, Express\n'
            '- MongoDB\n'
            '\n'
            '## What I learned\n'
            'One paragraph. Honest. Not "this project was a\n'
            'success" — what did you struggle with? What would\n'
            'you do differently?\n'
            '\n'
            '## Future improvements\n'
            '- Feature you would add\n'
            '- Bug you know about\n'
            '- Refactor you would make',
      ),
      LessonCallout(
        title: 'The "What I learned" section',
        body:
        'Most beginners skip this. It is the most '
            'important part. Employers read it to see if '
            'you actually learned from the project or '
            'just followed a tutorial. "I struggled with '
            'async/await and only understood it after '
            'rewriting the API call three times" is '
            'worth more than "this project was a '
            'success".',
        tone: CalloutTone.tip,
      ),

      LessonHeading('The demo — how to talk about your project'),
      LessonParagraph(
        'In an interview, you will be asked to walk '
            'through one of your projects. Have a '
            '2-minute version ready.',
      ),
      LessonSteps(
        title: 'The 2-minute project demo',
        steps: [
          LessonStep(
            title: '30 seconds — the problem',
            body:
            '"I built this because I wanted to '
                '[do a thing] and existing tools did '
                'not quite fit. The problem was [X]."',
          ),
          LessonStep(
            title: '30 seconds — what it does',
            body:
            '"So I built a tool that [does the '
                'thing]. Users can [first feature], '
                '[second feature], and [third '
                'feature]."',
          ),
          LessonStep(
            title: '30 seconds — how it works',
            body:
            '"Under the hood, it uses [tech]. '
                'The trickiest part was [specific '
                'challenge]. I solved it by [specific '
                'approach]."',
          ),
          LessonStep(
            title: '30 seconds — what I learned',
            body:
            '"If I rebuilt it, I would [change '
                'X]. I learned [specific lesson] '
                'that I have used in every project '
                'since."',
          ),
        ],
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What are the three types of portfolio '
              'project?',
          'Why do 3 deep projects beat 30 shallow '
              'ones?',
          'What are the free hosting options?',
          'What should a README answer in 30 '
              'seconds?',
          'What is the 2-minute project demo '
              'structure?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You have a portfolio. Lesson 7 is the '
            'business side — how to actually get paid. '
            'The honest career timeline, the job '
            'application process, the freelance '
            'reality, contracts, POPIA, and the full '
            'Kepler Study disclaimer.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 7 — careers, contracts, disclaimer
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson7 = SkillLesson(
    id: 'coding_7',
    trackId: trackId,
    title: 'Getting Paid to Code',
    subtitle: 'Jobs, freelance reality, contracts, and where Kepler Study stands',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'You have a language, a workflow, and a '
            'portfolio. The last thing standing between '
            'you and a career is the business side: how '
            'to actually get hired, what to expect, and '
            'what the law requires when you handle other '
            'people\'s systems.',
      ),
      LessonParagraph(
        'None of this is legal or career advice. It is '
            'orientation. Verify current requirements '
            'before acting.',
      ),

      LessonHeading('The two realistic paths'),
      LessonParagraph(
        'Both are valid. Most people who succeed start '
            'with path 1, then move to path 2 after 2–3 '
            'years.',
      ),

      LessonHeading('Path 1 — Get a job'),
      LessonBullets([
        'Why it is the right first step — you learn '
            '10x faster surrounded by senior developers '
            'than alone. Steady salary. Real projects. '
            'Mentorship.',
        'What it takes — 3 portfolio projects, a '
            'GitHub profile, a resume, and 2–6 months '
            'of applying.',
        'Where the jobs are in SA — banks (Standard '
            'Bank, FNB, Absa, Nedbank), telcos (Vodacom, '
            'MTN), insurers (Discovery, Old Mutual), '
            'retail (Takealot, Mr Price, Shoprite), '
            'and hundreds of startups.',
        'Salary in SA — R20,000–R40,000/month junior, '
            'R40,000–R80,000/month mid, R80,000–'
            'R150,000/month senior.',
        'Remote international — huge demand. South '
            'African developers work for UK/EU/US '
            'companies at 2–3x local rates. Sometimes '
            'without leaving the country.',
      ]),

      LessonHeading('Path 2 — Freelance'),
      LessonBullets([
        'Why it is harder than it sounds — clients '
            'hire freelancers for reliability, not '
            'potential. You need a portfolio, references, '
            'and business skills.',
        'What it takes — usually 1–2 years of paid '
            'experience first, or a portfolio strong '
            'enough to substitute.',
        'Rate in SA — R400–R1,500/hour depending '
            'on experience, or R10,000–R80,000 per '
            'project.',
        'Where the clients are — local businesses '
            '(websites, apps), startups (MVP builds), '
            'agencies (subcontracting), and freelance '
            'platforms (Upwork, Toptal, Contra).',
        'The honest truth — most beginner freelancers '
            'undercharge, overdeliver, and burn out '
            'within 12 months. Do the job first. Then '
            'freelance.',
      ]),
      LessonCallout(
        title: 'The job-first advice',
        body:
        'Everyone wants to freelance or build '
            'their own product. Almost nobody should '
            'do it before they have worked as an '
            'employed developer for at least 2 years. '
            'The job teaches you how software is '
            'built in teams, how to ship reliably, '
            'how to handle pressure. You cannot learn '
            'those things alone in your bedroom. Get '
            'the job. Learn. Then build the thing you '
            'actually want.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('The job application process'),
      LessonParagraph(
        'Most beginners think the process is: apply, '
            'interview, get hired. It is not. The real '
            'process:',
      ),
      LessonSteps(
        title: 'How tech hiring actually works',
        steps: [
          LessonStep(
            title: '1. Apply — but mostly to companies '
                'you have a reason to apply to',
            body:
            '100 generic applications get you '
                '1 interview. 20 targeted applications '
                'get you 3. A targeted application '
                'means: you read the job ad, you '
                'customise your cover letter, you '
                'mention specific things about the '
                'company. The extra 10 minutes per '
                'application is worth it.',
          ),
          LessonStep(
            title: '2. Recruiter screen (15–30 min)',
            body:
            'Phone or video call with HR. '
                'They check that you are who you '
                'say, that you can talk coherently, '
                'and that your salary expectations '
                'are in range. No technical questions '
                'yet.',
          ),
          LessonStep(
            title: '3. Technical screen (45–60 min)',
            body:
            'A live coding task. Often easier '
                'than a real interview — usually '
                'just a few basic problems to check '
                'you can actually code. Solve them '
                'out loud. Explain your thinking.',
          ),
          LessonStep(
            title: '4. Technical interview (1–2 hours)',
            body:
            'Deeper coding. Maybe algorithms, '
                'maybe a real project task, maybe '
                'system design. The hardest round. '
                'For junior roles, usually focused '
                'on: can you write working code?',
          ),
          LessonStep(
            title: '5. Culture fit / team interview',
            body:
            'Meet the team. Usually less '
                'technical. They are checking: '
                'will you be pleasant to work with? '
                'Be honest. Be interested. Be '
                'someone people want to spend 40 '
                'hours a week with.',
          ),
          LessonStep(
            title: '6. Offer',
            body:
            'Congrats. Negotiate. Not '
                'aggressively — but a polite ask '
                'for 5–10% more than the offer is '
                'standard and expected. Nobody '
                'loses an offer for asking.',
          ),
        ],
      ),

      LessonHeading('The interview prep'),
      LessonBullets([
        'Practice coding problems — LeetCode '
            'Easy, 30–50 problems. Junior interviews '
            'rarely go deeper.',
        'Know your projects cold — you will be '
            'asked to explain them. Rehearse the '
            '2-minute demo from Lesson 6.',
        'Learn to talk while you code — the '
            'skill is not just solving the problem, '
            'it is explaining your thinking out '
            'loud. Practice this. It is the '
            'difference between a senior hire and '
            'a rejected candidate.',
        'Prepare questions to ask them — "What '
            'does the tech stack look like?" "What '
            'is a typical day?" "How does code '
            'review work?" Good questions signal '
            'seriousness.',
        'Be honest about what you do not know — '
            '"I have not used that, but I have used '
            'X which is similar, and I learn fast" '
            'beats faking it every time.',
      ]),

      LessonHeading('Contracts and POPIA'),
      LessonParagraph(
        'As an employed developer, your employer '
            'handles most of this. As a freelancer, you '
            'do not — you are the one who has to have '
            'the contract and follow the law.',
      ),
      LessonBullets([
        'Always have a written contract — scope, '
            'payment, timeline, IP ownership, '
            'liability.',
        'Standard IP split — the client owns the '
            'code after final payment. You own the '
            'right to show it in your portfolio.',
        'POPIA — if you handle personal data '
            '(user records, customer information), '
            'you are a "responsible party" under '
            'POPIA. Handle it lawfully. Do not '
            'download production data to your '
            'laptop. Do not use real customer data '
            'in demos. Delete it when the project '
            'ends.',
        'Security — never commit secrets. Never '
            'leave credentials in the code. Never '
            'trust user input. Every year, thousands '
            'of breaches happen because a developer '
            'leaked a database password on GitHub.',
        'Limitation of liability — always in the '
            'contract. "The service provider is not '
            'liable for the business outcome of the '
            'software delivered."',
      ]),

      LessonHeading('The honest career reality'),
      LessonParagraph(
        'Most people who start learning to code do '
            'not build a career from it. The ones who '
            'do are the ones who:',
      ),
      LessonBullets([
        'Picked one language and stayed with it '
            'for at least 12 months.',
        'Built and shipped 3 real projects.',
        'Kept a GitHub profile with a real '
            'history, not one commit called '
            '"final".',
        'Applied to 50+ jobs, not 5, before '
            'getting their first interview.',
        'Took a lower-paying first job to get '
            'real experience, instead of waiting '
            'for the perfect offer.',
        'Kept learning after getting hired. '
            'Programming changes constantly — '
            'frameworks, languages, tools. Anyone '
            'who stops learning is obsolete in '
            '5 years.',
        'Wrote clearly. A developer who can '
            'explain things is worth 2x a developer '
            'who cannot.',
      ]),
      LessonCallout(
        title: 'The realistic timeline',
        body:
        'Month 1–3 — basics. Python or '
            'JavaScript.\n'
            'Month 4–6 — first project.\n'
            'Month 7–9 — 3 portfolio projects.\n'
            'Month 10–12 — job applications, '
            'interviews, first job.\n'
            'Year 2 — junior developer, '
            'R20,000–R40,000/month.\n'
            'Year 3–5 — mid-level developer, '
            'R40,000–R80,000/month.\n'
            'Year 5+ — senior developer, or '
            'freelance, or your own product, '
            'R80,000–R150,000+/month.\n\n'
            'Anyone selling "6 months to R50,000/'
            'month" is selling a course, not a '
            'career.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('Where Kepler Study stands'),
      LessonParagraph(
        'One last thing, and it is the most '
            'important thing in this track.',
      ),
      LessonParagraph(
        'Kepler Study is an education platform. We '
            'teach skills. That is all we do.',
      ),
      LessonBullets([
        'Kepler Study is not your employer. You '
            'are an independent learner or '
            'contractor, not our employee.',
        'Kepler Study is not a party to any '
            'contract you sign with any client or '
            'employer. Your contracts are between '
            'you and them. We are not named in '
            'them and have no obligations under '
            'them.',
        'Kepler Study is not responsible for '
            'any software you build, any bug you '
            'introduce, any data breach you cause, '
            'or any financial outcome — successful '
            'or unsuccessful — of any code you '
            'write.',
        'Kepler Study is not liable for POPIA '
            'fines, contract disputes, copyright '
            'claims, security breaches, or any '
            'legal or financial consequence of '
            'your work as a developer.',
        'Kepler Study does not provide legal, '
            'financial, or career advice. '
            'Everything in this track is '
            'educational illustration. Consult a '
            'qualified South African lawyer '
            'before signing any contract, and an '
            'accountant before registering a '
            'business.',
        'Kepler Study does not endorse '
            'W3Schools, freeCodeCamp, MDN, The '
            'Odin Project, CS50, or any tool or '
            'platform mentioned in this track. '
            'Mentioning them is not a '
            'recommendation.',
        'Kepler Study makes no promise that '
            'you will earn money from coding. '
            'Most people who start do not finish, '
            'and most who finish do not get '
            'hired.',
        'Kepler Study does not represent you, '
            'endorse you, or recommend you to '
            'any employer or client. Every job '
            'or client you land is yours alone.',
        'Any invoice, bank account, business '
            'registration, tax number, and legal '
            'compliance is your own. Kepler Study '
            'does not handle any of that for you.',
      ]),
      LessonCallout(
        title: 'Why this section exists',
        body:
        'Because teaching someone a skill is '
            'one thing. Becoming their partner in '
            'the business they build with that '
            'skill is a different thing — one we '
            'are not set up to be, and one we do '
            'not want to be. You are the '
            'developer. You take the risk. You '
            'take the reward. That is the whole '
            'point.',
        tone: CalloutTone.info,
      ),

      LessonParagraph(
        'If you take money from a client, you '
            'are running a business. Register it, '
            'open a bank account for it, keep '
            'records, file your tax. If you '
            'breach POPIA, you face the fine. If '
            'a client refuses to pay, your '
            'contract is your only remedy. If '
            'your code causes data loss, you face '
            'a lawsuit. Kepler Study will not and '
            'cannot stand in for any of that.',
      ),

      LessonHeading('You finished the track'),
      LessonParagraph(
        'Seven chapters. You started not knowing '
            'what a variable was. You now know: what '
            'coding really is, the honest career path, '
            'the language map, how to choose a '
            'language, the 90-day plan, where to learn '
            'for free (W3Schools, freeCodeCamp, MDN, '
            'The Odin Project, CS50), Python or '
            'JavaScript fundamentals, Git and GitHub, '
            'the three portfolio projects, deployment, '
            'the README that gets you hired, and the '
            'honest business reality.',
      ),
      LessonParagraph(
        'That is more than most people who call '
            'themselves "self-taught developers" '
            'actually know.',
      ),
      LessonParagraph(
        'The next step is not more learning. It is '
            'one project — the smallest thing you '
            'actually want to exist. Build it this '
            'week. Ship it. Post it on GitHub. Then '
            'build the next one. Three projects from '
            'now, you will have a portfolio that '
            'actually gets you interviews.',
      ),
      LessonParagraph(
        'And if you try it and decide coding is not '
            'for you, that is a valid outcome too. You '
            'now understand how software is built, how '
            'the internet actually works, and how to '
            'read code well enough to work with '
            'developers. Those skills make you valuable '
            'in any technical career.',
      ),

      LessonSelfCheck(
        title: 'Final check',
        questions: [
          'What are the two realistic paths to '
              'earning from coding?',
          'Why is getting a job first usually the '
              'right advice?',
          'What are the six phases of tech '
              'hiring?',
          'What are your three POPIA obligations '
              'as a developer?',
          'What is Kepler Study\'s role in any '
              'code you write or contract you sign?',
        ],
      ),
    ],
  );
}