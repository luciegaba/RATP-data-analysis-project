

CREATE TABLE IF NOT EXISTS mosef_projet_ratp.projets(
ID_LIGNE INT,
ID_PROJET INT,
NOM_PROJET STRING,
ID_OPERATI INT,
OPERATION STRING,
MODE_ INT,
SOUS_MODE INT,
INDICE STRING,
PHASE INT,
VARIANTE STRING,
CREATION INT,
PROLONG INT,
AMELIOR INT,
CPER_2007 INT,
CPER_2015 INT,
CPRD INT,
SDRIF INT,
PLAN_MOB INT,
NGP INT,
STATUT INT,
DUP INT,
DUP_date STRING,
OPENDATA INT,
OD_STEP INT,
OD_STEP_d INT,
MES_OFF_TX STRING,
DATE_EDITI STRING,
RVB_ STRING,
CMJN_ STRING,
geo_point_2d STRING,
geo_shape STRING
) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY "\u003B"
LINES TERMINATED BY '\n'
STORED AS TEXTFILE tblproperties("skip.header.line.count"="1");


LOAD DATA INPATH 'hdfs:${hivevar:folder_name}/liste-transporteurs.csv'
INTO TABLE mosef_projet_ratp.projets_lignes;
SELECT * FROM mosef_projet_ratp.transporteurs LIMIT 10;
