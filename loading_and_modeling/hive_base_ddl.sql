CREATE EXTERNAL TABLE IF NOT EXISTS measures_schema
(name string,
measure_id string,
measure_start_quarter string,
measure_start_date string,
measure_end_quarter string,
measure_end_date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/measures';

CREATE EXTERNAL TABLE IF NOT EXISTS hospitals_schema
(provider_id string,
hosp_name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
hosp_type string,
hosp_ownership string,
emergency_services string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospitals';

CREATE EXTERNAL TABLE IF NOT EXISTS effective_care_schema
(provider_id string,
hosp_name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
condition string,
measure_id string,
measure_name string,
score string,
sample string,
footnote string,
measure_start_date string,
measure_end_date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective_care';

CREATE EXTERNAL TABLE IF NOT EXISTS readmissions_schema
(provider_id string,
hosp_name string,
address string,
city string,
state string,
zip string,
county string,
phone string,
measure_name string,
measure_id string,
comp_national string,
denominator string,
score string,
low_estimate string,
high_estimate string,
footnote string,
measure_start_date string,
measure_end_date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/readmissions';

CREATE EXTERNAL TABLE IF NOT EXISTS surveys_responses_schema
(provider_id string,
hosp_name string,
address string,
city string,
state string,
zip string,
county string,
comm_nurses_achive_points string,
comm_nurses_improve_points string,
comm_nurses_dimension_score string,
comm_docs_achieve_points string,
comm_docs_improve_points string,
comm_docs_dimension_score string,
resp_hosp_achieve_points string,
resp_hosp_improve_points string,
resp_hosp_dimension_score string,
pain_management_achieve_points string,
pain_management_improve_points string,
pain_management_dimension_score string,
comm_medicines_achieve_points string,
comm_medicines_improve_points string,
comm_medicines_dimension_score string,
clean_quiet_hosp_env1 string,
clean_quiet_hosp_env2 string,
clean_quiet_hosp_env3 string,
discharge_achieve_points string,
discharge_improve_points string,
discharge_dimension_score string,
overall_hosp_achieve_points string,
overall_hosp_improve_points string,
overall_hosp_dimension_score string,
hcahps_base_score string,
hcahps_consistency_score string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/surveys_responses';