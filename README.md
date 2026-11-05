# SQL Analysis: Monthly Email Sending Activity by Account

## Project Overview
This project focuses on analyzing monthly email sending activity by account using SQL in Google BigQuery.
The analysis calculates each account's share of total monthly sent messages and identifies the first and last email sending dates within each month.

## Objectives
- Analyze monthly email sending activity.
- Calculate each account's percentage of total monthly sent messages.
- Identify the first and last email sending dates for each account within a month.
- Compare account activity across different months.
- Identify monthly patterns in email sending activity.

## Dataset
The analysis uses data from the following tables:
- `email_sent` — email sending activity and account identifiers.
- `account_session` — connection between accounts and sessions.
- `session` — session dates.
The dataset covers the period from November 1, 2020, to February 25, 2021.

## Tools & Technologies
- Google BigQuery
- SQL
- JOINs
- Window Functions (`COUNT() OVER`, `MIN() OVER`, `MAX() OVER`)
- Date Functions (`DATE_ADD`, `DATE_TRUNC`)
- Aggregations (`COUNT`)

## Analysis Process
The analysis included:
1. Combining email sending records with account and session data using JOINs.
2. Calculating the full email sending date.
3. Grouping email sending activity by account and month.
4. Calculating the number of messages sent by each account within a month.
5. Calculating each account's percentage of total monthly sent messages.
6. Identifying the first and last sending dates for each account within each month.

## Key Findings
- The analysis produced 14,365 account-month records.
- A total of 10,605 unique accounts were identified.
- December 2020 had the highest number of active accounts, with 5,321.
- January 2021 recorded 4,777 active accounts.
- November 2020 recorded 2,756 active accounts.
- February 2021 recorded 1,511 active accounts. However, February represents an incomplete month.
- The sum of account-level sending percentages equaled 100% for each month.
- No missing values were found in the resulting dataset.

## Project Files
- [analysis.sql](analysis.sql) — SQL query used in the analysis.
- [conclusions.md](conclusions.md) — detailed findings, insights, recommendations, and data limitations.

## Conclusions
The analysis revealed differences in monthly email sending activity. December 2020 had the highest number of accounts with recorded email sending activity, followed by January 2021.
Calculating each account's share of monthly sent messages made it possible to evaluate its contribution to overall email activity. The results provide a basis for further investigation of monthly sending patterns and account-level activity.



# SQL-Аналіз: Щомісячна Активність Надсилання Електронних Листів за Обліковими Записами

## Опис проєкту
Цей проєкт присвячений аналізу щомісячної активності надсилання електронних листів за обліковими записами за допомогою SQL у Google BigQuery.
Аналіз передбачає розрахунок частки листів кожного облікового запису від загальної кількості надісланих листів за місяць, а також визначення першої та останньої дат надсилання в межах кожного місяця.

## Мета проєкту
- Проаналізувати щомісячну активність надсилання електронних листів.
- Розрахувати частку листів кожного облікового запису від загальної кількості надісланих листів за місяць.
- Визначити першу та останню дати надсилання листів для кожного облікового запису в межах місяця.
- Порівняти активність облікових записів у різні місяці.
- Виявити щомісячні закономірності в активності надсилання листів.

## Набір даних
Для аналізу використано дані з таких таблиць:
- `email_sent` — інформація про надсилання електронних листів та ідентифікатори облікових записів.
- `account_session` — зв'язок між обліковими записами та сесіями.
- `session` — дати сесій.
Набір даних охоплює період з 1 листопада 2020 року до 25 лютого 2021 року.

## Інструменти та технології
- Google BigQuery
- SQL
- JOINs — об'єднання таблиць.
- Window Functions (`COUNT() OVER`, `MIN() OVER`, `MAX() OVER`) — віконні функції.
- Date Functions (`DATE_ADD`, `DATE_TRUNC`) — функції для роботи з датами.
- Aggregations (`COUNT`) — агрегатні функції.

## Процес аналізу

Аналіз включав такі етапи:
1. Об'єднання записів про надсилання листів із даними про облікові записи та сесії за допомогою JOIN.
2. Розрахунок повної дати надсилання електронного листа.
3. Групування активності надсилання листів за обліковим записом і місяцем.
4. Підрахунок кількості листів, надісланих кожним обліковим записом протягом місяця.
5. Розрахунок частки листів кожного облікового запису від загальної кількості надісланих листів за місяць.
6. Визначення першої та останньої дат надсилання листів для кожного облікового запису в межах місяця.

## Основні результати
- За результатами аналізу отримано 14 365 записів у розрізі облікових записів і місяців.
- Виявлено 10 605 унікальних облікових записів.
- Найбільшу кількість активних облікових записів зафіксовано у грудні 2020 року — 5 321.
- У січні 2021 року активність надсилання листів спостерігалася для 4 777 облікових записів.
- У листопаді 2020 року — для 2 756 облікових записів.
- У лютому 2021 року — для 1 511 облікових записів. Водночас лютий представлений неповним місяцем.
- Сума часток надсилань усіх облікових записів за кожен місяць становила 100%.
- У результуючому наборі даних не виявлено пропущених значень.

## Файли проєкту
- [analysis.sql](analysis.sql) — SQL-запит, використаний для проведення аналізу.
- [conclusions.md](conclusions.md) — детальні результати, аналітичні висновки, рекомендації та обмеження набору даних.

## Висновки
Аналіз виявив відмінності в щомісячній активності надсилання електронних листів. Найбільшу кількість облікових записів із зафіксованою активністю надсилання листів було виявлено у грудні 2020 року, далі йде січень 2021 року.
Розрахунок частки листів кожного облікового запису від загальної кількості за місяць дав змогу оцінити його внесок у загальну активність email-кампаній. Отримані результати створюють основу для подальшого дослідження щомісячних закономірностей надсилання листів та активності окремих облікових записів.
