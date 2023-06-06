BEGIN TRANSACTION;
CREATE TABLE "Product2" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Product2" VALUES(1,'Sensor');
INSERT INTO "Product2" VALUES(2,'Transistor');
INSERT INTO "Product2" VALUES(3,'Chipset 300');
INSERT INTO "Product2" VALUES(4,'Chipset 100');
CREATE TABLE "RebatePartnerSpecialPrcTrm" (
	id INTEGER NOT NULL, 
	"Discount" VARCHAR(255), 
	"IsDiscountByPercent" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ProductQuantity" VARCHAR(255), 
	"ReferencePricePerUnit" VARCHAR(255), 
	"SalePricePerUnit" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	"RebateProgramMemberId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(1,'','False','For 300','100.0','400.0','450.0','Active','3','1');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(2,'','False','For Chipset100','100.0','450.0','500.0','Active','4','1');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(3,'61.0','False','For chipset300','100.0','','100.0','Active','3','2');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(4,'25.0','False','for sensor','100.0','','50.0','Active','1','4');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(5,'','False','For Chipset 100','50.0','21.0','31.0','Active','4','3');
INSERT INTO "RebatePartnerSpecialPrcTrm" VALUES(6,'50.0','True','for transistor','20.0','','50.0','Active','2','5');
CREATE TABLE "RebateProgram" (
	id INTEGER NOT NULL, 
	"EndDate" VARCHAR(255), 
	"Frequency" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebateProgram" VALUES(1,'2023-07-31','OnDemand','Summer special program for Uptron','2023-03-01');
INSERT INTO "RebateProgram" VALUES(2,'2024-03-30','OnDemand','One year special program','2023-03-01');
INSERT INTO "RebateProgram" VALUES(3,'2025-05-30','OnDemand','Special program for Acme','2023-04-01');
INSERT INTO "RebateProgram" VALUES(4,'2025-05-31','OnDemand','Special 2 offer program for dealers','2023-03-01');
INSERT INTO "RebateProgram" VALUES(5,'2024-10-03','OnDemand','Mid Quarter Special Program','2023-07-01');
CREATE TABLE "RebateProgramMember" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"RebateProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RebateProgramMember" VALUES(1,'Uptron','1');
INSERT INTO "RebateProgramMember" VALUES(2,'Acme','4');
INSERT INTO "RebateProgramMember" VALUES(3,'Dreamer','5');
INSERT INTO "RebateProgramMember" VALUES(4,'Xelate','2');
INSERT INTO "RebateProgramMember" VALUES(5,'Acme','3');
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
COMMIT;
