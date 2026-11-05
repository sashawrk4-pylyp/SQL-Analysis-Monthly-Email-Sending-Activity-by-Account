
SELECT DISTINCT
   sent_month,
   id_account,
   count_for_x / count_for_y *100 AS sent_msg_percent_from_this_month,
   first_sent_date,
   last_sent_date
FROM(
   SELECT
     sent.id_account,
     DATE_ADD(ses.date, INTERVAL sent.sent_date DAY) AS full_sent_date,
     DATE_TRUNC(DATE_ADD(ses.date, INTERVAL sent.sent_date DAY), MONTH) AS sent_month,
     COUNT(sent.id_message)                                        -- Кількість надісланих листів
       OVER(PARTITION BY sent.id_account, DATE_TRUNC(DATE_ADD(ses.date, INTERVAL sent.sent_date DAY), MONTH)) AS count_for_x,
     COUNT(*)
       OVER(PARTITION BY DATE_TRUNC(DATE_ADD(ses.date, INTERVAL sent.sent_date DAY), MONTH)) AS count_for_y,
     MIN(DATE_ADD(ses.date, INTERVAL sent.sent_date DAY))          -- Перша та остання дати надсилання
       OVER(PARTITION BY sent.id_account, DATE_TRUNC(DATE_ADD(ses.date, INTERVAL sent.sent_date DAY), MONTH)) AS first_sent_date,
     MAX(DATE_ADD(ses.date, INTERVAL sent.sent_date DAY))
       OVER(PARTITION BY sent.id_account, DATE_TRUNC(DATE_ADD(ses.date, INTERVAL sent.sent_date DAY), MONTH)) AS last_sent_date
   FROM `DA.email_sent` AS sent
   JOIN `DA.account_session` AS ac ON sent.id_account = ac.account_id
   JOIN `DA.session` AS ses ON ac.ga_session_id = ses.ga_session_id
) AS windoww
