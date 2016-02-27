hdfs dfs -mkdir /user/w205/hospital_compare
wget https://raw.githubusercontent.com/aburrage/exercise_1/master/effective_care.csv
wget https://raw.githubusercontent.com/aburrage/exercise_1/master/hospitals.csv
wget https://raw.githubusercontent.com/aburrage/exercise_1/master/measures.csv
wget https://raw.githubusercontent.com/aburrage/exercise_1/master/readmissions.csv
wget https://raw.githubusercontent.com/aburrage/exercise_1/master/surveys_responses.csv
hdfs dfs -put effective_care.csv /user/w205/hospital_compare/effective_care
hdfs dfs -put hospitals.csv /user/w205/hospital_compare/hospitals
hdfs dfs -put measures.csv /user/w205/hospital_compare/measures
hdfs dfs -put readmissions.csv /user/w205/hospital_compare/readmissions
hdfs dfs -put surveys_responses.csv /user/w205/hospital_compare/surveys_responses