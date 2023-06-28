BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"AccountNumber" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','(212) 555-2431','ACM Corporation','','(212) 555-2431','','Prospect','31100000.0','New York','USA','','','','NY','','20039','','230','Manufacturing','','New York','USA','','','','NY','','20039');
INSERT INTO "Account" VALUES(4,'','','Analog devices','','','','','','','','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(5,'','','Dreamer','','','','','','','','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(6,'','','DreamWaver','','','','','','','','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(7,'','','Sansoos','','','','','','','','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(8,'','','Uptron','','','','','','','','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(9,'','','Xelate','','','','','','','','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(10,'','','Xelate distributor','','','','','','','','','','','','','','','','','','','','','','','','','');
CREATE TABLE "JournalType" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "JournalType" VALUES(1,'','Ship And Debit Journal','ShipAndDebit');
CREATE TABLE "Pricebook2" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Pricebook2" VALUES(1,'Summer products PB','True','Summer products PB');
CREATE TABLE "PricebookEntry" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"UnitPrice" VARCHAR(255), 
	"UseStandardPrice" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"Product2Id" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "PricebookEntry" VALUES(1,'True','100.0','False','1','2');
INSERT INTO "PricebookEntry" VALUES(2,'True','150.0','False','1','1');
INSERT INTO "PricebookEntry" VALUES(3,'True','450.0','False','1','3');
INSERT INTO "PricebookEntry" VALUES(4,'True','500.0','False','1','4');
CREATE TABLE "Product2" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"DisplayUrl" VARCHAR(255), 
	"ExternalId" VARCHAR(255), 
	"ProductCode" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Family" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"StockKeepingUnit" VARCHAR(255), 
	"QuantityUnitOfMeasure" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Product2" VALUES(1,'True','','','Sensor','','','Sensor','','');
INSERT INTO "Product2" VALUES(2,'True','','','Transistor','','','Transistor','','');
INSERT INTO "Product2" VALUES(3,'True','','','Chipset 300','','','Chipset 300','','');
INSERT INTO "Product2" VALUES(4,'True','','','Chipset 100','','','Chipset 100','','');
CREATE TABLE "RebateClaim" (
	id INTEGER NOT NULL, 
	"ClaimedByAccountNumber" VARCHAR(255), 
	"ParticipatingAccountNumber" VARCHAR(255), 
	"ProductCode" VARCHAR(255), 
	"ClaimAmount" VARCHAR(255), 
	"ClaimDate" VARCHAR(255), 
	"ClaimType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ProcessingStatus" VARCHAR(255), 
	"ProcessingStatusMessage" VARCHAR(255), 
	"ProgramReferenceNumber" VARCHAR(255), 
	"Quantity" VARCHAR(255), 
	"ReferencePricePerUnit" VARCHAR(255), 
	"ResalePricePerUnit" VARCHAR(255), 
	"SalePricePerUnit" VARCHAR(255), 
	"ShipDate" VARCHAR(255), 
	"ShippedTransactionIdentifier" VARCHAR(255), 
	"TransactionIdentifier" VARCHAR(255), 
	"UsageType" VARCHAR(255), 
	"ClaimedByAccountId" VARCHAR(255), 
	"ParticipatingAccountId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebateClaim" VALUES(1,'','','','100.0','2023-04-11T19:00:00.000+0000','ShipAndDebit','Ship And Debit','New','','SANUPTR5258','2.0','','','','','','','Rebates','8','7','4');
INSERT INTO "RebateClaim" VALUES(2,'','','','233.0','2023-06-22T19:00:00.000+0000','ShipAndDebit','Ship And Debit Rebates','New','','SANUPTR5258','20.0','','','','','','','Rebates','8','7','3');
INSERT INTO "RebateClaim" VALUES(3,'','','','100.0','2023-05-09T19:00:00.000+0000','ShipAndDebit','Ship & Debit Rebates','New','','SANUPTR5258','1.0','','','','','','','Rebates','8','7','4');
INSERT INTO "RebateClaim" VALUES(4,'','','','100.0','2023-05-02T19:00:00.000+0000','ShipAndDebit','Ship & Debit','New','','SANUPTR5258','1.0','','','','','','','Rebates','8','7','4');
INSERT INTO "RebateClaim" VALUES(5,'','','','290.0','2023-05-15T19:00:00.000+0000','ShipAndDebit','ShipAndDebit Rebate Claim','New','','SANUPTR5258','20.0','','','','','','','Rebates','8','7','3');
INSERT INTO "RebateClaim" VALUES(6,'','','','233.0','2023-06-13T19:00:00.000+0000','ShipAndDebit','Ship & Debit Rebate Claim','New','','SANUPTR5258','2.0','','','','','','','Rebates','8','7','3');
INSERT INTO "RebateClaim" VALUES(7,'','','','121.0','2023-05-11T19:00:00.000+0000','ShipAndDebit','Ship And Debit','New','','PRNACME248','60.0','','','','','','','Rebates','9','10','1');
INSERT INTO "RebateClaim" VALUES(8,'','','','121.0','2023-05-23T19:00:00.000+0000','ShipAndDebit','Ship And Debit Rebates','New','','PRNACME248','21.0','','','','','','','Rebates','9','10','1');
INSERT INTO "RebateClaim" VALUES(9,'','','','121.0','2023-05-30T19:00:00.000+0000','ShipAndDebit','Ship & Debit Rebates','New','','PRNACME248','19.0','','','','','','','Rebates','9','10','1');
INSERT INTO "RebateClaim" VALUES(10,'','','','121.0','2023-05-10T19:00:00.000+0000','ShipAndDebit','','New','The required rebate claim product quantity is more than the remaining product quantity.','PMACMEACME234','61.0','','','','','','','Rebates','1','4','2');
INSERT INTO "RebateClaim" VALUES(11,'','','','1.0','2023-07-08T19:00:00.000+0000','ShipAndDebit','Ship And Debit Rebates','New','','SPLYRPRGRM625','2.0','','','','','','','Rebates','1','7','3');
INSERT INTO "RebateClaim" VALUES(12,'','','','1.0','2023-06-20T19:00:00.000+0000','ShipAndDebit','ShipAndDebit Rebate Claim','New','','SPLYRPRGRM625','2.0','','','','','','','Rebates','1','7','3');
INSERT INTO "RebateClaim" VALUES(13,'','','','121.0','2023-05-10T19:00:00.000+0000','ShipAndDebit','','New','The required rebate claim product quantity is more than the remaining product quantity.','PRNACME248','61.0','','','','','','','Rebates','9','10','1');
INSERT INTO "RebateClaim" VALUES(14,'','','','121.0','2023-05-25T19:00:00.000+0000','ShipAndDebit','Ship And Debit','New','','PMACMEACME234','2.0','','','','','','','Rebates','1','4','2');
INSERT INTO "RebateClaim" VALUES(15,'','','','1.0','2023-07-17T19:00:00.000+0000','ShipAndDebit','','New','The required rebate claim product quantity is more than the remaining product quantity.','DRMPRN8585','60.0','','','','','','','Rebates','5','6','4');
INSERT INTO "RebateClaim" VALUES(16,'','','','1.0','2023-07-08T19:00:00.000+0000','ShipAndDebit','ShipAndDebit Rebate Claim','New','','DRMPRN8585','2.0','','','','','','','Rebates','5','6','4');

CREATE TABLE "RebateClaimAdjustment" (
	id INTEGER NOT NULL, 
	"AdjustmentAmount" VARCHAR(255), 
	"ApprovedDate" VARCHAR(255), 
	"Comments" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"RebateClaimId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebateClaimAdjustment" VALUES(1,'-20.0','','for sansui','extra discount','Approved','5');
INSERT INTO "RebateClaimAdjustment" VALUES(2,'-30.0','','extra discount','extra discount','Approved','12');
INSERT INTO "RebateClaimAdjustment" VALUES(3,'-5.0','','special discount','extra discount','Approved','16');
CREATE TABLE "RebatePartnerSpecialPrcTrm" (
	id INTEGER NOT NULL, 
	"ProductQuantity" VARCHAR(255), 
	"Discount" VARCHAR(255), 
	"IsDiscountByPercent" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ReferencePricePerUnit" VARCHAR(255), 
	"SalePricePerUnit" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	"RebateProgramMemberId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(1,'100.0','','False','For 300','400.0','450.0','Active','3','1');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(2,'100.0','','False','For Chipset100','450.0','500.0','Active','4','1');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(3,'100.0','61.0','False','For chipset300','','100.0','Active','3','2');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(4,'100.0','25.0','False','for sensor','','50.0','Active','1','4');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(5,'50.0','','False','For Chipset 100','21.0','31.0','Active','4','3');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(6,'20.0','50.0','True','for transistor','','50.0','Active','2','5');
CREATE TABLE "RebateProgram" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"Frequency" VARCHAR(255), 
	"GracePeriodDayCount" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"PayoutCalculationDayCount" VARCHAR(255), 
	"ProgramReferenceNumber" VARCHAR(255), 
	"RebateProgramUrl" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Type" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebateProgram" VALUES(1,'','2023-07-31','OnDemand','','Summer special program for Uptron','','SANUPTR5258','','2023-03-01','Active','ShipAndDebit');
INSERT INTO "RebateProgram" VALUES(2,'','2024-03-30','OnDemand','','One year special program','','PRNACME248','','2023-03-01','Active','ShipAndDebit');
INSERT INTO "RebateProgram" VALUES(3,'','2025-05-30','OnDemand','','Special program for ACM Corporation','','PMACMEACME234','','2023-04-01','Active','ShipAndDebit');
INSERT INTO "RebateProgram" VALUES(4,'','2025-05-31','OnDemand','','Special 2 offer program for dealers','','SPLYRPRGRM625','','2023-03-01','Active','ShipAndDebit');
INSERT INTO "RebateProgram" VALUES(5,'','2024-10-03','OnDemand','','Mid Quarter Special Program','','DRMPRN8585','','2023-07-01','Active','ShipAndDebit');
CREATE TABLE "RebateProgramMember" (
	id INTEGER NOT NULL, 
	"IsPayoutCalcSkipped" VARCHAR(255), 
	"MemberStatus" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"RebateProgramId" VARCHAR(255), 
	"ShipToAccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebateProgramMember" VALUES(1,'False','Active','Uptron','8','1','7');
INSERT INTO "RebateProgramMember" VALUES(2,'False','Active','ACM Corporation','1','4','7');
INSERT INTO "RebateProgramMember" VALUES(3,'False','Active','Dreamer','5','5','6');
INSERT INTO "RebateProgramMember" VALUES(4,'False','Active','Xelate','9','2','10');
INSERT INTO "RebateProgramMember" VALUES(5,'False','Active','ACM Corporation','1','3','4');
CREATE TABLE "RebatePtnrSpclPrcTrmBnft" (
	id INTEGER NOT NULL, 
	"Discount" VARCHAR(255), 
	"IsDiscountByPercent" VARCHAR(255), 
	"EffectiveEndDate" VARCHAR(255), 
	"EffectiveStartDate" VARCHAR(255), 
	"MaximumQuantity" VARCHAR(255), 
	"MinimumQuantity" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ReferencePricePerUnit" VARCHAR(255), 
	"RebatePartnerSpecialPrcTrmId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebatePtnrSpclPrcTrmBnft" VALUES(1,'','False','','','250.0','1.0','0-250','480.0','2');
INSERT INTO "RebatePtnrSpclPrcTrmBnft" VALUES(2,'','False','','','500.0','251.0','251-500','440.0','2');
INSERT INTO "RebatePtnrSpclPrcTrmBnft" VALUES(3,'65.0','False','2023-06-30T19:00:00.000+0000','2023-06-01T19:00:00.000+0000','','','special discount in june 2023','','3');
INSERT INTO "RebatePtnrSpclPrcTrmBnft" VALUES(4,'31.0','False','','','50.0','21.0','21To50','','4');
INSERT INTO "RebatePtnrSpclPrcTrmBnft" VALUES(5,'60.0','True','2023-06-09T19:00:00.000+0000','2023-05-01T19:00:00.000+0000','','','Dates benefit','','6');
INSERT INTO "RebatePtnrSpclPrcTrmBnft" VALUES(6,'30.0','False','','','20.0','1.0','1To20','','4');
INSERT INTO "RebatePtnrSpclPrcTrmBnft" VALUES(7,'','False','','','10.0','1.0','1To10','25.0','5');
CREATE TABLE "TransactionJournal" (
	id INTEGER NOT NULL, 
	"RebatePgmReferenceNumber" VARCHAR(255), 
	"ActivityDate" VARCHAR(255), 
	"ErrorDescription" VARCHAR(255), 
	"ExternalTransactionNumber" VARCHAR(255), 
	"JournalDate" VARCHAR(255), 
	"Quantity" VARCHAR(255), 
	"TransactionAmount" VARCHAR(255), 
	"UsageType" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"JournalTypeId" VARCHAR(255), 
	"MemberId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	"QuantityUnitOfMeasureId" VARCHAR(255), 
	"ShipToAccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "TransactionJournal" VALUES(1,'DRMPRN8585','2023-05-29T19:00:00.000+0000','','','','20.0','1000.0','ProofOfSale','','1','3','','','6');
INSERT INTO "TransactionJournal" VALUES(2,'PRNACME248','2023-05-15T19:00:00.000+0000','','','','1.0','120.0','ProofOfSale','','1','4','','','10');
INSERT INTO "TransactionJournal" VALUES(3,'SANUPTR5258','2023-05-10T19:00:00.000+0000','','','','12.0','1200.0','ProofOfSale','','1','1','','','7');
INSERT INTO "TransactionJournal" VALUES(4,'PMACMEACME234','2023-05-29T19:00:00.000+0000','','','','20.0','1000.0','ProofOfSale','','1','5','','','4');
INSERT INTO "TransactionJournal" VALUES(5,'SPLYRPRGRM625','2023-05-29T19:00:00.000+0000','','','','12.0','1200.0','ProofOfSale','','1','2','','','7');
CREATE TABLE "UnitOfMeasure" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"UnitCode" VARCHAR(255), 
	PRIMARY KEY (id)
);
COMMIT;