/* Regressed a synthetic dataset built-off data I mined from SkyWatch's Drone Insurance Quotation System */
/* The listed prices are the charges for its specific features based on my findings */

/* Generated Code (IMPORT) */
/* Source File: 2 Synthetic SkyWatch.csv */
/* Source Path: /home/u63739262/sasuser.v94/Hacklytics/Latest/Datasets */
/* Code generated on: 3/15/24, 8:57 AM */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/home/u63739262/sasuser.v94/Hacklytics/Latest/Datasets/2 Synthetic SkyWatch.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.SKY;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.SKY; RUN;


%web_open_table(WORK.IMPORT);

proc reg data=SKY;
   model TotalPrice = BasePrice DroneValue LiabilityPrice MedicalExpense MedicalExpensePrice NumberOfDrones PersonalAdInjuryPrice AdditionalInsuredPrice;
run;
