BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('001R000001a9jIcIAI','Frodo Foods','');
INSERT INTO "Account" VALUES('001R000001a9jIXIAY','Bilbo Emporium','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a00R000000Fy046IAB','Grapes','2020-05-30','','a01R000000EBCL8IAP');
INSERT INTO "Delivery_Item__c" VALUES('a00R000000Fy041IAB','Bananas','2020-05-23','Non-refrigerated','a01R000000EBCKtIAP');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Scheduled__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a01R000000EBCL8IAP','2020-05-23T19:00:00.000Z','Requested','001R000001a9jIXIAY');
INSERT INTO "Delivery__c" VALUES('a01R000000EBCKyIAP','2020-05-09T19:00:00.000Z','Scheduled','001R000001a9jIcIAI');
INSERT INTO "Delivery__c" VALUES('a01R000000EBCKtIAP','2020-05-09T19:00:00.000Z','Requested','001R000001a9jIcIAI');
INSERT INTO "Delivery__c" VALUES('a01R000000EBCL3IAP','2020-05-23T19:00:00.000Z','Scheduled','001R000001a9jIXIAY');
COMMIT;
