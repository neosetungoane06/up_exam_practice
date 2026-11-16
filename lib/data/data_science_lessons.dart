import '../models/skill_lesson.dart';

/// All lessons for the Data Science & Analytics track.
///
/// Fully static. No AI, no network. Written for a South African
/// audience — every rand amount, every tool and every legal
/// reference is what a student here would actually use.
class DataScienceLessons {
  DataScienceLessons._();

  static const String trackId = 'data_science';

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
  // Lesson 1 — what data science really is
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson1 = SkillLesson(
    id: 'data_1',
    trackId: trackId,
    title: 'What Data Science Really Is',
    subtitle: 'The honest truth, the three roles, and the terms you must know',
    estimatedMinutes: 22,
    blocks: [
      LessonParagraph(
        'Data science has a marketing problem. It has been called '
            '"the sexiest job of the 21st century" so many times that '
            'everyone thinks it means building AI models that write '
            'poetry. It does not.',
      ),
      LessonParagraph(
        'Ninety percent of real data work is this: taking a messy '
            'dataset, cleaning it, and answering a specific business '
            'question with evidence. The tools are just how you do it. '
            'The thinking is what you actually get paid for.',
      ),
      LessonParagraph(
        'This track teaches the honest version. By the end you will '
            'know whether data work is for you, and if it is, '
            'everything you need to get your first real project — '
            'personal, freelance, or employed.',
      ),

      LessonHeading('The one-sentence definition'),
      LessonParagraph(
        'Data science is the practice of turning messy data into '
            'decisions someone can act on.',
      ),
      LessonParagraph(
        'That is it. Every chart, model, dashboard, and report exists '
            'to help someone decide something. If a piece of analysis '
            'does not change a decision, it is decoration, not data '
            'science.',
      ),

      LessonHeading('The three roles — plainly distinguished'),
      LessonParagraph(
        'Most people say "data scientist" to mean three different jobs. '
            'Understanding the difference saves you years of confusion '
            'when applying for work.',
      ),

      LessonHeading('1. Data Analyst'),
      LessonBullets([
        'What they do — pull data, build dashboards, answer '
            '"what happened and why" questions for the business.',
        'Tools — SQL, Excel, Power BI or Tableau, sometimes basic '
            'Python.',
        'Salary in South Africa — R20,000–R40,000/month '
            'junior to mid, R40,000–R70,000/month senior.',
        'Best for beginners. The most realistic entry point.',
        'Not considered "sexy" — which is why it pays less than '
            'data scientist roles, and why there is more demand.',
      ]),

      LessonHeading('2. Data Scientist'),
      LessonBullets([
        'What they do — everything an analyst does, plus '
            'statistical modelling, A/B testing, and machine '
            'learning.',
        'Tools — Python, pandas, scikit-learn, statistics, SQL.',
        'Salary in South Africa — R35,000–R60,000/month '
            'junior to mid, R60,000–R120,000/month senior.',
        'Best for — people with strong maths, willing to learn '
            'statistics and ML properly.',
        'The role everyone wants. Also the role where you have to '
            'keep learning constantly — the field moves every year.',
      ]),

      LessonHeading('3. Data Engineer'),
      LessonBullets([
        'What they do — build the pipelines that move data from '
            'source systems into the warehouses analysts and '
            'scientists use.',
        'Tools — Python, SQL, cloud (AWS/GCP/Azure), Airflow, '
            'dbt, Kafka.',
        'Salary in South Africa — R30,000–R55,000/month junior, '
            'R60,000–R130,000/month senior.',
        'Best for — people who like systems and pipelines more '
            'than charts.',
        'Actually the highest-paid of the three, at senior levels.',
      ]),
      LessonCallout(
        title: 'The honest entry point',
        body:
        'Do not start by calling yourself a "data scientist". '
            'Start as a data analyst. It is the most realistic '
            'entry point, has more open roles, and every skill you '
            'learn as an analyst is required for data scientist '
            'roles anyway. You can move up later — but you will '
            'not get a data scientist job without analyst '
            'experience first.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('The terminology you must know'),
      LessonParagraph(
        'Data people use these words constantly. If you cannot '
            'use them correctly, you will sound like a beginner in '
            'every conversation.',
      ),
      LessonSteps(
        title: 'The 12 words',
        steps: [
          LessonStep(
            title: 'Dataset',
            body:
            'A collection of data. Usually a table (rows = '
                'records, columns = fields). A CSV, an Excel '
                'sheet, a SQL table.',
          ),
          LessonStep(
            title: 'Row / Record',
            body:
            'One entry in the dataset. One customer. One '
                'sale. One visit.',
          ),
          LessonStep(
            title: 'Column / Feature / Variable',
            body:
            'One attribute of each record. Age. Email. '
                'Purchase amount. "Feature" is the machine '
                'learning term for column.',
          ),
          LessonStep(
            title: 'Dataframe',
            body:
            'The pandas name for a dataset in memory. What '
                'Excel calls a "table" or "sheet", pandas calls '
                'a dataframe.',
          ),
          LessonStep(
            title: 'Cleaning / Preprocessing',
            body:
            'The work of fixing data before analysis — '
                'handling missing values, removing duplicates, '
                'fixing data types. 60–80% of the work.',
          ),
          LessonStep(
            title: 'EDA — Exploratory Data Analysis',
            body:
            'The first look at a dataset — summary '
                'statistics, distributions, correlations. What '
                'you do before you draw conclusions.',
          ),
          LessonStep(
            title: 'Correlation',
            body:
            'A statistical relationship where two things '
                'move together. Correlation is not causation — '
                'this distinction is the single most important '
                'idea in data work.',
          ),
          LessonStep(
            title: 'Target / Label',
            body:
            'The thing you are trying to predict. In '
                '"predict which customers will churn", churn '
                'is the target.',
          ),
          LessonStep(
            title: 'Model',
            body:
            'A mathematical formula that has learned from '
                'data. Not a 3D rendering, not an AI chatbot. '
                'A function that maps inputs to a prediction.',
          ),
          LessonStep(
            title: 'Metric',
            body:
            'A number used to measure success. Accuracy. '
                'Revenue. Churn rate. A good analyst always '
                'knows what metric a decision will move.',
          ),
          LessonStep(
            title: 'Dashboard',
            body:
            'A visual summary of key metrics, usually '
                'live-updating. Built in Power BI, Tableau, '
                'Looker, or Metabase.',
          ),
          LessonStep(
            title: 'Insight',
            body:
            'The thing you found that changes what '
                'someone does. Not "sales went up 10%". '
                '"Sales went up 10% because the Tuesday '
                'discount was the biggest driver — extend it '
                'to Wednesday."',
          ),
        ],
      ),

      LessonHeading('What data science is NOT'),
      LessonParagraph(
        'Clear up the misconceptions before you commit months to '
            'learning.',
      ),
      LessonBullets([
        'Not AI. AI is a small subfield of machine learning. '
            'Most data work does not use AI at all.',
        'Not just charts. Anyone can make a chart. The value '
            'is in the interpretation — what does the chart '
            'mean, and what should we do about it.',
        'Not just coding. Knowing pandas does not make you a '
            'data analyst. Understanding the business problem '
            'is worth more than knowing every function.',
        'Not a fast path to R50k/month. The field is real, '
            'but so is the competition. Expect 6–18 months of '
            'serious work before you are hireable.',
        'Not a solo activity. The best analysts spend most of '
            'their time talking to business people, not '
            'staring at data.',
      ]),

      LessonHeading('The honest career reality'),
      LessonParagraph(
        'Data science is one of the few fields where the gap '
            'between "learned Python" and "can do the job" is huge. '
            'Half of the people who take data courses never get a '
            'data job. The half who do have specific things in '
            'common:',
      ),
      LessonBullets([
        'They built 3–5 real projects with real data — not just '
            'completed courses.',
        'They can explain their analysis to a non-technical '
            'person, in plain language.',
        'They understand SQL as well as they understand Python. '
            'Half of data work happens in SQL.',
        'They know how to write a report that a manager can '
            'read in 2 minutes and act on.',
        'They started as analysts, support engineers, or '
            'BI developers — not as "junior data scientists".',
        'They committed 1–2 hours per day for 6–18 months. '
            'Not 20 hours per weekend for a month.',
      ]),

      LessonHeading('The tools you will actually use'),
      LessonBullets([
        'Python — the language. Pandas for data '
            'manipulation. matplotlib / seaborn for '
            'visualisation.',
        'SQL — the language for querying databases. You will '
            'use this every single day.',
        'Jupyter Notebook — where you write and run Python '
            'code interactively. Free.',
        'Excel / Google Sheets — yes, still. Every analyst '
            'uses them. Do not skip.',
        'Power BI or Tableau — dashboards. Power BI is the '
            'South African enterprise standard. Free desktop '
            'version.',
        'Kaggle — the data science community. Free datasets, '
            'free courses, free hosting for your notebooks.',
      ]),

      LessonHeading('The realistic timeline'),
      LessonParagraph(
        'Month 1 — Python basics. Able to write simple '
            'scripts.',
      ),
      LessonParagraph(
        'Month 2–3 — pandas. Loading, cleaning, exploring '
            'real datasets.',
      ),
      LessonParagraph(
        'Month 4 — SQL. Able to query a database with '
            'confidence.',
      ),
      LessonParagraph(
        'Month 5–6 — visualisation and analysis. Able to '
            'answer a business question end-to-end.',
      ),
      LessonParagraph(
        'Month 7–9 — portfolio. 3 real projects, '
            'documented.',
      ),
      LessonParagraph(
        'Month 10–18 — first junior analyst role, or first '
            'paid freelance project.',
      ),
      LessonCallout(
        title: 'The uncomfortable truth',
        body:
        'You will feel like you are not ready at month 6. '
            'You will be right — you will not be. The difference '
            'between people who succeed and people who quit is '
            'what they do between month 6 and month 12. The ones '
            'who keep going — even when it feels slow — are the '
            'ones who make it. There is no shortcut.',
        tone: CalloutTone.warning,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What is the difference between a data analyst and a '
              'data scientist?',
          'What is a dataframe?',
          'What does "EDA" stand for, and what is it for?',
          'What does "correlation is not causation" mean?',
          'What is a realistic entry point into the field?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You know the field. Lesson 2 is Python — the language '
            'everything runs on. Not a full Python course, but the '
            '20% you actually use as a data analyst: variables, '
            'lists, dictionaries, loops, functions, and the '
            'mindset of writing code that other people can read.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 2 — Python fundamentals
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson2 = SkillLesson(
    id: 'data_2',
    trackId: trackId,
    title: 'Python Fundamentals',
    subtitle: 'The 20% of Python you actually use as an analyst',
    estimatedMinutes: 30,
    blocks: [
      LessonParagraph(
        'Python is the language of data work. Not because it is '
            'the fastest, or the most elegant, or the most '
            'powerful. Because it is the easiest to learn, has the '
            'best data libraries, and every tutorial, book, and '
            'Stack Overflow answer in the world is written in it.',
      ),
      LessonParagraph(
        'You do not need to become a software engineer. You need '
            'to know enough Python to load data, clean it, '
            'analyse it, and visualise it. That is a specific, '
            'bounded set of skills — and this lesson covers them.',
      ),

      LessonHeading('Setup — get a working Python environment'),
      LessonSteps(
        title: 'Install the tools',
        steps: [
          LessonStep(
            title: 'Install Python',
            body:
            'Go to python.org/downloads and install the '
                'latest version (3.12 or 3.13). On Windows, '
                'tick "Add Python to PATH" during install — '
                'critical or nothing will work.',
          ),
          LessonStep(
            title: 'Install VS Code',
            body:
            'code.visualstudio.com. Free. The best code '
                'editor for beginners.',
          ),
          LessonStep(
            title: 'Install the Python extension',
            body:
            'Open VS Code. Go to Extensions (Ctrl+Shift+X). '
                'Search "Python". Install the official one from '
                'Microsoft.',
          ),
          LessonStep(
            title: 'Install Jupyter',
            body:
            'Open a terminal and run: pip install '
                'jupyter. This gives you the interactive '
                'notebook environment every analyst uses.',
          ),
          LessonStep(
            title: 'Test it',
            body:
            'In a terminal, type "python --version". It '
                'should print "Python 3.x.x". If it does not, '
                'reinstall and check the PATH tick.',
          ),
        ],
      ),

      LessonHeading('The five things Python does'),
      LessonParagraph(
        'Every Python program you will ever write — from a 5-line '
            'script to a 5,000-line application — is built from '
            'these five building blocks:',
      ),
      LessonBullets([
        'Variables — names that hold values.',
        'Data types — numbers, strings, lists, dictionaries.',
        'Control flow — if statements and loops.',
        'Functions — reusable pieces of code.',
        'Libraries — other people\'s code you import and use.',
      ]),

      LessonHeading('Variables and data types'),
      LessonCodeBlock(
        caption: 'The types you actually use',
        content:
        '# Numbers\n'
            'age = 25\n'
            'price = 399.99\n'
            'is_active = True\n'
            '\n'
            '# Strings (text)\n'
            'name = "Neo Setungoane"\n'
            'email = "neo@example.com"\n'
            '\n'
            '# Lists (ordered, can be changed)\n'
            'scores = [85, 92, 78, 95, 88]\n'
            'names = ["Thabo", "Lerato", "Naledi"]\n'
            '\n'
            '# Dictionaries (key-value pairs)\n'
            'customer = {\n'
            '    "name": "Thabo",\n'
            '    "email": "thabo@example.com",\n'
            '    "total_spent": 1250.00,\n'
            '    "is_active": True\n'
            '}\n'
            '\n'
            '# Access values\n'
            'print(customer["name"])       # Thabo\n'
            'print(scores[0])              # 85\n'
            'print(scores[-1])             # 88 (last item)\n'
            'print(len(scores))            # 5',
      ),

      LessonHeading('Control flow — if and for'),
      LessonCodeBlock(
        caption: 'The two statements you will use constantly',
        content:
        '# IF — make a decision\n'
            'score = 85\n'
            'if score >= 80:\n'
            '    print("Distinction")\n'
            'elif score >= 60:\n'
            '    print("Pass")\n'
            'else:\n'
            '    print("Fail")\n'
            '\n'
            '# FOR — loop over data\n'
            'scores = [85, 92, 78, 95, 88]\n'
            'for score in scores:\n'
            '    print(score)\n'
            '\n'
            '# FOR with index\n'
            'for i, score in enumerate(scores):\n'
            '    print(f"Score {i+1}: {score}")\n'
            '\n'
            '# FOR over a dictionary\n'
            'customer = {"name": "Thabo", "age": 32}\n'
            'for key, value in customer.items():\n'
            '    print(f"{key}: {value}")',
      ),
      LessonCallout(
        title: 'Indentation matters',
        body:
        'Python uses indentation (4 spaces) to group code. '
            'Not curly braces like most languages. If your code '
            'throws "IndentationError", it means you have mixed '
            'tabs and spaces, or the indentation levels do not '
            'match. This is the number one beginner error — you '
            'will hit it in the first hour.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('Functions — reusable code'),
      LessonCodeBlock(
        caption: 'Write a function, use it anywhere',
        content:
        '# Define a function\n'
            'def calculate_average(scores):\n'
            '    """Calculate the average of a list of numbers."""\n'
            '    if not scores:\n'
            '        return 0\n'
            '    return sum(scores) / len(scores)\n'
            '\n'
            '# Use it\n'
            'test_scores = [85, 92, 78, 95, 88]\n'
            'average = calculate_average(test_scores)\n'
            'print(f"Average: {average:.1f}")\n'
            '\n'
            '# Functions can return multiple values\n'
            'def summarise(scores):\n'
            '    return min(scores), max(scores), calculate_average(scores)\n'
            '\n'
            'lowest, highest, avg = summarise(test_scores)\n'
            'print(f"Lowest: {lowest}, Highest: {highest}, Avg: {avg:.1f}")',
      ),

      LessonHeading('Libraries — the whole point of Python'),
      LessonParagraph(
        'Python has thousands of libraries — code other people '
            'wrote that you can use. For data work, you need five.',
      ),
      LessonCodeBlock(
        caption: 'Install and import the essential five',
        content:
        '# Install all of them at once (in a terminal):\n'
            '# pip install pandas matplotlib seaborn numpy jupyter\n'
            '\n'
            '# Import them in Python:\n'
            'import pandas as pd\n'
            'import numpy as np\n'
            'import matplotlib.pyplot as plt\n'
            'import seaborn as sns\n'
            '\n'
            '# Now you can use them:\n'
            'data = pd.read_csv("sales.csv")    # pandas\n'
            'average = np.mean([85, 92, 78])    # numpy\n'
            'plt.plot([1, 2, 3], [1, 4, 9])     # matplotlib\n'
            'sns.barplot(x=["A", "B"], y=[10, 20])  # seaborn',
      ),

      LessonHeading('Practice — do these exercises'),
      LessonParagraph(
        'Read the code above, then open a Python file or Jupyter '
            'notebook and try these five exercises. Do not read '
            'the answers until you have tried.',
      ),
      LessonSteps(
        title: 'Five exercises',
        steps: [
          LessonStep(
            title: 'Exercise 1 — Variables',
            body:
            'Create three variables: your name, your age, '
                'and your city. Print a sentence using all '
                'three with f-string formatting.',
          ),
          LessonStep(
            title: 'Exercise 2 — Lists',
            body:
            'Create a list of 5 prices. Print the total, '
                'the average, and the most expensive price. '
                'Hint: sum(), len(), max().',
          ),
          LessonStep(
            title: 'Exercise 3 — Dictionaries',
            body:
            'Create a dictionary with 3 customers — each '
                'name is a key, each email is a value. Loop '
                'over the dictionary and print "Name: email" '
                'for each.',
          ),
          LessonStep(
            title: 'Exercise 4 — If statements',
            body:
            'Write a program that takes a customer total '
                '(e.g. 750) and prints the discount they get: '
                '10% if over R500, 20% if over R1000, 0% '
                'otherwise.',
          ),
          LessonStep(
            title: 'Exercise 5 — Functions',
            body:
            'Write a function called "calculate_discount" '
                'that takes a total and returns the discount '
                'amount. Then call it for three different '
                'totals and print the results.',
          ),
        ],
      ),

      LessonHeading('The 15 functions you actually use'),
      LessonBullets([
        'print() — show a value.',
        'len() — length of a list/string.',
        'sum(), min(), max() — on numbers.',
        'sorted() — sort a list.',
        'round() — round a number.',
        'range() — generate a sequence.',
        'enumerate() — loop with index.',
        'zip() — pair two lists.',
        'str() — convert to text.',
        'int(), float() — convert to numbers.',
        'type() — check what type something is.',
        'isinstance() — check type in a condition.',
        'abs() — absolute value.',
        'f-strings — format text.',
      ]),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What does an f-string do, and why is it useful?',
          'What is the difference between a list and a '
              'dictionary?',
          'How do you write an if/elif/else in Python?',
          'Why does indentation matter?',
          'What are the five libraries every data analyst '
              'uses?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You can write Python. Lesson 3 is where the real work '
            'begins — pandas. Loading data from CSV, inspecting '
            'it, cleaning it, transforming it, and answering your '
            'first real question with a real dataset.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 3 — pandas and data cleaning
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson3 = SkillLesson(
    id: 'data_3',
    trackId: trackId,
    title: 'Pandas and Data Cleaning',
    subtitle: 'Where 80% of the actual work happens',
    estimatedMinutes: 32,
    blocks: [
      LessonParagraph(
        'Pandas is the library every data analyst uses. It does '
            'one thing: gives you a powerful, flexible way to '
            'manipulate tables in Python. Every real-world data '
            'task involves pandas.',
      ),
      LessonParagraph(
        'The dirty secret of the field: 80% of a data analyst\'s '
            'time is spent cleaning data. Loading it, checking '
            'what is wrong with it, fixing the issues, and then '
            'finally answering the question. Most courses skip '
            'this part. This lesson does not.',
      ),

      LessonHeading('Your first dataframe'),
      LessonParagraph(
        'In any Jupyter notebook or Python file, start with the '
            'same two lines. You will type them thousands of '
            'times.',
      ),
      LessonCodeBlock(
        caption: 'Load a CSV into a dataframe',
        content:
        'import pandas as pd\n'
            '\n'
            '# Load a CSV file into a dataframe called "df"\n'
            'df = pd.read_csv("sales.csv")\n'
            '\n'
            '# Look at the first 5 rows\n'
            'print(df.head())\n'
            '\n'
            '# How many rows and columns?\n'
            'print(df.shape)         # (1000, 5) = 1000 rows, 5 columns\n'
            '\n'
            '# What are the column names?\n'
            'print(df.columns.tolist())',
      ),
      LessonCallout(
        title: 'You need a dataset',
        body:
        'If you do not have a CSV handy, download a free one '
            'from Kaggle — kaggle.com/datasets. Search "sales", '
            '"customers", or "ecommerce". Pick one that is under '
            '10,000 rows and has 4–8 columns. That is your '
            'practice dataset.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('The first five things to always check'),
      LessonParagraph(
        'Before you analyse anything, you must understand what '
            'you are looking at. These five commands take 30 '
            'seconds and save hours of debugging later.',
      ),
      LessonCodeBlock(
        caption: 'The five essential checks',
        content:
        '# 1. What do the first few rows look like?\n'
            'df.head()\n'
            '\n'
            '# 2. What are the column types and missing values?\n'
            'df.info()\n'
            '\n'
            '# 3. What are the summary statistics for numeric columns?\n'
            'df.describe()\n'
            '\n'
            '# 4. Are there missing values?\n'
            'df.isnull().sum()\n'
            '\n'
            '# 5. Are there duplicate rows?\n'
            'df.duplicated().sum()',
      ),

      LessonHeading('The four data problems you will always find'),
      LessonParagraph(
        'Every messy dataset has one or more of these problems. '
            'Learning to fix them is the whole job.',
      ),

      LessonHeading('1. Missing values'),
      LessonCodeBlock(
        caption: 'Handling NaN (not-a-number)',
        content:
        '# See which columns have missing values\n'
            'df.isnull().sum()\n'
            '\n'
            '# See missing values per column as a percentage\n'
            '(df.isnull().sum() / len(df) * 100).round(2)\n'
            '\n'
            '# Option 1: drop rows with any missing value\n'
            'df_clean = df.dropna()\n'
            '\n'
            '# Option 2: fill missing numbers with the column mean\n'
            'df["price"] = df["price"].fillna(df["price"].mean())\n'
            '\n'
            '# Option 3: fill missing text with a placeholder\n'
            'df["notes"] = df["notes"].fillna("No notes")',
      ),
      LessonCallout(
        title: 'Dropping vs filling',
        body:
        'Dropping is easy but loses data. Filling keeps the '
            'data but introduces assumptions. The rule: if less '
            'than 5% of a column is missing, drop the missing '
            'rows. If more than 20% is missing, the column might '
            'be unusable. Between 5% and 20%, fill carefully — '
            'and always document what you filled with.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('2. Duplicates'),
      LessonCodeBlock(
        caption: 'Finding and removing duplicates',
        content:
        '# Count duplicates\n'
            'df.duplicated().sum()\n'
            '\n'
            '# See the duplicate rows\n'
            'df[df.duplicated(keep=False)]\n'
            '\n'
            '# Remove duplicates (keeps first occurrence)\n'
            'df = df.drop_duplicates()\n'
            '\n'
            '# Remove duplicates based on specific columns only\n'
            'df = df.drop_duplicates(subset=["email"])',
      ),

      LessonHeading('3. Wrong data types'),
      LessonCodeBlock(
        caption: 'Fixing data types',
        content:
        '# Check current types\n'
            'df.dtypes\n'
            '\n'
            '# Convert to proper types\n'
            'df["date"] = pd.to_datetime(df["date"])\n'
            'df["price"] = pd.to_numeric(df["price"], errors="coerce")\n'
            'df["customer_id"] = df["customer_id"].astype(str)\n'
            '\n'
            '# If to_numeric created NaN, those were invalid values\n'
            '# Inspect them:\n'
            'df[df["price"].isna()]',
      ),

      LessonHeading('4. Inconsistent text'),
      LessonCodeBlock(
        caption: 'Cleaning text columns',
        content:
        '# See unique values\n'
            'df["city"].unique()\n'
            '\n'
            '# Common issues:\n'
            '# "johannesburg", "Johannesburg", "JOHANNESBURG"\n'
            '# "  Cape Town  " (extra spaces)\n'
            '\n'
            '# Fix: strip whitespace, then standardise case\n'
            'df["city"] = df["city"].str.strip()\n'
            'df["city"] = df["city"].str.title()\n'
            '\n'
            '# Or map variants to a standard value\n'
            'city_map = {\n'
            '    "jhb": "Johannesburg",\n'
            '    "joburg": "Johannesburg",\n'
            '    "cpt": "Cape Town",\n'
            '    "cape town": "Cape Town",\n'
            '}\n'
            'df["city"] = df["city"].str.lower().replace(city_map)',
      ),

      LessonHeading('The 10 pandas operations you will use constantly'),
      LessonSteps(
        title: 'The essential pandas toolkit',
        steps: [
          LessonStep(
            title: 'Select a column',
            body: 'df["price"] — returns a Series (like a list).',
          ),
          LessonStep(
            title: 'Select multiple columns',
            body: 'df[["name", "price"]] — note the double brackets.',
          ),
          LessonStep(
            title: 'Filter rows by condition',
            body:
            'df[df["price"] > 500] — the condition goes '
                'inside the brackets.',
          ),
          LessonStep(
            title: 'Multiple filter conditions',
            body:
            'df[(df["price"] > 500) & (df["city"] == "Cape Town")] — '
                'use & for AND, | for OR. Wrap each condition '
                'in parentheses.',
          ),
          LessonStep(
            title: 'Sort by a column',
            body:
            'df.sort_values("price", ascending=False) — '
                'ascending=False for highest first.',
          ),
          LessonStep(
            title: 'Group and summarise',
            body:
            'df.groupby("city")["price"].mean() — average '
                'price per city. The single most-used pandas '
                'operation.',
          ),
          LessonStep(
            title: 'Count per group',
            body:
            'df.groupby("city")["price"].count() — how '
                'many records per city.',
          ),
          LessonStep(
            title: 'Create a new column',
            body:
            'df["discounted"] = df["price"] * 0.9 — '
                'creates a new column from a calculation.',
          ),
          LessonStep(
            title: 'Apply a function to a column',
            body:
            'df["name_upper"] = df["name"].str.upper() — '
                'string methods are available on text columns.',
          ),
          LessonStep(
            title: 'Save results back to CSV',
            body:
            'df.to_csv("cleaned.csv", index=False) — '
                'index=False stops pandas adding a row number '
                'column.',
          ),
        ],
      ),

      LessonHeading('Practice — clean a real dataset'),
      LessonParagraph(
        'Download any dataset from Kaggle. Run the following in '
            'a Jupyter notebook and write down what you find at '
            'each step.',
      ),
      LessonSteps(
        title: 'The cleaning workflow',
        steps: [
          LessonStep(
            title: 'Load and inspect',
            body:
            'pd.read_csv, then df.head(), df.info(), '
                'df.describe(). Write down: how many rows, '
                'how many columns, what type is each column.',
          ),
          LessonStep(
            title: 'Check missing values',
            body:
            'df.isnull().sum(). Write down which columns '
                'have missing values and how many.',
          ),
          LessonStep(
            title: 'Check duplicates',
            body:
            'df.duplicated().sum(). Drop them if any '
                'exist.',
          ),
          LessonStep(
            title: 'Fix data types',
            body:
            'Are numbers stored as text? Are dates '
                'stored as strings? Fix them.',
          ),
          LessonStep(
            title: 'Clean text columns',
            body:
            'Strip whitespace, standardise case. Check '
                'for "jhb" vs "Johannesburg" style variants.',
          ),
          LessonStep(
            title: 'Answer one question',
            body:
            'Pick one business question — "which city '
                'has the highest average sale?" — and answer '
                'it with a groupby.',
          ),
          LessonStep(
            title: 'Save your cleaned data',
            body:
            'df.to_csv("cleaned_sales.csv", index=False). '
                'Now you have a dataset you can build on.',
          ),
        ],
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What does df.info() show you?',
          'How do you check for missing values?',
          'When should you drop missing values vs fill them?',
          'How do you filter rows where price > 500?',
          'How do you group by city and calculate the average '
              'price?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You can clean data. Lesson 4 is SQL — the other half '
            'of every data job. Most companies store their data '
            'in databases, and pulling it out is a different '
            'skill from analysing it in pandas. Six commands '
            'cover 80% of the work.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 4 — SQL
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson4 = SkillLesson(
    id: 'data_4',
    trackId: trackId,
    title: 'SQL',
    subtitle: 'The six commands that cover 80% of the job',
    estimatedMinutes: 26,
    blocks: [
      LessonParagraph(
        'Every company stores its data in a database. Every '
            'database is queried with SQL. Every data job '
            'interview tests SQL. It is the single most important '
            'technical skill for getting into the field.',
      ),
      LessonParagraph(
        'You do not need to become a database administrator. You '
            'need six commands. That is it. Everything else is '
            'combinations and refinements of those six.',
      ),

      LessonHeading('What SQL is'),
      LessonParagraph(
        'SQL (Structured Query Language) is the language for '
            'asking questions of a database. You write a query, '
            'the database responds with a table of results.',
      ),
      LessonParagraph(
        'You do not need to install a database to practice. Use '
            'SQLZoo, Mode Analytics, or Kaggle — all free and '
            'browser-based. Or install SQLite (a tiny local '
            'database) with a tool like DB Browser for SQLite.',
      ),

      LessonHeading('The six commands'),
      LessonParagraph(
        'Every SQL query you will ever write is a combination of '
            'these six. Learn them in order.',
      ),

      LessonHeading('1. SELECT — pick columns'),
      LessonCodeBlock(
        caption: 'SELECT — basic',
        content:
        '-- Get everything from a table\n'
            'SELECT * FROM customers;\n'
            '\n'
            '-- Get specific columns\n'
            'SELECT first_name, last_name, email\n'
            'FROM customers;\n'
            '\n'
            '-- Rename a column in the output\n'
            'SELECT first_name AS name, email AS contact\n'
            'FROM customers;\n'
            '\n'
            '-- Calculate a new column\n'
            'SELECT\n'
            '  product_name,\n'
            '  price,\n'
            '  price * 0.9 AS discounted_price\n'
            'FROM products;',
      ),

      LessonHeading('2. WHERE — filter rows'),
      LessonCodeBlock(
        caption: 'WHERE — basic',
        content:
        '-- Equal to\n'
            'SELECT * FROM customers WHERE city = \'Cape Town\';\n'
            '\n'
            '-- Greater than\n'
            'SELECT * FROM sales WHERE amount > 500;\n'
            '\n'
            '-- Not equal to\n'
            'SELECT * FROM customers WHERE status != \'inactive\';\n'
            '\n'
            '-- Multiple conditions with AND\n'
            'SELECT * FROM sales\n'
            'WHERE amount > 500 AND city = \'Johannesburg\';\n'
            '\n'
            '-- Multiple conditions with OR\n'
            'SELECT * FROM sales\n'
            'WHERE city = \'Cape Town\' OR city = \'Durban\';\n'
            '\n'
            '-- LIKE — partial text match\n'
            'SELECT * FROM customers WHERE email LIKE \'%@gmail.com\';\n'
            '\n'
            '-- IN — multiple specific values\n'
            'SELECT * FROM sales\n'
            'WHERE city IN (\'Cape Town\', \'Durban\', \'Pretoria\');\n'
            '\n'
            '-- IS NULL — find missing values\n'
            'SELECT * FROM customers WHERE email IS NULL;',
      ),

      LessonHeading('3. ORDER BY — sort the results'),
      LessonCodeBlock(
        caption: 'ORDER BY — basic',
        content:
        '-- Ascending (default)\n'
            'SELECT * FROM sales ORDER BY amount;\n'
            '\n'
            '-- Descending\n'
            'SELECT * FROM sales ORDER BY amount DESC;\n'
            '\n'
            '-- Multiple columns\n'
            'SELECT * FROM sales\n'
            'ORDER BY city ASC, amount DESC;',
      ),

      LessonHeading('4. Aggregate functions — summarise the data'),
      LessonCodeBlock(
        caption: 'The five aggregate functions',
        content:
        '-- COUNT — how many records\n'
            'SELECT COUNT(*) FROM customers;\n'
            '\n'
            '-- SUM — total\n'
            'SELECT SUM(amount) FROM sales;\n'
            '\n'
            '-- AVG — average\n'
            'SELECT AVG(amount) FROM sales;\n'
            '\n'
            '-- MIN and MAX\n'
            'SELECT MIN(amount), MAX(amount) FROM sales;\n'
            '\n'
            '-- Multiple aggregates in one query\n'
            'SELECT\n'
            '  COUNT(*) AS total_orders,\n'
            '  SUM(amount) AS total_revenue,\n'
            '  AVG(amount) AS avg_order_value,\n'
            '  MIN(amount) AS smallest_order,\n'
            '  MAX(amount) AS biggest_order\n'
            'FROM sales;',
      ),

      LessonHeading('5. GROUP BY — summarise by category'),
      LessonParagraph(
        'This is the most useful command in all of SQL. It '
            'answers questions like "what is the average sale '
            'per city?" — which is what most business questions '
            'actually are.',
      ),
      LessonCodeBlock(
        caption: 'GROUP BY — the workhorse',
        content:
        '-- Count of customers per city\n'
            'SELECT city, COUNT(*) AS customer_count\n'
            'FROM customers\n'
            'GROUP BY city;\n'
            '\n'
            '-- Total revenue per city\n'
            'SELECT city, SUM(amount) AS total_revenue\n'
            'FROM sales\n'
            'GROUP BY city\n'
            'ORDER BY total_revenue DESC;\n'
            '\n'
            '-- Average order value per product\n'
            'SELECT product_name, AVG(amount) AS avg_sale\n'
            'FROM sales\n'
            'GROUP BY product_name;\n'
            '\n'
            '-- Filter AFTER grouping with HAVING\n'
            'SELECT city, SUM(amount) AS total_revenue\n'
            'FROM sales\n'
            'GROUP BY city\n'
            'HAVING SUM(amount) > 10000\n'
            'ORDER BY total_revenue DESC;',
      ),
      LessonCallout(
        title: 'HAVING vs WHERE',
        body:
        'WHERE filters rows before grouping. HAVING '
            'filters groups after grouping. If you want '
            '"only sales over R500", that is WHERE. If you '
            'want "only cities with total sales over R10,000", '
            'that is HAVING. Beginners mix these up '
            'constantly. Remember: WHERE filters individual '
            'records, HAVING filters summary results.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('6. JOIN — combine tables'),
      LessonParagraph(
        'Real data is almost never in one table. Customers in '
            'one table, orders in another, products in a third. '
            'JOIN combines them.',
      ),
      LessonCodeBlock(
        caption: 'JOIN — the four types',
        content:
        '-- INNER JOIN — only rows that exist in BOTH tables\n'
            'SELECT customers.name, orders.amount\n'
            'FROM customers\n'
            'INNER JOIN orders ON customers.id = orders.customer_id;\n'
            '\n'
            '-- LEFT JOIN — all rows from left table, plus matches\n'
            '-- (rows with no match get NULL for the right table)\n'
            'SELECT customers.name, orders.amount\n'
            'FROM customers\n'
            'LEFT JOIN orders ON customers.id = orders.customer_id;\n'
            '\n'
            '-- Use LEFT JOIN to find customers with NO orders\n'
            'SELECT customers.name\n'
            'FROM customers\n'
            'LEFT JOIN orders ON customers.id = orders.customer_id\n'
            'WHERE orders.id IS NULL;\n'
            '\n'
            '-- Multiple JOINs\n'
            'SELECT\n'
            '  customers.name,\n'
            '  orders.order_date,\n'
            '  products.product_name,\n'
            '  orders.amount\n'
            'FROM customers\n'
            'INNER JOIN orders ON customers.id = orders.customer_id\n'
            'INNER JOIN products ON orders.product_id = products.id;',
      ),

      LessonHeading('A real query end-to-end'),
      LessonParagraph(
        'Here is what a real business question looks like in '
            'SQL. The question: "Which are our top 5 cities by '
            'revenue, considering only customers who have spent '
            'more than R2,000 in total?"',
      ),
      LessonCodeBlock(
        caption: 'Real business query',
        content:
        'SELECT\n'
            '  c.city,\n'
            '  COUNT(DISTINCT c.id) AS customer_count,\n'
            '  SUM(o.amount) AS total_revenue,\n'
            '  AVG(o.amount) AS avg_order_value\n'
            'FROM customers c\n'
            'INNER JOIN orders o ON c.id = o.customer_id\n'
            'WHERE o.status = \'completed\'\n'
            'GROUP BY c.city\n'
            'HAVING SUM(o.amount) > 2000\n'
            'ORDER BY total_revenue DESC\n'
            'LIMIT 5;',
      ),
      LessonParagraph('Read it line by line:'),
      LessonBullets([
        'SELECT — what columns to output.',
        'FROM customers c — from the customers table, '
            'aliased as "c".',
        'INNER JOIN orders o — join to the orders table.',
        'ON c.id = o.customer_id — match on customer id.',
        'WHERE o.status = \'completed\' — only completed '
            'orders.',
        'GROUP BY c.city — one row per city.',
        'HAVING SUM(o.amount) > 2000 — only cities with '
            'over R2,000 total.',
        'ORDER BY total_revenue DESC — highest first.',
        'LIMIT 5 — top 5 only.',
      ]),

      LessonHeading('How to practice SQL for free'),
      LessonBullets([
        'SQLZoo (sqlzoo.net) — the classic free '
            'interactive tutorial. Start here.',
        'Mode SQL Tutorial (mode.com/sql-tutorial) — '
            'cleaner interface, good examples.',
        'Kaggle SQL courses — good if you already use '
            'Kaggle.',
        'LeetCode SQL — harder problems once you have the '
            'basics.',
        'SQLite + DB Browser — download a free SQLite '
            'database tool, install, and practice on real '
            'data locally.',
      ]),
      LessonCallout(
        title: 'The 3-hour starting rule',
        body:
        'Do not spend weeks "learning SQL". Spend 3 '
            'hours on SQLZoo going through the first 5 '
            'chapters. Then start using it on real data. '
            'SQL is best learned by writing queries, '
            'making mistakes, and reading the errors. '
            'Theoretical SQL study is mostly wasted time.',
        tone: CalloutTone.tip,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'What does SELECT do? What does WHERE do?',
          'What is the difference between WHERE and HAVING?',
          'How do you count records per city?',
          'What is an INNER JOIN vs a LEFT JOIN?',
          'How do you find customers with no orders?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You can query data. Lesson 5 is where you turn '
            'numbers into insight — visualisation with matplotlib '
            'and seaborn, the five charts that answer 80% of '
            'business questions, and how to write an analysis '
            'that actually changes a decision.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 5 — visualisation and analysis
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson5 = SkillLesson(
    id: 'data_5',
    trackId: trackId,
    title: 'Visualisation and Analysis',
    subtitle: 'Turning numbers into decisions',
    estimatedMinutes: 28,
    blocks: [
      LessonParagraph(
        'You can clean data and query databases. Now the part '
            'that gets you paid: turning that data into an '
            'insight someone can act on.',
      ),
      LessonParagraph(
        'A chart is not an analysis. An analysis is a claim, '
            'backed by evidence, that leads to a decision. Charts '
            'are how you make that evidence visible. This lesson '
            'is about both.',
      ),

      LessonHeading('The five charts that answer 80% of questions'),
      LessonParagraph(
        'You do not need to know 20 chart types. Five charts '
            'cover almost every business question. Learn them '
            'and you can answer anything.',
      ),

      LessonHeading('1. Bar chart — compare categories'),
      LessonParagraph(
        'Best for: comparing values across categories. '
            '"Revenue by city." "Sales by product." "Customers '
            'by age group."',
      ),
      LessonCodeBlock(
        caption: 'Bar chart in matplotlib',
        content:
        'import matplotlib.pyplot as plt\n'
            '\n'
            'cities = ["Cape Town", "Johannesburg", "Durban", "Pretoria"]\n'
            'revenue = [45000, 62000, 28000, 35000]\n'
            '\n'
            'plt.figure(figsize=(10, 6))\n'
            'plt.bar(cities, revenue, color="#2563EB")\n'
            'plt.title("Revenue by City", fontsize=16, fontweight="bold")\n'
            'plt.xlabel("City")\n'
            'plt.ylabel("Revenue (R)")\n'
            'plt.xticks(rotation=45)\n'
            'plt.tight_layout()\n'
            'plt.show()',
      ),

      LessonHeading('2. Line chart — show change over time'),
      LessonParagraph(
        'Best for: trends. "Revenue over the last 12 months." '
            '"Daily visitors." "Monthly growth."',
      ),
      LessonCodeBlock(
        caption: 'Line chart in matplotlib',
        content:
        'import matplotlib.pyplot as plt\n'
            '\n'
            'months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]\n'
            'revenue = [28000, 32000, 29000, 41000, 48000, 52000]\n'
            '\n'
            'plt.figure(figsize=(10, 6))\n'
            'plt.plot(months, revenue, marker="o", linewidth=2, color="#16A34A")\n'
            'plt.title("Revenue Trend — H1 2025", fontsize=16, fontweight="bold")\n'
            'plt.xlabel("Month")\n'
            'plt.ylabel("Revenue (R)")\n'
            'plt.grid(True, alpha=0.3)\n'
            'plt.tight_layout()\n'
            'plt.show()',
      ),

      LessonHeading('3. Histogram — show the distribution'),
      LessonParagraph(
        'Best for: understanding how values are spread. '
            '"How are order sizes distributed?" "What is the '
            'range of customer ages?"',
      ),
      LessonCodeBlock(
        caption: 'Histogram in matplotlib',
        content:
        'import matplotlib.pyplot as plt\n'
            'import numpy as np\n'
            '\n'
            '# Simulated order amounts\n'
            'orders = np.random.normal(500, 150, 1000)\n'
            '\n'
            'plt.figure(figsize=(10, 6))\n'
            'plt.hist(orders, bins=30, color="#7C3AED", edgecolor="white")\n'
            'plt.title("Distribution of Order Amounts", fontsize=16, fontweight="bold")\n'
            'plt.xlabel("Order Amount (R)")\n'
            'plt.ylabel("Number of Orders")\n'
            'plt.tight_layout()\n'
            'plt.show()',
      ),

      LessonHeading('4. Scatter plot — show a relationship'),
      LessonParagraph(
        'Best for: seeing whether two things are related. '
            '"Does spending more on ads lead to more revenue?"',
      ),
      LessonCodeBlock(
        caption: 'Scatter plot in matplotlib',
        content:
        'import matplotlib.pyplot as plt\n'
            'import numpy as np\n'
            '\n'
            'ad_spend = np.array([10000, 15000, 20000, 25000, 30000, 35000])\n'
            'revenue = np.array([42000, 48000, 56000, 71000, 68000, 89000])\n'
            '\n'
            'plt.figure(figsize=(10, 6))\n'
            'plt.scatter(ad_spend, revenue, s=100, color="#DC2626", alpha=0.7)\n'
            'plt.title("Ad Spend vs Revenue", fontsize=16, fontweight="bold")\n'
            'plt.xlabel("Ad Spend (R)")\n'
            'plt.ylabel("Revenue (R)")\n'
            'plt.grid(True, alpha=0.3)\n'
            'plt.tight_layout()\n'
            'plt.show()',
      ),

      LessonHeading('5. Box plot — compare distributions'),
      LessonParagraph(
        'Best for: comparing spread across groups. '
            '"What is the range of sales per city?" Shows median, '
            'quartiles, and outliers in one chart.',
      ),
      LessonCodeBlock(
        caption: 'Box plot in seaborn',
        content:
        'import seaborn as sns\n'
            'import matplotlib.pyplot as plt\n'
            'import pandas as pd\n'
            '\n'
            '# Long-form data: one row per sale\n'
            'df = pd.DataFrame({\n'
            '    "city": ["Cape Town"] * 50 + ["Johannesburg"] * 50,\n'
            '    "amount": list(range(200, 700, 10)) + list(range(300, 800, 10)),\n'
            '})\n'
            '\n'
            'plt.figure(figsize=(10, 6))\n'
            'sns.boxplot(data=df, x="city", y="amount")\n'
            'plt.title("Order Amounts by City", fontsize=16, fontweight="bold")\n'
            'plt.xlabel("City")\n'
            'plt.ylabel("Order Amount (R)")\n'
            'plt.tight_layout()\n'
            'plt.show()',
      ),

      LessonHeading('The difference between a chart and an analysis'),
      LessonParagraph(
        'A chart shows data. An analysis answers a question. '
            'The same bar chart can be either — it depends '
            'entirely on what you write next to it.',
      ),
      LessonCodeBlock(
        caption: 'Weak analysis vs strong analysis',
        content:
        'WEAK:\n'
            '  "This chart shows revenue by city."\n'
            '  (Just describes the chart. No decision.)\n'
            '\n'
            'STRONG:\n'
            '  "Cape Town generates 32% of all revenue but only\n'
            '   8% of customers. The average Cape Town order is\n'
            '   3.4x the national average. This suggests we have\n'
            '   an untapped premium segment there — recommend\n'
            '   doubling ad spend in Cape Town next quarter and\n'
            '   tracking whether average order value holds."\n'
            '  (Describes the chart. Interprets it. Recommends\n'
            '   an action. Specifies what to measure next.)',
      ),
      LessonCallout(
        title: 'The three questions',
        body:
        'Every chart you present must answer: '
            '(1) What does this show? (2) So what — why does '
            'it matter? (3) Now what — what should we do? If '
            'your analysis does not answer all three, it is '
            'not an analysis. It is a screenshot.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('How to write up an analysis'),
      LessonParagraph(
        'The format that gets read by managers and clients — '
            'the one they actually take action on:',
      ),
      LessonCodeBlock(
        caption: 'The 5-part analysis report',
        content:
        '1. THE QUESTION\n'
            '   What business question did you answer? One\n'
            '   sentence. "We needed to understand why Q3\n'
            '   revenue dropped 12% vs Q2."\n'
            '\n'
            '2. THE ANSWER\n'
            '   The headline finding. One sentence. "The\n'
            '   drop is entirely from the Gauteng region,\n'
            '   not from the product line itself."\n'
            '\n'
            '3. THE EVIDENCE\n'
            '   2-3 charts or tables that support the answer.\n'
            '   Each chart captioned with one sentence explaining\n'
            '   what it shows.\n'
            '\n'
            '4. THE INTERPRETATION\n'
            '   What you think is causing the pattern. Not\n'
            '   just correlation — your best explanation.\n'
            '\n'
            '5. THE RECOMMENDATION\n'
            '   3 specific actions, ranked by impact, with\n'
            '   a way to measure each. "1. Re-run the Q2\n'
            '   campaign in Gauteng with R30k budget. Measure:\n'
            '   weekly revenue in Gauteng."',
      ),

      LessonHeading('The full analysis — end to end'),
      LessonParagraph(
        'Here is what a complete analysis looks like in Python. '
            'This is the shape every analysis follows.',
      ),
      LessonCodeBlock(
        caption: 'A real analysis end-to-end',
        content:
        'import pandas as pd\n'
            'import matplotlib.pyplot as plt\n'
            '\n'
            '# 1. Load\n'
            'df = pd.read_csv("sales.csv")\n'
            '\n'
            '# 2. Clean\n'
            'df = df.dropna(subset=["amount", "city"])\n'
            'df["amount"] = pd.to_numeric(df["amount"], errors="coerce")\n'
            'df = df[df["amount"] > 0]\n'
            '\n'
            '# 3. Explore\n'
            'print(df["amount"].describe())\n'
            'print(df.groupby("city")["amount"].agg(["count", "mean", "sum"]))\n'
            '\n'
            '# 4. Answer the question\n'
            'city_summary = df.groupby("city").agg(\n'
            '    total_revenue=("amount", "sum"),\n'
            '    order_count=("amount", "count"),\n'
            '    avg_order=("amount", "mean"),\n'
            ').sort_values("total_revenue", ascending=False)\n'
            '\n'
            'print(city_summary)\n'
            '\n'
            '# 5. Visualise\n'
            'plt.figure(figsize=(10, 6))\n'
            'plt.bar(city_summary.index, city_summary["total_revenue"], color="#2563EB")\n'
            'plt.title("Total Revenue by City", fontsize=16, fontweight="bold")\n'
            'plt.xlabel("City")\n'
            'plt.ylabel("Total Revenue (R)")\n'
            'plt.xticks(rotation=45)\n'
            'plt.tight_layout()\n'
            'plt.show()\n'
            '\n'
            '# 6. Write it up\n'
            'top_city = city_summary.index[0]\n'
            'top_rev = city_summary.iloc[0]["total_revenue"]\n'
            'total = city_summary["total_revenue"].sum()\n'
            'share = (top_rev / total * 100).round(1)\n'
            'print(f"{top_city} generates R{top_rev:,.0f} — {share}% of total revenue.")',
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'Which chart shows change over time?',
          'Which chart compares categories?',
          'What are the three questions every chart must '
              'answer?',
          'What are the five parts of an analysis report?',
          'What is the difference between describing a chart '
              'and analysing it?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You can turn data into insight. Lesson 6 is about '
            'turning insight into income — the portfolio, '
            'Kaggle, the freelance clients, the pricing, and '
            'the pitch. This is the lesson that actually gets '
            'you paid.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 6 — portfolio, Kaggle, clients
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson6 = SkillLesson(
    id: 'data_6',
    trackId: trackId,
    title: 'Portfolio, Kaggle and Clients',
    subtitle: 'Turning analysis skill into income',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'You can analyse data. That does not mean anyone will '
            'pay you for it. Between "I can analyse data" and '
            '"I earn from data" there is a portfolio, a public '
            'presence, and a way to reach the people who need '
            'help.',
      ),
      LessonParagraph(
        'This lesson is the bridge. It is also the one most '
            'data courses skip because it is uncomfortable — '
            'you have to talk to real people instead of '
            'staring at Jupyter.',
      ),

      LessonHeading('The portfolio rule — three projects'),
      LessonParagraph(
        'You need exactly three projects to be hireable. Not '
            'ten. Not twenty. Three deep, well-documented '
            'projects. Each one answers a real business '
            'question with real data.',
      ),
      LessonParagraph('What a good portfolio project looks like:'),
      LessonBullets([
        'A real dataset — not a toy dataset like Titanic. '
            'A real one from Kaggle or a real company.',
        'A specific business question — not "explore this '
            'dataset". "Which customer segment generates the '
            'most lifetime value?"',
        'A documented process — how you cleaned the data, '
            'what you found, what was hard.',
        'Visualisations — 2-3 charts that support the '
            'finding.',
        'A recommendation — what the business should do, '
            'specifically.',
        'Code on GitHub — a public repo that another '
            'analyst could run and understand.',
      ]),

      LessonHeading('The three projects to build'),
      LessonSteps(
        title: 'Your three portfolio projects',
        steps: [
          LessonStep(
            title: 'Project 1 — the classic analysis',
            body:
            'Find a public dataset on Kaggle — '
                'e-commerce sales, customer churn, or '
                'reviews. Answer one business question '
                'end-to-end. Document it on Medium or '
                'LinkedIn. Post the code on GitHub.',
          ),
          LessonStep(
            title: 'Project 2 — the "insight" project',
            body:
            'Same shape, but with a twist — find '
                'something surprising. Not "sales went '
                'up". "Sales went up only in one segment, '
                'and here is why." The surprise is what '
                'gets attention.',
          ),
          LessonStep(
            title: 'Project 3 — the "real" project',
            body:
            'Analyse something real — a friend\'s '
                'small business, a nonprofit\'s public '
                'data, your own spending. Document it '
                'as a case study. Even if nobody paid '
                'you, the case study counts.',
          ),
        ],
      ),

      LessonHeading('How to use Kaggle properly'),
      LessonParagraph(
        'Kaggle is where the data science community lives. '
            'Free datasets, free compute, free courses, '
            'competitions with prizes. Most beginners use it '
            'badly.',
      ),
      LessonBullets([
        'Do not jump into competitions first. Do '
            'datasets and notebooks first.',
        'Look at the top notebooks on any dataset. '
            'Study their approach. Note what makes them '
            'readable.',
        'Publish your own notebook for every analysis '
            'you do. Even if it is rough. The act of '
            'publishing forces you to make it readable.',
        'Answer questions in the discussion forums. '
            'This is how you get known in the community.',
        'After 3 months, try a "Getting Started" '
            'competition (Titanic, House Prices). Not a '
            'hard one.',
      ]),

      LessonHeading('Where the clients are'),
      LessonBullets([
        'Local small businesses — every business '
            'collects data and almost none of them '
            'analyse it. Cafés, salons, gyms, small '
            'e-commerce stores.',
        'Startups — data-driven by necessity. '
            'Often need dashboards, funnel analysis, '
            'A/B test analysis.',
        'Agencies — marketing and dev agencies '
            'constantly need data work they cannot do '
            'in-house.',
        'LinkedIn — post an analysis weekly. Tag the '
            'tools. Use specific hashtags. The inbound '
            'leads come from here.',
        'Freelance platforms — Upwork, Fiverr, '
            'Contra. Lower rates at first, but real '
            'clients.',
        'Referrals — after 2 happy clients, ask '
            'each one for an introduction to 2 more.',
      ]),

      LessonHeading('Pricing — the three models'),
      LessonParagraph(
        'Same three models as every freelance track. '
            'Data-specific ranges below.',
      ),

      LessonHeading('Hourly'),
      LessonBullets([
        'Beginner (0–1 year) — R400–R700/hour.',
        'Mid-level (1–3 years) — R700–R1,200/hour.',
        'Senior (3+ years) — R1,200–R2,000/hour.',
      ]),

      LessonHeading('Fixed project'),
      LessonBullets([
        'Single analysis report — R3,000–R8,000.',
        'Dashboard build — R8,000–R25,000.',
        'Full data audit and recommendations — '
            'R15,000–R40,000.',
        'A/B test analysis — R5,000–R15,000.',
      ]),

      LessonHeading('Monthly retainer'),
      LessonBullets([
        'Small business ongoing reporting — '
            'R5,000–R15,000/month.',
        'Startup with weekly analysis needs — '
            'R15,000–R30,000/month.',
        'Enterprise ongoing BI support — '
            'R30,000–R60,000/month.',
      ]),
      LessonCallout(
        title: 'The pricing trap',
        body:
        'Beginners charge too little because they think '
            '"I am not experienced enough". The client does '
            'not know your experience level — they know your '
            'portfolio and your pitch. If your portfolio '
            'looks like R10,000 work, charge R10,000. You '
            'can always negotiate down. You cannot negotiate '
            'up after you have quoted.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('The pitch'),
      LessonParagraph(
        'A data pitch is not "I do data analysis". It is a '
            'specific observation about a specific business '
            'problem, backed by a specific offer.',
      ),
      LessonCodeBlock(
        caption: 'The 4-part data pitch',
        content:
        '1. THE OBSERVATION\n'
            '   "I noticed your online store has around 400\n'
            '   products but only 12 are on your home page."\n'
            '\n'
            '2. THE HYPOTHESIS\n'
            '   "In most e-commerce stores, 80% of revenue\n'
            '   comes from 20% of products. If you do not\n'
            '   know which of your 400 are the 20%, you are\n'
            '   probably promoting the wrong ones."\n'
            '\n'
            '3. THE OFFER\n'
            '   "I can analyse your last 6 months of orders\n'
            '   and identify your top products, top customer\n'
            '   segments, and top days/times. You will get\n'
            '   a one-page report with 3 specific actions."\n'
            '\n'
            '4. THE PRICE\n'
            '   "R5,000. 3 working days. If the report does\n'
            '   not contain at least one insight you had not\n'
            '   already considered, you do not pay."',
      ),
      LessonCallout(
        title: 'The risk-free offer',
        body:
        '"If it does not contain at least one insight '
            'you had not already considered, you do not '
            'pay." This single sentence converts. It removes '
            'the client\'s risk entirely. And you will '
            'almost always find something they did not '
            'know — because most businesses have not '
            'looked at their own data properly. The few '
            'times they have, you learn to look harder '
            'next time.',
        tone: CalloutTone.tip,
      ),

      LessonSelfCheck(
        title: 'Before you move on',
        questions: [
          'How many portfolio projects do you need to be '
              'hireable?',
          'What makes a good portfolio project?',
          'What are the three pricing models?',
          'What are the four parts of a data pitch?',
          'Why does the risk-free offer work?',
        ],
      ),

      LessonHeading('What comes next'),
      LessonParagraph(
        'You know how to get paid. Lesson 7 is the business '
            'side — POPIA (data is the most sensitive thing '
            'you will handle), contracts, intellectual '
            'property, the honest career reality, and the '
            'full Kepler Study disclaimer about what we are '
            'and are not.',
      ),
    ],
  );

  // ─────────────────────────────────────────────────────────────
  // Lesson 7 — business, legal, disclaimer
  // ─────────────────────────────────────────────────────────────
  static const SkillLesson _lesson7 = SkillLesson(
    id: 'data_7',
    trackId: trackId,
    title: 'The Business of Data',
    subtitle: 'POPIA, contracts, IP, and where Kepler Study stands',
    estimatedMinutes: 24,
    blocks: [
      LessonParagraph(
        'You can analyse data. The last thing standing '
            'between you and a paid career is the business '
            'side. Data has a specific legal weight that most '
            'other freelance skills do not — because you are '
            'handling other people\'s private information.',
      ),
      LessonParagraph(
        'None of this is legal advice. It is orientation. If '
            'any of it applies to you, get a lawyer and an '
            'accountant.',
      ),

      LessonHeading('POPIA — you are handling the most sensitive data'),
      LessonParagraph(
        'When you do data work, you see things most people '
            'never see. Full names. ID numbers. Email '
            'addresses. Purchase histories. Health information '
            '(if you analyse medical data). Financial records.',
      ),
      LessonParagraph(
        'Under POPIA, that makes you a "responsible party" — '
            'the same legal standard as a bank or a hospital. '
            'There is no "small data analyst exemption".',
      ),
      LessonBullets([
        'Collect only what you need. Do not download '
            'the whole database "just in case".',
        'Store data on the client\'s systems, not on '
            'your laptop. If you must download, put it '
            'in an encrypted folder and delete it '
            'immediately after.',
        'Anonymise before you publish. Never put real '
            'customer data in a portfolio piece, a '
            'LinkedIn post, or a Kaggle notebook.',
        'Use two-factor authentication on every '
            'system that touches client data.',
        'Log every access — what data you pulled, '
            'when, and why. If there is ever an '
            'incident, this log is your defence.',
        'Delete the raw data when the project is '
            'done. Keep only the aggregated results '
            'and the code.',
        'If you breach, notify the client within '
            '24 hours. Notify the Information '
            'Regulator within 72 hours if it is '
            'serious. Do not try to hide it — that '
            'turns a recoverable incident into a '
            'criminal offence.',
      ]),
      LessonCallout(
        title: 'The fines are real',
        body:
        'POPIA fines go up to R10 million and 10 years '
            'in prison for serious breaches. A data '
            'analyst who published real customer data in '
            'a portfolio project would be personally '
            'liable. The client would also be liable for '
            'their own POPIA fine. Both of you. This has '
            'happened to professional agencies.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('Contracts — what every data contract needs'),
      LessonBullets([
        'Parties — full legal names, business '
            'registration if applicable.',
        'Scope of work — which datasets, which '
            'questions, which deliverables. Specific.',
        'Out of scope — data collection, data entry, '
            'ongoing reporting. All separately quoted.',
        'Timeline — milestones with dates.',
        'Client responsibilities — access to data, '
            'response time, business context.',
        'Data handling and POPIA — what data you '
            'will access, how you will store it, when '
            'you will delete it, what happens if there '
            'is a breach. This is non-negotiable and '
            'must be explicit.',
        'Payment — amount, structure, due date, '
            'late fee.',
        'Intellectual property — who owns the code '
            'and the analysis. Standard: the client '
            'owns the results; you own the methodology '
            'and the code templates.',
        'Revisions — how many rounds included, '
            'extra at R[X]/hour.',
        'Limitation of liability — you are not liable '
            'for business decisions the client makes '
            'based on your analysis. You provide '
            'insight, not guarantees.',
        'Termination — how either party ends, '
            'notice period, what happens to data on '
            'termination.',
      ]),
      LessonCallout(
        title: 'The data destruction clause',
        body:
        'Add a specific clause: "On termination of '
            'this agreement, the Service Provider will '
            'delete all copies of client data within 14 '
            'days, except where retention is required by '
            'law or for the specific purpose of ongoing '
            'maintenance agreed in writing." This one '
            'clause protects you both. Without it, you '
            'could be legally liable for data you have '
            'forgotten you still have.',
        tone: CalloutTone.tip,
      ),

      LessonHeading('Intellectual property'),
      LessonParagraph(
        'Two things are being created in every data '
            'project. Getting their ownership right '
            'matters.',
      ),
      LessonBullets([
        'The results — the report, the dashboard, '
            'the analysis. Standard: the client owns '
            'these on final payment.',
        'The code — the Python scripts, SQL queries, '
            'notebooks. Standard: you own these and can '
            'reuse patterns in other projects. The '
            'client gets a licence to use them for '
            'their specific business.',
        'The datasets — always the client\'s. Never '
            'yours. You cannot use client data for '
            'anything other than the agreed scope.',
      ]),

      LessonHeading('The honest career reality'),
      LessonParagraph(
        'Most people who learn data skills do not become '
            'data professionals. The ones who do are not the '
            'most talented — they are the ones who:',
      ),
      LessonBullets([
        'Built 3 real portfolio projects with real '
            'data — not just completed courses.',
        'Learned SQL as well as Python. Half the '
            'job interviews test SQL first.',
        'Specialised in a specific domain (retail, '
            'healthcare, finance) instead of staying '
            'generic.',
        'Learned to communicate. A bad analyst who '
            'writes clearly beats a great analyst who '
            'cannot explain their findings.',
        'Kept learning after the first course. The '
            'field moves — new tools, new libraries, '
            'new methods.',
        'Took a lower-paid analyst role first '
            'instead of waiting for a "junior data '
            'scientist" role.',
      ]),
      LessonCallout(
        title: 'The realistic timeline',
        body:
        'Month 1–3 — Python basics, pandas, first '
            'cleaning exercises.\n'
            'Month 4–6 — SQL, first full analysis project.\n'
            'Month 7–9 — 3 portfolio projects done, '
            'published.\n'
            'Month 10–12 — job applications or first '
            'freelance client.\n'
            'Year 2 — junior analyst role, R20,000–'
            'R35,000/month.\n'
            'Year 3–5 — mid-level analyst or junior data '
            'scientist, R35,000–R70,000/month.\n'
            'Year 5+ — senior analyst/scientist or '
            'freelance consultant, R70,000–R150,000+/month.\n\n'
            'Anyone selling "6 months to R50,000/month in '
            'data science" is selling a course, not a '
            'career.',
        tone: CalloutTone.warning,
      ),

      LessonHeading('Where Kepler Study stands'),
      LessonParagraph(
        'One last thing, and it is the most important '
            'thing in this track.',
      ),
      LessonParagraph(
        'Kepler Study is an education platform. We teach '
            'skills. That is all we do.',
      ),
      LessonBullets([
        'Kepler Study is not your employer. You are an '
            'independent analyst or contractor, not our '
            'employee.',
        'Kepler Study is not a party to any contract '
            'you sign with any client. Your contracts '
            'are between you and them. We are not named '
            'in them and have no obligations under them.',
        'Kepler Study is not responsible for any '
            'analysis outcome, any business decision '
            'made from your analysis, any client '
            'relationship, or any financial result — '
            'successful or unsuccessful — of any data '
            'work you do.',
        'Kepler Study is not liable for POPIA fines, '
            'data breach lawsuits, copyright disputes, '
            'or any legal or financial consequence of '
            'your data work.',
        'Kepler Study does not provide legal, '
            'financial, or tax advice. Everything in '
            'this track is educational illustration. '
            'Consult a qualified South African lawyer '
            'before signing any contract, handling any '
            'sensitive data, or publishing any '
            'analysis.',
        'Kepler Study does not endorse Kaggle, '
            'Python, SQL, or any tool mentioned in '
            'this track. Mentioning them is not a '
            'recommendation.',
        'Kepler Study makes no promise that you will '
            'earn money from data science. Most people '
            'who attempt it do not build a long-term '
            'income from it.',
        'Kepler Study does not represent you, '
            'endorse you, or recommend you to any '
            'client. Every client you land is yours '
            'alone.',
        'Any invoice, bank account, business '
            'registration, tax number, and legal '
            'compliance is your own. Kepler Study does '
            'not handle any of that for you.',
      ]),
      LessonCallout(
        title: 'Why this section exists',
        body:
        'Because teaching someone a skill is one '
            'thing. Becoming their partner in the '
            'business they build with that skill is a '
            'different thing — one we are not set up '
            'to be, and one we do not want to be. You '
            'are the analyst. You take the risk. You '
            'take the reward. That is the whole point.',
        tone: CalloutTone.info,
      ),

      LessonParagraph(
        'If you take money from a client, you are '
            'running a business. Register it, open a bank '
            'account for it, keep records, file your tax. '
            'If you breach POPIA, you face the fine. If a '
            'client refuses to pay, your contract is your '
            'only remedy. If you publish a portfolio '
            'project with real customer data, you face a '
            'lawsuit. Kepler Study will not and cannot '
            'stand in for any of that.',
      ),

      LessonHeading('You finished the track'),
      LessonParagraph(
        'Seven chapters. You started not knowing what a '
            'dataframe was. You now know: the honest reality '
            'of the field, the three roles, Python '
            'fundamentals, pandas and cleaning, SQL (the six '
            'commands), visualisation (the five charts), how '
            'to write an analysis that changes decisions, '
            'portfolio and Kaggle, pricing and pitching, '
            'contracts, POPIA, and intellectual property.',
      ),
      LessonParagraph(
        'That is more than most people who call '
            'themselves "data analysts" actually know.',
      ),
      LessonParagraph(
        'The next step is not more learning. It is one '
            'real project — a public dataset from Kaggle, '
            'one specific business question, a documented '
            'analysis posted on LinkedIn. Do it this week. '
            'Then a second one. Then a third. Three real '
            'portfolio pieces beats any course you could '
            'take next.',
      ),
      LessonParagraph(
        'Then a small freelance project for a local '
            'business, or a junior analyst role. Something '
            'that puts you in a real data environment. '
            'That first real-world exposure is worth more '
            'than 100 hours of tutorials.',
      ),
      LessonParagraph(
        'And if you try it and decide data science is '
            'not for you, that is a valid outcome too. You '
            'now understand how data works, how decisions '
            'are made, and how to reason with evidence. '
            'Those skills transfer to any career you ever '
            'build.',
      ),

      LessonSelfCheck(
        title: 'Final check',
        questions: [
          'What are your POPIA obligations when handling '
              'client data?',
          'Why do you never publish a portfolio piece '
              'with real customer data?',
          'What are the three IP ownership rules for '
              'data work?',
          'What is the realistic timeline to a paid '
              'data analyst career?',
        ],
      ),
    ],
  );
}