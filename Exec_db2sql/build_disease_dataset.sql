connect to kghldb user farhana

drop table dbo.disease_statistics
CREATE TABLE dbo.disease_statistics (Patient_ID int NOT NULL, Network_ID int NOT NULL, Site_ID int NOT NULL, Cycle_ID varchar(255) NOT NULL, DiseaseCase_ID int NOT NULL, Disease varchar(255) NOT NULL, Sex varchar(255), BirthYear int, Occupation varchar(255), HighestEducation varchar(255), HousingStatus varchar(255), ResidenceFSA varchar(255), PatientStatus_calc varchar(255), Language varchar(255), Ethnicity varchar(255), DeceasedYear int)

insert into dbo.disease_statistics select Pa.patient_ID, pd.network_id, pd.site_id, pd.cycle_id, DC.diseaseCase_ID , DC.disease, Pa.sex, Pa.birthYear, pd.occupation, pd.highestEducation, pd.housingStatus, pd.residenceFSA, pd.patientStatus_calc, pd.language, pd.ethnicity, pd.deceasedYear from dbo.Patient Pa, dbo.DiseaseCase DC, dbo.PatientDemographic pd where DC.patient_ID= Pa.patient_ID AND pd.patient_ID= Pa.patient_ID
commit
reorg table dbo.disease_statistics
connect reset
