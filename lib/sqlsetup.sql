
--SQL for Setup
CREATE SCHEMA IF NOT EXISTS SALES_MGT;

CREATE TABLE IF NOT EXISTS  SALES_MGT.NEW_LEADS(
   guid     VARCHAR(36) NOT NULL PRIMARY KEY
  ,balance  NUMERIC(7,2) NOT NULL
  ,name     VARCHAR(18) NOT NULL
  ,company  VARCHAR(9) NOT NULL
  ,email    VARCHAR(31) NOT NULL
  ,currency VARCHAR(3) NOT NULL
  ,phone    VARCHAR(17) NOT NULL
  ,address  VARCHAR(49) NOT NULL
);
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('2de81880-0e75-4081-bcb9-ba92cda8048f',1809.89,'Baird Dudley','DARWINIUM','bairddudley@darwinium.com','USD','+1 (803) 598-3980','622 Greenpoint Avenue, Stevens, Arkansas, 1640');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('180510f3-b298-4553-b05d-f472171171b1',1571.46,'Andrea Erickson','COREPAN','andreaerickson@corepan.com','USD','+1 (871) 536-2582','559 Saratoga Avenue, Florence, Alabama, 6845');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('6b249f65-ae25-4bb2-abfe-d383836fc400',2170.1,'Cynthia Galloway','GRONK','cynthiagalloway@gronk.com','USD','+1 (842) 495-2466','181 Argyle Road, Lowgap, Kentucky, 3751');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('251dd965-f710-4b38-a45f-8318bad7419b',2272.38,'Kate Mullen','GEEKETRON','katemullen@geeketron.com','USD','+1 (837) 483-2133','729 Belvidere Street, Frank, New Mexico, 7100');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('d8fa1dba-6622-4076-bd0f-a0c6596c8b10',1997.25,'Ferguson Glover','CONCILITY','fergusonglover@concility.com','USD','+1 (806) 461-2440','346 Everett Avenue, Delco, Pennsylvania, 737');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('370623d5-67e5-4601-bd86-1457d8ffc275',3729.92,'Sampson Gilbert','KONGENE','sampsongilbert@kongene.com','USD','+1 (986) 514-3780','247 Hunts Lane, Harold, Marshall Islands, 1098');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('040fe169-0928-45e4-8a9d-8421f7c33bdc',1046.88,'Louise Quinn','ISOSURE','louisequinn@isosure.com','USD','+1 (937) 461-3497','945 Loring Avenue, Matthews, South Carolina, 8734');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('07566263-ccf0-4737-a241-a0ad5ca592f1',2117.37,'Hattie Crosby','RODEMCO','hattiecrosby@rodemco.com','USD','+1 (884) 572-2215','397 Nassau Avenue, Allison, Alaska, 5751');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('715d274d-8ca9-40c2-9945-3fb64d831df9',2737.81,'Lindsey Livingston','AMTAS','lindseylivingston@amtas.com','USD','+1 (983) 509-3976','291 Coles Street, Zeba, Puerto Rico, 2353');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('eb1cc471-d155-4106-ba16-780cc20eece3',3682.68,'Dora Owens','LOVEPAD','doraowens@lovepad.com','USD','+1 (948) 483-3015','370 Llama Court, Zortman, Louisiana, 3923');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('c4efdb6c-114b-425f-acff-2f84c619a39e',1437.2,'Charity Mccullough','EXOSWITCH','charitymccullough@exoswitch.com','USD','+1 (877) 405-3315','714 Willoughby Avenue, Camino, Palau, 1608');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('79e6b3b3-f2ea-424a-9cfe-255833704469',3762.78,'Barnett Gay','OPTICON','barnettgay@opticon.com','USD','+1 (962) 440-2458','314 Applegate Court, Gratton, New York, 7047');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('6caf7da5-5867-4b59-9d5e-70050d339990',1798.47,'Carlson Gomez','AUSTECH','carlsongomez@austech.com','USD','+1 (948) 455-2979','637 Gates Avenue, Saticoy, South Dakota, 8351');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('cc7aeb32-27b5-4c95-8a93-5c96c18e70cf',3514.14,'Wells Combs','TWIIST','wellscombs@twiist.com','USD','+1 (841) 473-3328','837 Cook Street, Genoa, Maryland, 5200');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('3e9ace27-2df1-4470-a39b-b755cdd6a36b',3059.41,'Delia Ramirez','ENDIPIN','deliaramirez@endipin.com','USD','+1 (974) 516-2482','203 Kingston Avenue, Hayden, Nebraska, 4636');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('e503c874-ac10-4012-bfe2-308f289cdbb0',3871.89,'Suzanne Merritt','LUNCHPOD','suzannemerritt@lunchpod.com','USD','+1 (912) 503-3921','802 Banner Avenue, Thornport, Florida, 8098');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('a897d095-0f68-4155-869d-de516508f044',2819.87,'Consuelo Pittman','COMTOUR','consuelopittman@comtour.com','USD','+1 (933) 456-3102','336 Withers Street, Crisman, Virginia, 5337');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('3f3702f1-29ba-4ba7-a463-bad000071a07',1080.54,'Tanisha Chen','COMDOM','tanishachen@comdom.com','USD','+1 (800) 567-2890','636 Anchorage Place, Valmy, Massachusetts, 3112');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('b3bb934f-6b92-404a-8c95-3bdec945d7fa',2739.56,'Camille Benton','PARCOE','camillebenton@parcoe.com','USD','+1 (992) 592-2559','608 Bragg Court, Imperial, Indiana, 2498');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('5cab0c66-d4ab-42fe-9066-942dcc97145b',2215.53,'Johanna Velazquez','ECSTASIA','johannavelazquez@ecstasia.com','USD','+1 (886) 441-3430','751 Quentin Road, Heil, American Samoa, 1805');
INSERT INTO SALES_MGT.NEW_LEADS(guid,balance,name,company,email,currency,phone,address) VALUES ('c6c652a3-6014-4cdd-b502-23bb083c072e',3922.4,'Sheryl Justice','KLUGGER','sheryljustice@klugger.com','USD','+1 (853) 530-2609','969 McClancy Place, Loomis, Vermont, 9449');
