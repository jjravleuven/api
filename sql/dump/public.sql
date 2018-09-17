/*
 Navicat Premium Data Transfer

 Source Server         : Ubuntu [development]
 Source Server Type    : PostgreSQL
 Source Server Version : 100001
 Source Host           : booktportal.cloudapp.net:5432
 Source Catalog        : booktportal
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100001
 File Encoding         : 65001

 Date: 27/04/2018 12:26:18
*/


-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS "public"."city";
CREATE TABLE "public"."city" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "s_id" text COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "province" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
ALTER TABLE "public"."city" OWNER TO "postgres";

-- ----------------------------
-- Records of city
-- ----------------------------
BEGIN;
INSERT INTO "public"."city" VALUES ('00197824-e72c-4242-8046-2615fd803612', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Estérel', 'Quebec');
INSERT INTO "public"."city" VALUES ('008a8e7d-829d-4ff9-b149-e578614c9e3a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Boucherville', 'Quebec');
INSERT INTO "public"."city" VALUES ('01123d95-4219-4b87-91f5-b174df5aa9f0', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Duncan', 'British Columbia');
INSERT INTO "public"."city" VALUES ('01565cfd-22e7-46c6-afc4-fd6262fc3156', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Adèle', 'Quebec');
INSERT INTO "public"."city" VALUES ('02136d00-59f2-438f-99f7-6acf59af78c4', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Port-Cartier', 'Quebec');
INSERT INTO "public"."city" VALUES ('02d9cae0-4e40-4398-a3f1-d4ca21805193', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sherbrooke', 'Quebec');
INSERT INTO "public"."city" VALUES ('036964be-0fbb-4d5b-8c6d-21f1f4290989', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Matane', 'Quebec');
INSERT INTO "public"."city" VALUES ('043e3986-b1d7-4fbc-a04c-aa97fbb05af5', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Augustin-de-Desmaures', 'Quebec');
INSERT INTO "public"."city" VALUES ('045c7e44-c22f-464b-8ace-7a1e3d14fd3f', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sept-Îles', 'Quebec');
INSERT INTO "public"."city" VALUES ('046019b0-a55b-46f2-b6ab-b4bfe82f9e82', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Basile', 'Quebec');
INSERT INTO "public"."city" VALUES ('04cf90cf-7c36-49cd-a434-de6f2865821a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Amqui', 'Quebec');
INSERT INTO "public"."city" VALUES ('052d6bb9-cec9-4aa4-b35a-32e868e8697b', '09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'Campbellton', 'New Brunswick');
INSERT INTO "public"."city" VALUES ('0617f440-252c-49ce-94bd-aa5db8d1b4f6', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Pitt Meadows', 'British Columbia');
INSERT INTO "public"."city" VALUES ('06cad5e1-905b-4cb3-a9b2-3b4bcdbf6e8f', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Waterloo', 'Ontario');
INSERT INTO "public"."city" VALUES ('0818398a-afb0-449f-9b6f-229f2a3f35ab', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Toronto', 'Ontario');
INSERT INTO "public"."city" VALUES ('082dd503-4262-489a-ba95-e1e6b969dd4e', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lachute', 'Quebec');
INSERT INTO "public"."city" VALUES ('094cd456-b298-475a-b419-d3d6332dfe49', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Kawartha Lakes', 'Ontario');
INSERT INTO "public"."city" VALUES ('09844137-42df-4705-9d6d-18395ebef1d3', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Winnipeg', 'Manitoba');
INSERT INTO "public"."city" VALUES ('0a0bb493-d62a-4785-9389-109ec7d6579b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Dorval', 'Quebec');
INSERT INTO "public"."city" VALUES ('0bdd3173-3442-4149-9f67-d45817a73596', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Coteau-du-Lac', 'Quebec');
INSERT INTO "public"."city" VALUES ('0c141e6d-ea7a-4983-b712-87da5b743032', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Marc-des-Carrières', 'Quebec');
INSERT INTO "public"."city" VALUES ('0d4ef18b-ff40-40fa-b1ec-c83c37cf4906', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Vancouver', 'British Columbia');
INSERT INTO "public"."city" VALUES ('0d6e29b8-73f3-46fa-b503-bd080259b346', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Merritt', 'British Columbia');
INSERT INTO "public"."city" VALUES ('0f600a32-4095-4aff-8634-c1981c5f3a22', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Cornwall', 'Ontario');
INSERT INTO "public"."city" VALUES ('0fd63b8c-dc4d-4c10-8663-2d666fddec79', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Charlemagne', 'Quebec');
INSERT INTO "public"."city" VALUES ('0fd773cd-2682-4bef-b61a-d7069c9343db', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Chambly', 'Quebec');
INSERT INTO "public"."city" VALUES ('1002eefe-e2b5-4536-a25a-18837a1684f3', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Owen Sound', 'Ontario');
INSERT INTO "public"."city" VALUES ('10bf80c2-66e7-4b2d-88d8-7738cfb4114b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Cookshire-Eaton', 'Quebec');
INSERT INTO "public"."city" VALUES ('10dfd3f7-1379-4f84-97b7-4f7fd3c48d96', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Port Alberni', 'British Columbia');
INSERT INTO "public"."city" VALUES ('10e277b3-cf3b-42f8-a9c5-8ca898edf85c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lorraine', 'Quebec');
INSERT INTO "public"."city" VALUES ('113519de-6327-4ff9-b15a-cdbb2bbfa460', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Beauharnois', 'Quebec');
INSERT INTO "public"."city" VALUES ('11acf94c-599f-4043-8f61-5f5e7153ae9d', 'bf747443-b54c-4191-a8ce-49435c261397', 'Corner Brook', 'Newfoundland and Labrador');
INSERT INTO "public"."city" VALUES ('1200292a-5ff2-4ff8-a83c-abc12f60f22d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Pont-Rouge', 'Quebec');
INSERT INTO "public"."city" VALUES ('12c42eb9-fb9e-4bf8-adf2-3aacca5f854b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Brome Lake', 'Quebec');
INSERT INTO "public"."city" VALUES ('132b09fc-1cdb-47d2-b2fc-109ba69488ae', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Armstrong', 'British Columbia');
INSERT INTO "public"."city" VALUES ('135bf3d8-b79a-4ad7-a764-fbb4c34020ec', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Val-d''Or', 'Quebec');
INSERT INTO "public"."city" VALUES ('13a927fe-811b-415d-b37f-233b10d52c46', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Ottawa', 'Ontario');
INSERT INTO "public"."city" VALUES ('14d0171b-3660-46de-8bac-d367551ed3f1', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Beaconsfield', 'Quebec');
INSERT INTO "public"."city" VALUES ('1502ff12-8fbd-418b-9d7c-decc246d0a18', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Prévost', 'Quebec');
INSERT INTO "public"."city" VALUES ('150f29bf-be9c-4c31-9e5c-2233a144a955', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Anne-des-Plaines', 'Quebec');
INSERT INTO "public"."city" VALUES ('156b5f52-6558-442f-afcf-9935ecb4283c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Catherine', 'Quebec');
INSERT INTO "public"."city" VALUES ('15f4197e-59a9-4a35-9d21-a05c27a4074c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Matagami', 'Quebec');
INSERT INTO "public"."city" VALUES ('160fa404-95bd-43f8-89ea-e40d4bab0951', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lac-Mégantic', 'Quebec');
INSERT INTO "public"."city" VALUES ('163f8259-7eff-4733-8568-c8de08ec89fb', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Deux-Montagnes', 'Quebec');
INSERT INTO "public"."city" VALUES ('1653135d-9467-44e5-a45a-b8d811c0d05d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Dolbeau-Mistassini', 'Quebec');
INSERT INTO "public"."city" VALUES ('16dbb4b8-1082-47b4-9ecd-d9de028abe2f', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Hamilton', 'Ontario');
INSERT INTO "public"."city" VALUES ('18eef208-b145-4c82-8710-558b22c556d4', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Sarnia', 'Ontario');
INSERT INTO "public"."city" VALUES ('19632e1c-1eb1-4925-9ac9-7b5c72ac7382', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Greater Sudbury', 'Ontario');
INSERT INTO "public"."city" VALUES ('196b40f3-5135-4c0d-909b-4e6ce36bd76c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Drummondville', 'Quebec');
INSERT INTO "public"."city" VALUES ('19b50ee2-e7d7-4b72-966a-fbd2da385512', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Portage la Prairie', 'Manitoba');
INSERT INTO "public"."city" VALUES ('1a2ac1a1-010d-47b5-97c8-93ea244073a9', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Pincourt', 'Quebec');
INSERT INTO "public"."city" VALUES ('1a3ee83c-2d68-4182-bd97-f5ff28f1d9d3', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'North Bay', 'Ontario');
INSERT INTO "public"."city" VALUES ('1b88b490-f358-4608-b8c0-2afd33133937', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Prince George', 'British Columbia');
INSERT INTO "public"."city" VALUES ('1bb3eb28-559e-4054-9e72-d1a5a0a1527c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Clermont', 'Quebec');
INSERT INTO "public"."city" VALUES ('1bff02d5-d18e-437b-adb9-60b0360005c0', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Rossland', 'British Columbia');
INSERT INTO "public"."city" VALUES ('1cbf1b8c-1c04-480b-9906-1a4374278b89', '09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'Moncton', 'New Brunswick');
INSERT INTO "public"."city" VALUES ('1d4a18ee-cbb6-48e6-88f7-fdea6828ffb8', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Flin Flon (part)', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('1e051508-efa2-4e7a-a530-90503b28b838', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'La Prairie', 'Quebec');
INSERT INTO "public"."city" VALUES ('1ebf6104-ff49-47bc-b45b-871d498e8a9a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Félicien', 'Quebec');
INSERT INTO "public"."city" VALUES ('2065b5f4-3ae4-4296-8a9a-2133bfd6ee1d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Bedford', 'Quebec');
INSERT INTO "public"."city" VALUES ('2139a626-1090-4e79-8d30-1cfadb8f3f8b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Thetford Mines', 'Quebec');
INSERT INTO "public"."city" VALUES ('2192c6ef-74b1-41c6-85ba-031161dc0d2a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'East Angus', 'Quebec');
INSERT INTO "public"."city" VALUES ('21da3474-9dc4-4c80-81d5-9281cbcd8279', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Léry', 'Quebec');
INSERT INTO "public"."city" VALUES ('22aec08a-93a7-4cdb-adad-eb1f5e924ae4', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Pembroke', 'Ontario');
INSERT INTO "public"."city" VALUES ('237cab92-e3f2-49bd-9980-e9bcefcadb26', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Pohénégamook', 'Quebec');
INSERT INTO "public"."city" VALUES ('24ae29de-6530-4a7a-a83b-1656dc8cc028', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Mascouche', 'Quebec');
INSERT INTO "public"."city" VALUES ('269c7c0e-d999-4627-b16a-a8f27f540921', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Stratford', 'Ontario');
INSERT INTO "public"."city" VALUES ('26b7d2a7-0bab-4851-94fb-347eb8af1fe7', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Windsor', 'Ontario');
INSERT INTO "public"."city" VALUES ('2741c925-f585-4ecd-87e2-15b89b9d99e4', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Kenora', 'Ontario');
INSERT INTO "public"."city" VALUES ('282123ac-b6da-45df-9644-f972ab7b89a0', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Châteauguay', 'Quebec');
INSERT INTO "public"."city" VALUES ('284c3817-182e-4750-8dd0-95d4350df6fc', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Airdrie', 'Alberta');
INSERT INTO "public"."city" VALUES ('284fcea8-6ed2-4ea0-a7d7-23db71470a1b', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Williams Lake', 'British Columbia');
INSERT INTO "public"."city" VALUES ('285d1825-9856-4688-9305-044259e867e4', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Revelstoke', 'British Columbia');
INSERT INTO "public"."city" VALUES ('2893b637-9086-43d8-a701-8da9dda23dd7', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Bois-des-Filion', 'Quebec');
INSERT INTO "public"."city" VALUES ('28b60754-20d7-427e-9bbf-dacdd13a0fd1', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Gracefield', 'Quebec');
INSERT INTO "public"."city" VALUES ('28cccb29-46b9-485f-8c98-61f0f75dbda6', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Bécancour', 'Quebec');
INSERT INTO "public"."city" VALUES ('290d5023-a229-42c0-a042-2499ecbe7b14', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Langford', 'British Columbia');
INSERT INTO "public"."city" VALUES ('29225dfb-5776-4cee-880a-4394185a283b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Baie-Saint-Paul', 'Quebec');
INSERT INTO "public"."city" VALUES ('29ddad6c-a39c-40dd-aa53-0acda0c34245', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Rimouski', 'Quebec');
INSERT INTO "public"."city" VALUES ('2abed40e-6b84-4fb3-bf39-7676e3a87421', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Belleterre', 'Quebec');
INSERT INTO "public"."city" VALUES ('2b0cdbc2-1af7-4214-a6aa-b5b24fca1f9d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Anne-de-Bellevue', 'Quebec');
INSERT INTO "public"."city" VALUES ('2bbbb928-d349-4828-8895-5d21addfb5fc', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Brandon', 'Manitoba');
INSERT INTO "public"."city" VALUES ('2c4c093a-709a-4bbe-80dd-15a90b883c6c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Marie', 'Quebec');
INSERT INTO "public"."city" VALUES ('2d2abe8d-3784-40eb-8095-8180cf254c10', '09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'Edmundston', 'New Brunswick');
INSERT INTO "public"."city" VALUES ('2e5e79b5-cbd0-4bc6-97e5-454090ece078', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Fermont', 'Quebec');
INSERT INTO "public"."city" VALUES ('2ede0d58-9046-4c67-9d88-a781682feb45', '09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'Bathurst', 'New Brunswick');
INSERT INTO "public"."city" VALUES ('2f1e607e-fa70-4dcd-b041-3bc739445a34', '14e195ad-be6e-42e2-be2d-65a8d4d47fec', 'Yellowknife', 'Northwest Territories');
INSERT INTO "public"."city" VALUES ('2f92b3f6-d60d-4119-a4fb-11de5cbfa16f', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'L''Île-Cadieux', 'Quebec');
INSERT INTO "public"."city" VALUES ('2fb4ff1a-6d1f-4a15-8d1f-46b048848309', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Fossambault-sur-le-Lac', 'Quebec');
INSERT INTO "public"."city" VALUES ('3075bf22-ec6c-4bfa-a0a6-bd4ce6522652', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Beloeil', 'Quebec');
INSERT INTO "public"."city" VALUES ('30c5406f-59b5-4097-9ddc-f72c8bb19107', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Kitchener', 'Ontario');
INSERT INTO "public"."city" VALUES ('30c92746-95dd-4ede-9d2e-69a745505178', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Métis-sur-Mer', 'Quebec');
INSERT INTO "public"."city" VALUES ('3241b368-9f6e-4431-aceb-8eaf4f8a8b56', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Chandler', 'Quebec');
INSERT INTO "public"."city" VALUES ('344a70d3-e5cb-46a6-9f11-9f9f9dfbd9c6', '09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'Miramichi', 'New Brunswick');
INSERT INTO "public"."city" VALUES ('35a67b9b-1c91-4d3a-be78-afb58a68ff39', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Percé', 'Quebec');
INSERT INTO "public"."city" VALUES ('36123f4e-ac51-45ed-80cd-5353339f22ae', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Princeville', 'Quebec');
INSERT INTO "public"."city" VALUES ('36e199cc-0ad2-4eb5-b74a-83c73bcbca9e', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Colwood', 'British Columbia');
INSERT INTO "public"."city" VALUES ('370f10a9-59fb-4ec9-9532-2417ec91f2de', 'bf747443-b54c-4191-a8ce-49435c261397', 'Mount Pearl', 'Newfoundland and Labrador');
INSERT INTO "public"."city" VALUES ('38535a0b-578c-482d-b2e7-56b9ef25dfb6', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Markham', 'Ontario');
INSERT INTO "public"."city" VALUES ('39150f65-7bd0-418f-886a-d2549e0056a6', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Rosemère', 'Quebec');
INSERT INTO "public"."city" VALUES ('39428b80-c335-43c5-9082-498da3ca6fc1', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Castlegar', 'British Columbia');
INSERT INTO "public"."city" VALUES ('39552289-be37-40d5-a1d7-408c94c113b1', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Mississauga', 'Ontario');
INSERT INTO "public"."city" VALUES ('3ad8f671-c433-4e34-a2c2-c32081965de8', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Catherine-de-la-Jacques-Cartier', 'Quebec');
INSERT INTO "public"."city" VALUES ('3ba2741d-7229-498c-bf4d-b518959f64f3', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Beauceville', 'Quebec');
INSERT INTO "public"."city" VALUES ('3bd76e06-f423-449a-9b1a-f73f4f02ab32', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Joliette', 'Quebec');
INSERT INTO "public"."city" VALUES ('3bff8ceb-a5b9-4f98-b9f2-b5e6ba12af4e', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Coquitlam', 'British Columbia');
INSERT INTO "public"."city" VALUES ('3ca5ec11-8476-4be0-8ac1-7187437ae569', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Anne-de-Beaupré', 'Quebec');
INSERT INTO "public"."city" VALUES ('3ccb4e32-7504-45be-ad2a-df9629e9b9d1', '1a3cf21f-9648-4de3-9966-857014de2305', 'Iqaluit', 'Nunavut');
INSERT INTO "public"."city" VALUES ('3d35b13e-90d5-44f4-8d80-551115a34d0a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Château-Richer', 'Quebec');
INSERT INTO "public"."city" VALUES ('3de64e81-75ad-4445-a751-857e2d670cbc', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Baie-D''Urfé', 'Quebec');
INSERT INTO "public"."city" VALUES ('3e2c07ac-4bc9-4776-9cbd-00919a341d41', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Winkler', 'Manitoba');
INSERT INTO "public"."city" VALUES ('3f1a64d5-f8ca-4b12-8d60-65947e5baae0', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Lambert', 'Quebec');
INSERT INTO "public"."city" VALUES ('3f9f7258-f3f6-47f4-8838-091b02b98e6a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Notre-Dame-de-l''Île-Perrot', 'Quebec');
INSERT INTO "public"."city" VALUES ('3fd2a2d3-f9e5-42cc-b485-5f4b59f23d83', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Terrace', 'British Columbia');
INSERT INTO "public"."city" VALUES ('413ce664-3fbc-419e-bf9e-f8d42dfd6330', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'New Westminster', 'British Columbia');
INSERT INTO "public"."city" VALUES ('418c4bf8-0ffe-4085-b8f7-e50a88e120bb', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Valcourt', 'Quebec');
INSERT INTO "public"."city" VALUES ('41a94326-053d-4b3d-ba81-622685b7e93b', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'St. Catharines', 'Ontario');
INSERT INTO "public"."city" VALUES ('44a82864-0fbb-4c95-8270-78fdbbb23ab0', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Thompson', 'Manitoba');
INSERT INTO "public"."city" VALUES ('45fa5f9b-63cd-421a-842c-095a4af1bfd3', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Camrose', 'Alberta');
INSERT INTO "public"."city" VALUES ('47480040-cfb9-4037-8337-c14cb08de3dd', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Barkmere', 'Quebec');
INSERT INTO "public"."city" VALUES ('47657ae8-c6e9-4dbf-a93c-83b70147b530', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Port Moody', 'British Columbia');
INSERT INTO "public"."city" VALUES ('48021b9c-fbab-443e-9add-707ddf9cd46e', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Melville', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('48159379-8d11-4702-b5f7-10a3bd67047a', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Campbell River', 'British Columbia');
INSERT INTO "public"."city" VALUES ('48b6930f-db52-4378-98f8-304d2be9d33e', '09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'Fredericton', 'New Brunswick');
INSERT INTO "public"."city" VALUES ('4b1370fe-8662-4182-9161-cf59a9e4f326', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'L''Île-Perrot', 'Quebec');
INSERT INTO "public"."city" VALUES ('4d764d94-9aca-4304-ae7a-9e68d5f3f27c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Ville-Marie', 'Quebec');
INSERT INTO "public"."city" VALUES ('4e33b395-aad0-4f9c-b135-56703b625ca5', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Repentigny', 'Quebec');
INSERT INTO "public"."city" VALUES ('4e7211e1-45ba-4da0-be29-7225173ef643', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Asbestos', 'Quebec');
INSERT INTO "public"."city" VALUES ('4ea84412-85bf-4d64-823f-867c6004be28', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Leduc', 'Alberta');
INSERT INTO "public"."city" VALUES ('4ed6056a-a4b9-4d84-b96c-31fc0cab0286', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Sauveur', 'Quebec');
INSERT INTO "public"."city" VALUES ('4f11f7d1-3ece-4543-9627-3a0a74575f67', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Langley', 'British Columbia');
INSERT INTO "public"."city" VALUES ('4fa43011-8c61-4075-9f4f-443456677c44', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Bruno-de-Montarville', 'Quebec');
INSERT INTO "public"."city" VALUES ('5096be87-792f-47e4-8f9a-9ddb34687aa4', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Victoriaville', 'Quebec');
INSERT INTO "public"."city" VALUES ('513a557f-5cde-4246-b5e2-7db47a62a777', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'La Pocatière', 'Quebec');
INSERT INTO "public"."city" VALUES ('51431138-7644-4289-b22d-27357ab68b7a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Côte Saint-Luc', 'Quebec');
INSERT INTO "public"."city" VALUES ('53b47ae5-2dc4-426b-9f14-3b9a92602ce2', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Belleville', 'Ontario');
INSERT INTO "public"."city" VALUES ('54ce6168-b675-4ce1-b84c-70105a1012c9', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Joseph-de-Sorel', 'Quebec');
INSERT INTO "public"."city" VALUES ('55816cb5-9fe1-4336-8986-4bff7bba73e5', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Bromont', 'Quebec');
INSERT INTO "public"."city" VALUES ('5593ecfb-250a-4c0b-a3e2-0fb15132dacd', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Beaupré', 'Quebec');
INSERT INTO "public"."city" VALUES ('55cb253c-6601-4fb7-969d-e292735f2e85', '352ab45d-8553-4262-a8e2-512d2db4ad95', 'Summerside', 'Prince Edward Island');
INSERT INTO "public"."city" VALUES ('55ec0a89-dfe9-4782-94b2-5717334459a1', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Cowansville', 'Quebec');
INSERT INTO "public"."city" VALUES ('55fa0b14-ea9c-4413-b348-511feae9a1e9', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Bonaventure', 'Quebec');
INSERT INTO "public"."city" VALUES ('56868c24-e128-4e21-9d24-e2b11892ad7b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Grande-Rivière', 'Quebec');
INSERT INTO "public"."city" VALUES ('585fc070-f46d-4ce8-a9a3-a91e65f2d877', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Edmonton', 'Alberta');
INSERT INTO "public"."city" VALUES ('59cbe932-d106-4ab9-b81a-85c8e06cdc6e', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Scotstown', 'Quebec');
INSERT INTO "public"."city" VALUES ('5a20c974-e26d-4ddf-89fb-c6f7f4736c18', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Saskatoon', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('5c48fe72-1e3f-474f-a694-e13328ba26b9', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Greenwood', 'British Columbia');
INSERT INTO "public"."city" VALUES ('5d81feaf-4128-41e0-966c-f6ead3459043', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Moose Jaw', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('5f50f97e-af9b-41f4-8473-48fafc017e5b', '09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'Dieppe', 'New Brunswick');
INSERT INTO "public"."city" VALUES ('6113b2c6-757e-48a9-985e-3eb4d034be69', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Georges', 'Quebec');
INSERT INTO "public"."city" VALUES ('633ff636-e2e3-4492-a626-9b31b20ffa1c', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Humboldt', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('63500dc5-ab91-46fe-a82e-3650e2535484', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Richmond', 'British Columbia');
INSERT INTO "public"."city" VALUES ('63ce1295-ca8f-4a9d-9129-eb7298d36712', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Longueuil', 'Quebec');
INSERT INTO "public"."city" VALUES ('64d4b413-dbd0-4c40-8a56-2f3f2e03ee20', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'MétabetchouanLac-à-la-Croix', 'Quebec');
INSERT INTO "public"."city" VALUES ('65ca35ab-c3af-4daa-9b64-f0d0c8eb5a1b', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Wetaskiwin', 'Alberta');
INSERT INTO "public"."city" VALUES ('667b38a0-c5d6-4ff3-a797-f9cc551e6442', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Hyacinthe', 'Quebec');
INSERT INTO "public"."city" VALUES ('67401707-0f6e-4d48-b7e7-637582ac0b12', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Salaberry-de-Valleyfield', 'Quebec');
INSERT INTO "public"."city" VALUES ('67558c91-8acd-4b20-87da-c6c567ef96c3', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Hampstead', 'Quebec');
INSERT INTO "public"."city" VALUES ('6991655e-8168-4d51-9c6e-349189e1dec4', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Pie', 'Quebec');
INSERT INTO "public"."city" VALUES ('6a30bf31-48d2-4cb3-b978-b5ae3002879a', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Burnaby', 'British Columbia');
INSERT INTO "public"."city" VALUES ('6ab8ca9e-a379-4a2a-a52f-e2f6eb6212c5', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Dryden', 'Ontario');
INSERT INTO "public"."city" VALUES ('6c01b1ce-1341-4a50-be19-1c7c80ecc90c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Pascal', 'Quebec');
INSERT INTO "public"."city" VALUES ('6eed02c0-fa00-45cc-a4eb-5960228e4425', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Westmount', 'Quebec');
INSERT INTO "public"."city" VALUES ('6f105d2a-99bf-47f8-939f-59e5977d4373', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Dawson Creek', 'British Columbia');
INSERT INTO "public"."city" VALUES ('6fd2b9c0-7b08-45df-843a-8fd42b6fd3f6', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Témiscaming', 'Quebec');
INSERT INTO "public"."city" VALUES ('709883e6-10ad-498a-bca6-158eba190847', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lac-Sergent', 'Quebec');
INSERT INTO "public"."city" VALUES ('70a0b273-3d35-42c4-9421-774fd7eab4e8', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Windsor', 'Quebec');
INSERT INTO "public"."city" VALUES ('71282264-2a92-457d-bf27-7369f8e92d77', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Waterville', 'Quebec');
INSERT INTO "public"."city" VALUES ('72128f4c-9623-4ef7-8bc5-cf988dca59fb', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'New Richmond', 'Quebec');
INSERT INTO "public"."city" VALUES ('727f27c8-7ed2-4140-99f9-677f161a7bb9', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Otterburn Park', 'Quebec');
INSERT INTO "public"."city" VALUES ('731082d8-2144-4e68-8ebe-b8423b3c8238', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Medicine Hat', 'Alberta');
INSERT INTO "public"."city" VALUES ('7711f7de-4efc-4852-963f-ec1b890133e7', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Thérèse', 'Quebec');
INSERT INTO "public"."city" VALUES ('77551224-c043-4cc5-8257-13eb41b89217', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'La Tuque', 'Quebec');
INSERT INTO "public"."city" VALUES ('779c747f-bc24-48d6-8465-f895517e5b38', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Coaticook', 'Quebec');
INSERT INTO "public"."city" VALUES ('78214b6e-1001-49f6-8015-3c8b996a5341', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Meadow Lake', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('784449bd-f5e2-4f9a-8e6c-8d71d5dcc087', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Cap-Chat', 'Quebec');
INSERT INTO "public"."city" VALUES ('794d33c5-1360-4c93-b4ca-300f636c963d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Montreal', 'Quebec');
INSERT INTO "public"."city" VALUES ('7a6c47dc-d30a-4e57-a850-f295e458ba97', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Montmagny', 'Quebec');
INSERT INTO "public"."city" VALUES ('7b85c37c-67ba-4213-ba6b-91f87c51f32f', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Marieville', 'Quebec');
INSERT INTO "public"."city" VALUES ('7c273609-8aef-4d60-aedc-cfbba79e5932', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Shawinigan', 'Quebec');
INSERT INTO "public"."city" VALUES ('7c2f6d1d-76ea-497c-ac8c-d36b6e4a0a55', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Terrebonne', 'Quebec');
INSERT INTO "public"."city" VALUES ('7c7f0986-fa5e-45a1-83bb-7a4462553d7d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Dollard-des-Ormeaux', 'Quebec');
INSERT INTO "public"."city" VALUES ('7d755334-8dbf-4fb5-aad2-f31b2826284c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Boisbriand', 'Quebec');
INSERT INTO "public"."city" VALUES ('7f63021c-316a-490a-a2c1-2eeadfe1f05c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Vaudreuil-Dorion', 'Quebec');
INSERT INTO "public"."city" VALUES ('7fe79355-df83-4d91-96fc-e46def335fa8', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Ours', 'Quebec');
INSERT INTO "public"."city" VALUES ('8152cdac-df84-43ba-b3cd-345dd401cecd', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Kingsey Falls', 'Quebec');
INSERT INTO "public"."city" VALUES ('81abbe4a-5b9b-44a3-8d00-da91b60d7b87', 'bf747443-b54c-4191-a8ce-49435c261397', 'St. John''s', 'Newfoundland and Labrador');
INSERT INTO "public"."city" VALUES ('81ce9237-9fc1-4990-9464-6cd0af15d5d6', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Richmond', 'Quebec');
INSERT INTO "public"."city" VALUES ('82f41aba-c3a3-45d5-a3f2-0b51973b3675', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Spruce Grove', 'Alberta');
INSERT INTO "public"."city" VALUES ('836a9bb1-44ae-43ef-9230-96eb124ed82e', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Cambridge', 'Ontario');
INSERT INTO "public"."city" VALUES ('83d66785-9522-43fd-b05c-ae5df36642e6', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Powell River', 'British Columbia');
INSERT INTO "public"."city" VALUES ('84319bb1-5bff-4ea2-b8bb-63bd880bf944', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Rivière-du-Loup', 'Quebec');
INSERT INTO "public"."city" VALUES ('84486cec-86ae-4fcc-a141-eaa84c35940c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Disraeli', 'Quebec');
INSERT INTO "public"."city" VALUES ('86136750-adc2-444d-b520-ddb1b051281c', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Calgary', 'Alberta');
INSERT INTO "public"."city" VALUES ('865293f7-6b8f-4201-a530-c007a8f6647e', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Lacombe', 'Alberta');
INSERT INTO "public"."city" VALUES ('86a683eb-f71a-4032-9468-af04fb4a8dbb', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Lethbridge', 'Alberta');
INSERT INTO "public"."city" VALUES ('86e140b9-fea6-448d-b669-6f0db8768706', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lévis', 'Quebec');
INSERT INTO "public"."city" VALUES ('89eb6c4e-e33c-4142-82f2-51f9db0b0ded', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Nanaimo', 'British Columbia');
INSERT INTO "public"."city" VALUES ('8b2d8d79-4f74-4d08-aa11-99e2b2641d38', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Causapscal', 'Quebec');
INSERT INTO "public"."city" VALUES ('8c5dd992-4ddb-4fa6-ad5f-820a8927d54e', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Morden', 'Manitoba');
INSERT INTO "public"."city" VALUES ('8ccf43ac-6d93-4072-a1f8-686d9192cf4a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Malartic', 'Quebec');
INSERT INTO "public"."city" VALUES ('8d2a6cb4-f4a4-4538-8a6f-3292296d926a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Mont-Saint-Hilaire', 'Quebec');
INSERT INTO "public"."city" VALUES ('8dd2b909-3e3b-442b-9403-32bd64b82904', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Haldimand County', 'Ontario');
INSERT INTO "public"."city" VALUES ('8df289f3-b0c3-4ea0-952a-624f9e545060', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Mont-Joli', 'Quebec');
INSERT INTO "public"."city" VALUES ('8e2d82d6-657e-46b5-8b21-9e3db86bce4b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Kirkland', 'Quebec');
INSERT INTO "public"."city" VALUES ('90660adc-8f51-4c6c-b8da-e460811afe45', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lebel-sur-Quévillon', 'Quebec');
INSERT INTO "public"."city" VALUES ('91d24251-1163-43e7-8afa-bc3eb7f32c06', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lavaltrie', 'Quebec');
INSERT INTO "public"."city" VALUES ('92414df3-3ae7-4ace-a766-d08b0f0c1ada', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Paspébiac', 'Quebec');
INSERT INTO "public"."city" VALUES ('929ce1c3-1403-42ab-9474-4b7ccd8dcfe7', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Jérôme', 'Quebec');
INSERT INTO "public"."city" VALUES ('92fb8c47-29b7-4f20-86c6-5b4e49153e9f', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Steinbach', 'Manitoba');
INSERT INTO "public"."city" VALUES ('93922fc6-8fde-4c20-86ef-301cdd796015', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Timmins', 'Ontario');
INSERT INTO "public"."city" VALUES ('940958f3-fc73-4ffb-b67a-d4b632bd006e', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Chapais', 'Quebec');
INSERT INTO "public"."city" VALUES ('94b52c64-099b-496c-8827-b3843861c8e9', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Murdochville', 'Quebec');
INSERT INTO "public"."city" VALUES ('97c7d160-647e-4c30-a758-de34ca327b56', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Normandin', 'Quebec');
INSERT INTO "public"."city" VALUES ('98580d04-b786-445f-9810-14179d6441ef', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Granby', 'Quebec');
INSERT INTO "public"."city" VALUES ('98951a7e-988f-414f-a31c-e3d15f15721a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Thurso', 'Quebec');
INSERT INTO "public"."city" VALUES ('992da887-6c6b-4f7e-9a77-5d268c19d99f', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Jean-sur-Richelieu', 'Quebec');
INSERT INTO "public"."city" VALUES ('9a909675-cb5d-4385-b1a1-8d998a09808a', '352ab45d-8553-4262-a8e2-512d2db4ad95', 'Charlottetown', 'Prince Edward Island');
INSERT INTO "public"."city" VALUES ('9ae80095-a91b-4c45-b4ae-727daac5f178', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saguenay', 'Quebec');
INSERT INTO "public"."city" VALUES ('9af17607-1c48-44bf-b4a3-8097c19bcd56', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Baie-Comeau', 'Quebec');
INSERT INTO "public"."city" VALUES ('9c48cd7f-b62f-4f1a-90c7-2f9bcdd43e2f', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Brantford', 'Ontario');
INSERT INTO "public"."city" VALUES ('9c500384-0dbd-4a75-a48b-ed9df3041371', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Red Deer', 'Alberta');
INSERT INTO "public"."city" VALUES ('9c69a44e-ecf7-43b3-9633-6b1f80b1aefa', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Maniwaki', 'Quebec');
INSERT INTO "public"."city" VALUES ('9c8c9bc1-0299-4d56-8916-be946db15301', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Amos', 'Quebec');
INSERT INTO "public"."city" VALUES ('9d3ee127-597f-4658-990e-0e8f2cd218b7', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Raymond', 'Quebec');
INSERT INTO "public"."city" VALUES ('9ea80d60-b8be-4f40-a3b9-012c0b35ab16', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Nelson', 'British Columbia');
INSERT INTO "public"."city" VALUES ('9ec3d0c4-8b3f-49c2-8939-92f92c6e9c37', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Yorkton', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('9ef86889-0f85-4775-9223-c83548bc461c', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Regina', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('9fb5cd22-b829-4c30-83d6-2dc7b77f9062', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sorel-Tracy', 'Quebec');
INSERT INTO "public"."city" VALUES ('9ffeaa94-f275-46e2-b34e-c8d2e2084798', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Fort Saskatchewan', 'Alberta');
INSERT INTO "public"."city" VALUES ('a19fd39b-5431-4d5a-9b02-a2df479f4f89', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Danville', 'Quebec');
INSERT INTO "public"."city" VALUES ('a1c10b72-f9c9-4a47-8eb7-c929812b6b3c', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Weyburn', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('a204498d-ccc9-4730-a77c-35341d2dcbf6', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Brossard', 'Quebec');
INSERT INTO "public"."city" VALUES ('a24abe6c-52fc-41cb-9094-6c247d9e3479', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Selkirk', 'Manitoba');
INSERT INTO "public"."city" VALUES ('a28448da-047d-4e86-b86e-8253d722a690', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Chilliwack', 'British Columbia');
INSERT INTO "public"."city" VALUES ('a2b2596a-0fa7-4e84-adba-3eae004ec951', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lac-Saint-Joseph', 'Quebec');
INSERT INTO "public"."city" VALUES ('a2d2b452-bb5e-4f00-8a62-ff48098a8c83', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Guelph', 'Ontario');
INSERT INTO "public"."city" VALUES ('a369b4eb-fdb7-4a08-944a-80d62f07ae80', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Parksville', 'British Columbia');
INSERT INTO "public"."city" VALUES ('a5300501-71df-46df-aec6-f0072e9e68d7', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Macamic', 'Quebec');
INSERT INTO "public"."city" VALUES ('a55d4d2a-a0aa-4d72-8663-63a4d2214443', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Port Colborne', 'Ontario');
INSERT INTO "public"."city" VALUES ('a60135d4-cf0c-4801-9992-3243d327b5d5', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Donnacona', 'Quebec');
INSERT INTO "public"."city" VALUES ('a7f290d4-e230-4dc8-8f09-a93e1d158266', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Thorold', 'Ontario');
INSERT INTO "public"."city" VALUES ('a8a87a22-c49e-4222-8637-ea5a900a858a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Varennes', 'Quebec');
INSERT INTO "public"."city" VALUES ('a95cae5c-c8d6-4aef-8b14-fd0ab08501de', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Chestermere', 'Alberta');
INSERT INTO "public"."city" VALUES ('a98d2155-39a7-4dc9-be04-9e9b5b419964', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Dauphin', 'Manitoba');
INSERT INTO "public"."city" VALUES ('aa3c8769-9e2e-4d77-a44a-bd584a4b9a82', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Penticton', 'British Columbia');
INSERT INTO "public"."city" VALUES ('ab925a0c-9ee7-44e6-bd1d-bf41f9d4de1f', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'St. Thomas', 'Ontario');
INSERT INTO "public"."city" VALUES ('ab9c601a-4c18-4d1b-ad8d-48e910c85823', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Hudson', 'Quebec');
INSERT INTO "public"."city" VALUES ('acca8fa8-f2a5-40ee-8971-cd4e25fa1a7f', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Barrie', 'Ontario');
INSERT INTO "public"."city" VALUES ('ad12ac0e-2667-411b-9421-cc114f1e390e', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Carleton-sur-Mer', 'Quebec');
INSERT INTO "public"."city" VALUES ('adff1d65-5a7d-4bff-bac6-98d1a9e5f4fe', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Farnham', 'Quebec');
INSERT INTO "public"."city" VALUES ('aec4545d-16dd-4623-86a2-b8c539052428', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Lin-Laurentides', 'Quebec');
INSERT INTO "public"."city" VALUES ('af009646-e0cb-4931-89b6-c92807f88a95', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Warman', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('b013c5c6-ae3e-41cd-b42b-7a8afb268c2d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Eustache', 'Quebec');
INSERT INTO "public"."city" VALUES ('b054876e-876d-47a7-8ccd-88db1c6b4c0b', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Kelowna', 'British Columbia');
INSERT INTO "public"."city" VALUES ('b0cc51dc-cb6c-4738-a7ca-6bf4ab76f4ea', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Acton Vale', 'Quebec');
INSERT INTO "public"."city" VALUES ('b2b01ed2-a0aa-4938-8183-15831a1246c8', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Cold Lake', 'Alberta');
INSERT INTO "public"."city" VALUES ('b3f398b0-82de-4186-96d4-72d8c0c02823', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Pickering', 'Ontario');
INSERT INTO "public"."city" VALUES ('b43b9305-723a-4ef0-aa33-d461922c43e2', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Norfolk County', 'Ontario');
INSERT INTO "public"."city" VALUES ('b47a225e-44af-4df3-9cd6-d6459b0dd634', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'L''Île-Dorval', 'Quebec');
INSERT INTO "public"."city" VALUES ('b53d745e-0ef3-4338-9554-8f0479bd32df', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'North Vancouver', 'British Columbia');
INSERT INTO "public"."city" VALUES ('b5c1d4ef-f02a-43ca-a17f-7523f25ee55f', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Dégelis', 'Quebec');
INSERT INTO "public"."city" VALUES ('b6625e22-4acf-415e-86bb-1679cba5b240', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'North Battleford', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('b72995aa-4c2b-449f-bd07-92c6174ee62a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Joseph-de-Beauce', 'Quebec');
INSERT INTO "public"."city" VALUES ('b7a4485f-345e-4157-ab50-2f4addb4103e', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Mirabel', 'Quebec');
INSERT INTO "public"."city" VALUES ('b7bd9e82-cea3-4d0b-b65d-273c0128c51a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Québec', 'Quebec');
INSERT INTO "public"."city" VALUES ('b8b2efe7-9fee-447c-8082-949c37f977ed', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Constant', 'Quebec');
INSERT INTO "public"."city" VALUES ('b8b551e8-e000-491e-9228-5520e397ec3c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Rivière-Rouge', 'Quebec');
INSERT INTO "public"."city" VALUES ('b9007cab-922f-4015-9b84-0468f96c0638', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Mount Royal', 'Quebec');
INSERT INTO "public"."city" VALUES ('b9215084-7340-40e0-904e-a47504e05ccc', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Contrecoeur', 'Quebec');
INSERT INTO "public"."city" VALUES ('b969e2ac-0fa9-4d9a-a5fd-3da52b3cff1e', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Warwick', 'Quebec');
INSERT INTO "public"."city" VALUES ('b9720715-347e-4c01-84a8-690bf5e9bc8f', '188ea6f2-3111-4121-926c-cae8bb522b43', 'St. Albert', 'Alberta');
INSERT INTO "public"."city" VALUES ('b9a9e327-fa6d-4784-8080-b1b33a824caa', '09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'Saint John', 'New Brunswick');
INSERT INTO "public"."city" VALUES ('b9dea8d9-d9be-44f5-98c6-d7b2cc9a523d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Forestville', 'Quebec');
INSERT INTO "public"."city" VALUES ('ba060375-ea09-4c95-b249-08908f241b97', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Welland', 'Ontario');
INSERT INTO "public"."city" VALUES ('ba80c24f-85c7-43c8-ad8e-c9ce53b21c23', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Brampton', 'Ontario');
INSERT INTO "public"."city" VALUES ('ba866f9f-c793-4a2b-a881-ab555a055ea1', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Brockville', 'Ontario');
INSERT INTO "public"."city" VALUES ('bb5b2e65-3ac7-459e-9b2e-5c8ecce3984b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Alma', 'Quebec');
INSERT INTO "public"."city" VALUES ('bbbd6436-26a8-4b63-969f-484689f3acb4', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'L''Assomption', 'Quebec');
INSERT INTO "public"."city" VALUES ('bc98bec6-f18f-450c-8fae-b979b8b16a34', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Neuville', 'Quebec');
INSERT INTO "public"."city" VALUES ('bc9b0934-9ed2-4bd9-b98a-15ad9b38ff57', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Salmon Arm', 'British Columbia');
INSERT INTO "public"."city" VALUES ('bd78f5c5-07ff-4530-b445-aec725cd5444', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Fernie', 'British Columbia');
INSERT INTO "public"."city" VALUES ('bdb419c9-70f4-4b09-86f9-0ad56bf5b3b3', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Basile-le-Grand', 'Quebec');
INSERT INTO "public"."city" VALUES ('bddd0758-28b7-4340-8323-8b54c5c4db4b', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Vernon', 'British Columbia');
INSERT INTO "public"."city" VALUES ('be1c9797-3df4-4161-b252-b6cedd34d3ed', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Burlington', 'Ontario');
INSERT INTO "public"."city" VALUES ('becebd05-e438-444a-93b3-ef881020ae22', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Lazare', 'Quebec');
INSERT INTO "public"."city" VALUES ('bf1bfbc9-9d6f-4aa0-8427-586f844b9271', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Rémi', 'Quebec');
INSERT INTO "public"."city" VALUES ('bf4572d1-add1-43d8-99ce-9c4bcb35d852', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Laval', 'Quebec');
INSERT INTO "public"."city" VALUES ('bfe47f38-a269-4a1b-adab-3f8bbe73971c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Waterloo', 'Quebec');
INSERT INTO "public"."city" VALUES ('c0136070-8fca-4a74-aca9-7231d8fdd590', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Brownsburg-Chatham', 'Quebec');
INSERT INTO "public"."city" VALUES ('c05c3a05-9ee1-4a26-88e2-d9a2417d80f6', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Oshawa', 'Ontario');
INSERT INTO "public"."city" VALUES ('c06a8ce2-b64e-468d-8ffa-f6ff03c03ec4', '4996fee8-f6c7-451a-a073-5c6cd4b10efc', 'Whitehorse', 'Yukon');
INSERT INTO "public"."city" VALUES ('c06b1da5-5e13-4346-bba0-231378757ca7', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Schefferville', 'Quebec');
INSERT INTO "public"."city" VALUES ('c13cceb7-27ea-4bc9-9a45-f59029c59c3a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Mercier', 'Quebec');
INSERT INTO "public"."city" VALUES ('c1765641-4206-4774-bb8c-7a63b5fa30b0', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Port Coquitlam', 'British Columbia');
INSERT INTO "public"."city" VALUES ('c287e5ba-84bd-472d-90bb-d4f94dfe6431', 'e948de86-6106-450d-bda1-11b9c54b0e6c', 'Flin Flon (part)', 'Manitoba');
INSERT INTO "public"."city" VALUES ('c409a458-cd81-4d76-a51e-3c65dfbc70ae', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sutton', 'Quebec');
INSERT INTO "public"."city" VALUES ('c4797d4c-7f70-4888-9138-ed70d85fff7f', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Surrey', 'British Columbia');
INSERT INTO "public"."city" VALUES ('c4ce24fe-1c87-47d8-bf7c-76e9d96cd3ac', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'London', 'Ontario');
INSERT INTO "public"."city" VALUES ('c558f9d6-bf59-4e36-9f7a-bd20f8d931c3', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Abbotsford', 'British Columbia');
INSERT INTO "public"."city" VALUES ('c5d6b27b-5f82-4db6-ae9a-04307e434f4c', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Melfort', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('c936393d-dcb4-4bdc-ae83-3eb216d9ca3a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Candiac', 'Quebec');
INSERT INTO "public"."city" VALUES ('c9cd1298-bde8-4b29-a95d-69435d68b1ac', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'La Malbaie', 'Quebec');
INSERT INTO "public"."city" VALUES ('c9eaf10a-b6a8-488b-9da0-4624a3faa37a', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Estevan', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('ca25523d-b825-469e-8e52-18dde9f3107b', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Courtenay', 'British Columbia');
INSERT INTO "public"."city" VALUES ('ca256035-fa08-4720-8926-d4f03b93b0fa', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'White Rock', 'British Columbia');
INSERT INTO "public"."city" VALUES ('ca4f49a4-5c5a-4c52-9221-bccc5e2bc4cb', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Mont-Laurier', 'Quebec');
INSERT INTO "public"."city" VALUES ('ca5e1e57-818d-4288-b2af-2a40fe6c96dd', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Enderby', 'British Columbia');
INSERT INTO "public"."city" VALUES ('cac5aef1-65f5-45e8-8230-be86f7aec94d', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Lloydminster (part)', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('cfa93f35-0b34-4d53-b8ce-c26b51d3e247', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Elliot Lake', 'Ontario');
INSERT INTO "public"."city" VALUES ('d17d3f4f-da67-4567-97cc-0626608d3d66', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Thunder Bay', 'Ontario');
INSERT INTO "public"."city" VALUES ('d2d43ce8-3dfe-4ec0-833d-19b9972077d1', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Gatineau', 'Quebec');
INSERT INTO "public"."city" VALUES ('d4160202-2d90-430b-bee2-c6bdf43242fd', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Duparquet', 'Quebec');
INSERT INTO "public"."city" VALUES ('d48b1523-07a7-4a26-850e-f59e92f35323', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Rouyn-Noranda', 'Quebec');
INSERT INTO "public"."city" VALUES ('d4da021b-56f5-414c-b977-1c260c202058', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Grande Prairie', 'Alberta');
INSERT INTO "public"."city" VALUES ('d5367ebc-2eb1-4d98-8d2e-8dc165fc21c8', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Portneuf', 'Quebec');
INSERT INTO "public"."city" VALUES ('d55d8ff3-9625-4b59-9f66-207ec7b12e03', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Cap-Santé', 'Quebec');
INSERT INTO "public"."city" VALUES ('d5b0956a-fb60-48a7-98a9-95d38a899eb4', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Julie', 'Quebec');
INSERT INTO "public"."city" VALUES ('d6229f58-681c-4618-a522-b961deaf69fa', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Brant', 'Ontario');
INSERT INTO "public"."city" VALUES ('d791a1fb-9d4b-4422-a09c-916786f41d1e', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Grand Forks', 'British Columbia');
INSERT INTO "public"."city" VALUES ('d7b10f65-b0f4-40f0-8a41-45f6eb319a7f', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'L''Ancienne-Lorette', 'Quebec');
INSERT INTO "public"."city" VALUES ('d8203512-c76a-4a9d-ae91-95a82753fc4d', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Trail', 'British Columbia');
INSERT INTO "public"."city" VALUES ('d82601a7-5c29-457c-9a6c-2d485cb64f97', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Montreal West', 'Quebec');
INSERT INTO "public"."city" VALUES ('d84e0c73-906f-4709-978f-d39414819f65', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Temiskaming Shores', 'Ontario');
INSERT INTO "public"."city" VALUES ('d9e8f7a8-38a2-4bc8-804a-87b97e2df04d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Blainville', 'Quebec');
INSERT INTO "public"."city" VALUES ('daa3ce6f-957d-4e3c-9370-8e1ab41b3048', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Desbiens', 'Quebec');
INSERT INTO "public"."city" VALUES ('daacaaed-3b74-414b-8a9f-024d9e0d1ecb', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Lloydminster (part)', 'Alberta');
INSERT INTO "public"."city" VALUES ('daef3172-a0f3-414c-9e75-5ae269416985', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Prince Edward County', 'Ontario');
INSERT INTO "public"."city" VALUES ('db2908c8-7a27-49de-b063-e9da4031e366', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Tite', 'Quebec');
INSERT INTO "public"."city" VALUES ('db6788e6-77b1-4a22-9c60-1a625916365a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'La Sarre', 'Quebec');
INSERT INTO "public"."city" VALUES ('dbdb2d0d-0d0d-4a44-962c-1a306ca33737', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Dunham', 'Quebec');
INSERT INTO "public"."city" VALUES ('dd05d45d-45ac-41c7-abe1-f04afc6f0aeb', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Kimberley', 'British Columbia');
INSERT INTO "public"."city" VALUES ('dd20f3b6-64a3-4633-b55b-ae3bff30dc95', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'L''Épiphanie', 'Quebec');
INSERT INTO "public"."city" VALUES ('dd491ee7-01bd-4c83-8bfe-6a42bd865015', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Agathe-des-Monts', 'Quebec');
INSERT INTO "public"."city" VALUES ('dd74e6a5-fa99-4b69-81ea-210e4ccb72ee', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Sault Ste. Marie', 'Ontario');
INSERT INTO "public"."city" VALUES ('dda1b6d8-317f-4abd-a479-a27a17c44664', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Magog', 'Quebec');
INSERT INTO "public"."city" VALUES ('df05932d-6c99-4b69-bb7c-89a5d4c8ce3a', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Clarence-Rockland', 'Ontario');
INSERT INTO "public"."city" VALUES ('df4403f7-3b77-411f-877a-a42df4cf6027', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Témiscouata-sur-le-Lac', 'Quebec');
INSERT INTO "public"."city" VALUES ('df62fc3c-25ac-4b1b-a2de-57246c844130', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Swift Current', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('dfdf079f-07c8-4a45-8da2-d6b431ba10e5', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Fort St. John', 'British Columbia');
INSERT INTO "public"."city" VALUES ('e0402a52-3224-4d68-86fe-05d8f88155d7', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Prince Albert', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('e04e27bf-5483-4605-ae9b-bcfd45eda826', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Gaspé', 'Quebec');
INSERT INTO "public"."city" VALUES ('e0de68aa-5639-4736-9d7f-7304428c8a87', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Senneterre', 'Quebec');
INSERT INTO "public"."city" VALUES ('e10518e6-56a0-47e0-bc1f-2da228ce80e1', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Kamloops', 'British Columbia');
INSERT INTO "public"."city" VALUES ('e16f6623-b73d-47f9-8863-18c4a5389843', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Mont-Tremblant', 'Quebec');
INSERT INTO "public"."city" VALUES ('e18109bb-a40e-4bc3-877c-b5f9da91a697', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Pamphile', 'Quebec');
INSERT INTO "public"."city" VALUES ('e1baae4e-8460-4c71-a59e-af76c69c4560', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Carignan', 'Quebec');
INSERT INTO "public"."city" VALUES ('e3dd8924-c890-48df-adb6-e54270251d24', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Quesnel', 'British Columbia');
INSERT INTO "public"."city" VALUES ('e40de152-1228-41a6-ab0b-40a26d767e1d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Gabriel', 'Quebec');
INSERT INTO "public"."city" VALUES ('e4c80c0f-da38-45e9-a0af-daa6aa814b9f', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Plessisville', 'Quebec');
INSERT INTO "public"."city" VALUES ('e5359e68-3d0b-4a2f-b1f1-4a58a2aa47cc', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Berthierville', 'Quebec');
INSERT INTO "public"."city" VALUES ('e759730e-ac73-4310-8158-6f874d73476a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Huntingdon', 'Quebec');
INSERT INTO "public"."city" VALUES ('e8649aa2-4127-48fa-b52f-eeb79c3bcc4d', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Woodstock', 'Ontario');
INSERT INTO "public"."city" VALUES ('e870ffc2-7b53-404d-aa33-cf99f6c623d8', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Peterborough', 'Ontario');
INSERT INTO "public"."city" VALUES ('e91856d6-8cb4-471e-b9d4-7fd59995daa2', '188ea6f2-3111-4121-926c-cae8bb522b43', 'Brooks', 'Alberta');
INSERT INTO "public"."city" VALUES ('ead77998-b4b4-4ac0-b9e2-21f0f779cbca', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Nicolet', 'Quebec');
INSERT INTO "public"."city" VALUES ('eafc9716-d304-4a25-b63b-56816126eb8e', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Louiseville', 'Quebec');
INSERT INTO "public"."city" VALUES ('ec368982-9d1b-4a4d-9b60-2e8212782d93', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Daveluyville', 'Quebec');
INSERT INTO "public"."city" VALUES ('ec9d2a68-e301-4da5-8aa3-621d2400432c', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Montréal-Est', 'Quebec');
INSERT INTO "public"."city" VALUES ('ed52d51e-3cf7-4f11-85d0-80f97e0e0778', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Delson', 'Quebec');
INSERT INTO "public"."city" VALUES ('ee522b2c-1fa7-4949-ad2b-f1146d245dd1', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Stanstead', 'Quebec');
INSERT INTO "public"."city" VALUES ('ef0073ac-0876-428c-9590-b0ddb3a0a3d8', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Vaughan', 'Ontario');
INSERT INTO "public"."city" VALUES ('ef2d45c6-0f70-480f-9f78-4867a2c7ef6e', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Victoria', 'British Columbia');
INSERT INTO "public"."city" VALUES ('f0c7af74-4fde-4ba6-a901-0e5e15d853f8', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Marguerite-du-Lac-Masson', 'Quebec');
INSERT INTO "public"."city" VALUES ('f2867512-0bbe-4e9e-b3ae-ea2c8fddab88', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Marthe-sur-le-Lac', 'Quebec');
INSERT INTO "public"."city" VALUES ('f32e2344-5135-47b3-97bf-81a54f411754', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Notre-Dame-des-Prairies', 'Quebec');
INSERT INTO "public"."city" VALUES ('f36597b5-167a-4974-a31d-99c50a2eb1d4', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Niagara Falls', 'Ontario');
INSERT INTO "public"."city" VALUES ('f3900813-2a4e-42f1-b42c-a7689b415b2e', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Colomban', 'Quebec');
INSERT INTO "public"."city" VALUES ('f4617ed8-b9e3-4865-bd43-799cb3d0a0f8', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Quinte West', 'Ontario');
INSERT INTO "public"."city" VALUES ('f4a10245-1528-4a36-94c1-eb16d684240a', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Chibougamau', 'Quebec');
INSERT INTO "public"."city" VALUES ('f4a3f236-8b0d-44c0-91e2-aa5a6c2b8919', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Pointe-Claire', 'Quebec');
INSERT INTO "public"."city" VALUES ('f4ccb578-5fab-41ae-8bf0-0ebd0b24191d', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Roberval', 'Quebec');
INSERT INTO "public"."city" VALUES ('f53bcfe4-ebb4-485b-aaca-73fdc424fdbe', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Cranbrook', 'British Columbia');
INSERT INTO "public"."city" VALUES ('f5949a81-dd86-480a-ba6c-54ddea96eb2b', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Trois-Pistoles', 'Quebec');
INSERT INTO "public"."city" VALUES ('f5d06fbc-3922-477b-b331-f445264ddce6', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Sainte-Anne-des-Monts', 'Quebec');
INSERT INTO "public"."city" VALUES ('f6604bff-a3b3-4184-900a-729350e0b348', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Kingston', 'Ontario');
INSERT INTO "public"."city" VALUES ('f702b19a-7852-421d-a522-48b4268e5ca5', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Saint-Césaire', 'Quebec');
INSERT INTO "public"."city" VALUES ('f8601659-7bc4-46ba-a640-2c3741674ad7', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Lac-Delage', 'Quebec');
INSERT INTO "public"."city" VALUES ('fa267970-cb25-4757-87ce-f7c7bdd34d01', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Prince Rupert', 'British Columbia');
INSERT INTO "public"."city" VALUES ('fac89703-4204-4298-802b-1675eb774338', 'bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Martensville', 'Saskatchewan');
INSERT INTO "public"."city" VALUES ('fbc6f084-a374-4b13-ac0e-835bc0e674ff', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Richelieu', 'Quebec');
INSERT INTO "public"."city" VALUES ('fbc7e004-8115-4798-8f67-312fb4054663', 'de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Trois-Rivières', 'Quebec');
INSERT INTO "public"."city" VALUES ('fd67c2ee-fc89-4118-9845-5e0f483c91da', 'bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'Maple Ridge', 'British Columbia');
INSERT INTO "public"."city" VALUES ('fe10a201-9766-40f0-9b07-b8ea997df9bb', 'bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Orillia', 'Ontario');
COMMIT;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS "public"."country";
CREATE TABLE "public"."country" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "iso" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
ALTER TABLE "public"."country" OWNER TO "postgres";

-- ----------------------------
-- Records of country
-- ----------------------------
BEGIN;
INSERT INTO "public"."country" VALUES ('9302a9a2-a9d3-4abf-9924-912e329a37bb', 'Canada', 'CA');
INSERT INTO "public"."country" VALUES ('2d4041f7-fd97-45fe-b2d5-e7a46ce596df', 'USA', 'US');
INSERT INTO "public"."country" VALUES ('5f95efb7-0efb-4b46-b93a-28077e5ae82e', 'China', 'CN');
INSERT INTO "public"."country" VALUES ('a1dc3e7b-266a-40b2-9ce9-aaec920f38aa', 'Taiwan', 'TW');
INSERT INTO "public"."country" VALUES ('f7466121-ccc6-4955-9718-67b87e130193', 'Barbados', 'BB');
INSERT INTO "public"."country" VALUES ('246a961c-9914-48d2-9577-3b6330c50839', 'United Kingdom', 'GB');
INSERT INTO "public"."country" VALUES ('ba278316-9de1-44df-b0de-11e6b19bf2ef', 'Australia', 'AU');
INSERT INTO "public"."country" VALUES ('23207ae5-bec6-49da-9215-2dfa3b56a309', 'New Zealand', 'NZ');
COMMIT;

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS "public"."state";
CREATE TABLE "public"."state" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "iso" varchar(10) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "country_id" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."state" OWNER TO "postgres";

-- ----------------------------
-- Records of state
-- ----------------------------
BEGIN;
INSERT INTO "public"."state" VALUES ('09bf5fed-67c6-43f1-a13c-d0ee7129e671', 'New Brunswick', 'NB', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('14e195ad-be6e-42e2-be2d-65a8d4d47fec', 'Northwest Territories', 'NT', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('188ea6f2-3111-4121-926c-cae8bb522b43', 'Alberta', 'AB', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('1a3cf21f-9648-4de3-9966-857014de2305', 'Nunavut', 'NU', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('352ab45d-8553-4262-a8e2-512d2db4ad95', 'Prince Edward Island', 'PE', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('4996fee8-f6c7-451a-a073-5c6cd4b10efc', 'Yukon', 'YT', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('b54ea8ee-7ba5-4d51-91c1-cf574494cdf5', 'Nova Scotia', 'NS', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('bbfaa09d-bc87-44ac-b035-caa87ec6a584', 'Ontario', 'ON', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('bdbcb343-7017-4c45-bbd6-92641c0c8e7a', 'Saskatchewan', 'SK', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('bf3ade63-c9cf-40ae-96cd-c2208af9ac98', 'British Columbia', 'BC', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('bf747443-b54c-4191-a8ce-49435c261397', 'Newfoundland and Labrador', 'NL', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('de8482cc-4abc-4dd3-a377-ef5489f3cc42', 'Quebec', 'QC', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
INSERT INTO "public"."state" VALUES ('e948de86-6106-450d-bda1-11b9c54b0e6c', 'Manitoba', 'MB', '9302a9a2-a9d3-4abf-9924-912e329a37bb');
COMMIT;

-- ----------------------------
-- Function structure for _add
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_add"(text, int4, text);
CREATE OR REPLACE FUNCTION "public"."_add"(text, int4, text)
  RETURNS "pg_catalog"."int4" AS $BODY$
BEGIN
    EXECUTE 'INSERT INTO __tcache__ (label, value, note) values (' ||
    quote_literal($1) || ', ' || $2 || ', ' || quote_literal(COALESCE($3, '')) || ')';
    RETURN $2;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _add
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_add"(text, int4);
CREATE OR REPLACE FUNCTION "public"."_add"(text, int4)
  RETURNS "pg_catalog"."int4" AS $BODY$
    SELECT _add($1, $2, '')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _agg
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_agg"(name);
CREATE OR REPLACE FUNCTION "public"."_agg"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_agg FROM tap_funky WHERE name = $1 AND is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _agg
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_agg"(name, name);
CREATE OR REPLACE FUNCTION "public"."_agg"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_agg FROM tap_funky WHERE schema = $1 AND name = $2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _agg
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_agg"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_agg"(name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_agg
      FROM tap_funky
     WHERE name = $1
       AND args = array_to_string($2, ',')
       AND is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _agg
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_agg"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_agg"(name, name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_agg
      FROM tap_funky
     WHERE schema = $1
       AND name   = $2
       AND args   = array_to_string($3, ',')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _alike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_alike"(bool, anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."_alike"(bool, anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    result ALIAS FOR $1;
    got    ALIAS FOR $2;
    rx     ALIAS FOR $3;
    descr  ALIAS FOR $4;
    output TEXT;
BEGIN
    output := ok( result, descr );
    RETURN output || CASE result WHEN TRUE THEN '' ELSE E'\n' || diag(
           '                  ' || COALESCE( quote_literal(got), 'NULL' ) ||
       E'\n   doesn''t match: ' || COALESCE( quote_literal(rx), 'NULL' )
    ) END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_are"(text, _name, _name, text);
CREATE OR REPLACE FUNCTION "public"."_are"(text, _name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    what    ALIAS FOR $1;
    extras  ALIAS FOR $2;
    missing ALIAS FOR $3;
    descr   ALIAS FOR $4;
    msg     TEXT    := '';
    res     BOOLEAN := TRUE;
BEGIN
    IF extras[1] IS NOT NULL THEN
        res = FALSE;
        msg := E'\n' || diag(
            '    Extra ' || what || E':\n        '
            ||  _ident_array_to_string( extras, E'\n        ' )
        );
    END IF;
    IF missing[1] IS NOT NULL THEN
        res = FALSE;
        msg := msg || E'\n' || diag(
            '    Missing ' || what || E':\n        '
            ||  _ident_array_to_string( missing, E'\n        ' )
        );
    END IF;

    RETURN ok(res, descr) || msg;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _areni
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_areni"(text, _text, _text, text);
CREATE OR REPLACE FUNCTION "public"."_areni"(text, _text, _text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    what    ALIAS FOR $1;
    extras  ALIAS FOR $2;
    missing ALIAS FOR $3;
    descr   ALIAS FOR $4;
    msg     TEXT    := '';
    res     BOOLEAN := TRUE;
BEGIN
    IF extras[1] IS NOT NULL THEN
        res = FALSE;
        msg := E'\n' || diag(
            '    Extra ' || what || E':\n        '
            ||  array_to_string( extras, E'\n        ' )
        );
    END IF;
    IF missing[1] IS NOT NULL THEN
        res = FALSE;
        msg := msg || E'\n' || diag(
            '    Missing ' || what || E':\n        '
            ||  array_to_string( missing, E'\n        ' )
        );
    END IF;

    RETURN ok(res, descr) || msg;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _assets_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_assets_are"(text, _text, _text, text);
CREATE OR REPLACE FUNCTION "public"."_assets_are"(text, _text, _text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _areni(
        $1,
        ARRAY(
            SELECT UPPER($2[i]) AS thing
              FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
             ORDER BY thing
        ),
        ARRAY(
            SELECT $3[i] AS thing
              FROM generate_series(1, array_upper($3, 1)) s(i)
            EXCEPT
            SELECT UPPER($2[i])
              FROM generate_series(1, array_upper($2, 1)) s(i)
             ORDER BY thing
        ),
        $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cast_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cast_exists"(name, name);
CREATE OR REPLACE FUNCTION "public"."_cast_exists"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
       SELECT TRUE
         FROM pg_catalog.pg_cast c
        WHERE _cmp_types(castsource, $1)
          AND _cmp_types(casttarget, $2)
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cast_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cast_exists"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_cast_exists"(name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
       SELECT TRUE
         FROM pg_catalog.pg_cast c
         JOIN pg_catalog.pg_proc p ON c.castfunc = p.oid
        WHERE _cmp_types(castsource, $1)
          AND _cmp_types(casttarget, $2)
          AND p.proname   = $3
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cast_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cast_exists"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."_cast_exists"(name, name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
       SELECT TRUE
         FROM pg_catalog.pg_cast c
         JOIN pg_catalog.pg_proc p ON c.castfunc = p.oid
         JOIN pg_catalog.pg_namespace n ON p.pronamespace = n.oid
        WHERE _cmp_types(castsource, $1)
          AND _cmp_types(casttarget, $2)
          AND n.nspname   = $3
          AND p.proname   = $4
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cdi
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cdi"(name, name, anyelement);
CREATE OR REPLACE FUNCTION "public"."_cdi"(name, name, anyelement)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_default_is(
        $1, $2, $3,
        'Column ' || quote_ident($1) || '.' || quote_ident($2) || ' should default to '
        || COALESCE( quote_literal($3), 'NULL')
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cdi
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cdi"(name, name, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."_cdi"(name, name, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF NOT _cexists( $1, $2 ) THEN
        RETURN fail( $4 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist' );
    END IF;

    IF NOT _has_def( $1, $2 ) THEN
        RETURN fail( $4 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || ' has no default' );
    END IF;

    RETURN _def_is(
        pg_catalog.pg_get_expr(d.adbin, d.adrelid),
        pg_catalog.format_type(a.atttypid, a.atttypmod),
        $3, $4
    )
      FROM pg_catalog.pg_class c, pg_catalog.pg_attribute a, pg_catalog.pg_attrdef d
     WHERE c.oid = a.attrelid
       AND pg_table_is_visible(c.oid)
       AND a.atthasdef
       AND a.attrelid = d.adrelid
       AND a.attnum = d.adnum
       AND c.relname = $1
       AND a.attnum > 0
       AND NOT a.attisdropped
       AND a.attname = $2;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cdi
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cdi"(name, name, name, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."_cdi"(name, name, name, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF NOT _cexists( $1, $2, $3 ) THEN
        RETURN fail( $5 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || '.' || quote_ident($3) || ' does not exist' );
    END IF;

    IF NOT _has_def( $1, $2, $3 ) THEN
        RETURN fail( $5 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || '.' || quote_ident($3) || ' has no default' );
    END IF;

    RETURN _def_is(
        pg_catalog.pg_get_expr(d.adbin, d.adrelid),
        pg_catalog.format_type(a.atttypid, a.atttypmod),
        $4, $5
    )
      FROM pg_catalog.pg_namespace n, pg_catalog.pg_class c, pg_catalog.pg_attribute a,
           pg_catalog.pg_attrdef d
     WHERE n.oid = c.relnamespace
       AND c.oid = a.attrelid
       AND a.atthasdef
       AND a.attrelid = d.adrelid
       AND a.attnum = d.adnum
       AND n.nspname = $1
       AND c.relname = $2
       AND a.attnum > 0
       AND NOT a.attisdropped
       AND a.attname = $3;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cexists"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_cexists"(name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_namespace n
          JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
          JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
         WHERE n.nspname = $1
           AND c.relname = $2
           AND a.attnum > 0
           AND NOT a.attisdropped
           AND a.attname = $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cexists"(name, name);
CREATE OR REPLACE FUNCTION "public"."_cexists"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_class c
          JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
         WHERE c.relname = $1
           AND pg_catalog.pg_table_is_visible(c.oid)
           AND a.attnum > 0
           AND NOT a.attisdropped
           AND a.attname = $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _ckeys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ckeys"(name, bpchar);
CREATE OR REPLACE FUNCTION "public"."_ckeys"(name, bpchar)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT * FROM _keys($1, $2) LIMIT 1;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _ckeys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ckeys"(name, name, bpchar);
CREATE OR REPLACE FUNCTION "public"."_ckeys"(name, name, bpchar)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT * FROM _keys($1, $2, $3) LIMIT 1;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cleanup
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cleanup"();
CREATE OR REPLACE FUNCTION "public"."_cleanup"()
  RETURNS "pg_catalog"."bool" AS $BODY$
    DROP SEQUENCE __tresults___numb_seq;
    DROP TABLE __tcache__;
    DROP SEQUENCE __tcache___id_seq;
    SELECT TRUE;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _cmp_types
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_cmp_types"(oid, name);
CREATE OR REPLACE FUNCTION "public"."_cmp_types"(oid, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
DECLARE
    dtype TEXT := pg_catalog.format_type($1, NULL);
BEGIN
    RETURN dtype = _quote_ident_like($2, dtype);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _col_is_null
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_col_is_null"(name, name, text, bool);
CREATE OR REPLACE FUNCTION "public"."_col_is_null"(name, name, text, bool)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF NOT _cexists( $1, $2 ) THEN
        RETURN fail( $3 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist' );
    END IF;
    RETURN ok(
        EXISTS(
            SELECT true
              FROM pg_catalog.pg_class c
              JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
             WHERE pg_catalog.pg_table_is_visible(c.oid)
               AND c.relname = $1
               AND a.attnum > 0
               AND NOT a.attisdropped
               AND a.attname    = $2
               AND a.attnotnull = $4
        ), $3
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _col_is_null
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_col_is_null"(name, name, name, text, bool);
CREATE OR REPLACE FUNCTION "public"."_col_is_null"(name, name, name, text, bool)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF NOT _cexists( $1, $2, $3 ) THEN
        RETURN fail( $4 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || '.' || quote_ident($3) || ' does not exist' );
    END IF;
    RETURN ok(
        EXISTS(
            SELECT true
              FROM pg_catalog.pg_namespace n
              JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
              JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
             WHERE n.nspname = $1
               AND c.relname = $2
               AND a.attnum  > 0
               AND NOT a.attisdropped
               AND a.attname    = $3
               AND a.attnotnull = $5
        ), $4
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _constraint
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_constraint"(name, name, bpchar, _name, text, text);
CREATE OR REPLACE FUNCTION "public"."_constraint"(name, name, bpchar, _name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    akey NAME[];
    keys TEXT[] := '{}';
    have TEXT;
BEGIN
    FOR akey IN SELECT * FROM _keys($1, $2, $3) LOOP
        IF akey = $4 THEN RETURN pass($5); END IF;
        keys = keys || akey::text;
    END LOOP;
    IF array_upper(keys, 0) = 1 THEN
        have := 'No ' || $6 || ' constraints';
    ELSE
        have := array_to_string(keys, E'\n              ');
    END IF;

    RETURN fail($5) || E'\n' || diag(
             '        have: ' || have
       || E'\n        want: ' || CASE WHEN $4 IS NULL THEN 'NULL' ELSE $4::text END
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _constraint
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_constraint"(name, bpchar, _name, text, text);
CREATE OR REPLACE FUNCTION "public"."_constraint"(name, bpchar, _name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    akey NAME[];
    keys TEXT[] := '{}';
    have TEXT;
BEGIN
    FOR akey IN SELECT * FROM _keys($1, $2) LOOP
        IF akey = $3 THEN RETURN pass($4); END IF;
        keys = keys || akey::text;
    END LOOP;
    IF array_upper(keys, 0) = 1 THEN
        have := 'No ' || $5 || ' constraints';
    ELSE
        have := array_to_string(keys, E'\n              ');
    END IF;

    RETURN fail($4) || E'\n' || diag(
             '        have: ' || have
       || E'\n        want: ' || CASE WHEN $3 IS NULL THEN 'NULL' ELSE $3::text END
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _contract_on
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_contract_on"(text);
CREATE OR REPLACE FUNCTION "public"."_contract_on"(text)
  RETURNS "pg_catalog"."char" AS $BODY$
   SELECT CASE substring(LOWER($1) FROM 1 FOR 1)
          WHEN 's' THEN '1'::"char"
          WHEN 'u' THEN '2'::"char"
          WHEN 'i' THEN '3'::"char"
          WHEN 'd' THEN '4'::"char"
          ELSE          '0'::"char" END
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for _currtest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_currtest"();
CREATE OR REPLACE FUNCTION "public"."_currtest"()
  RETURNS "pg_catalog"."int4" AS $BODY$
BEGIN
    RETURN currval('__tresults___numb_seq');
EXCEPTION
    WHEN object_not_in_prerequisite_state THEN RETURN 0;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _db_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_db_privs"();
CREATE OR REPLACE FUNCTION "public"."_db_privs"()
  RETURNS "pg_catalog"."_name" AS $BODY$
DECLARE
    pgversion INTEGER := pg_version_num();
BEGIN
    IF pgversion < 80200 THEN
        RETURN ARRAY['CREATE', 'TEMPORARY'];
    ELSE
        RETURN ARRAY['CREATE', 'CONNECT', 'TEMPORARY'];
    END IF;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _def_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_def_is"(text, text, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."_def_is"(text, text, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    thing text;
BEGIN
    IF $1 ~ '^[^'']+[(]' THEN
        -- It's a functional default.
        RETURN is( $1, $3, $4 );
    END IF;

    EXECUTE 'SELECT is('
             || COALESCE($1, 'NULL' || '::' || $2) || '::' || $2 || ', '
             || COALESCE(quote_literal($3), 'NULL') || '::' || $2 || ', '
             || COALESCE(quote_literal($4), 'NULL')
    || ')' INTO thing;
    RETURN thing;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_definer"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_definer"(name, name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_definer
      FROM tap_funky
     WHERE schema = $1
       AND name   = $2
       AND args   = array_to_string($3, ',')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_definer"(name);
CREATE OR REPLACE FUNCTION "public"."_definer"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_definer FROM tap_funky WHERE name = $1 AND is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_definer"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_definer"(name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_definer
      FROM tap_funky
     WHERE name = $1
       AND args = array_to_string($2, ',')
       AND is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_definer"(name, name);
CREATE OR REPLACE FUNCTION "public"."_definer"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_definer FROM tap_funky WHERE schema = $1 AND name = $2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _dexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_dexists"(name);
CREATE OR REPLACE FUNCTION "public"."_dexists"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
   SELECT EXISTS(
       SELECT true
         FROM pg_catalog.pg_type t
        WHERE t.typname = $1
          AND pg_catalog.pg_type_is_visible(t.oid)
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _dexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_dexists"(name, name);
CREATE OR REPLACE FUNCTION "public"."_dexists"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
   SELECT EXISTS(
       SELECT true
         FROM pg_catalog.pg_namespace n
         JOIN pg_catalog.pg_type t on n.oid = t.typnamespace
        WHERE n.nspname = $1
          AND t.typname = $2
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _do_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_do_ne"(text, text, text, text);
CREATE OR REPLACE FUNCTION "public"."_do_ne"(text, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have    ALIAS FOR $1;
    want    ALIAS FOR $2;
    extras  TEXT[]  := '{}';
    missing TEXT[]  := '{}';
    res     BOOLEAN := TRUE;
    msg     TEXT    := '';
BEGIN
    BEGIN
        -- Find extra records.
        EXECUTE 'SELECT EXISTS ( '
             || '( SELECT * FROM ' || have || ' EXCEPT ' || $4
             || '  SELECT * FROM ' || want
             || ' ) UNION ( '
             || '  SELECT * FROM ' || want || ' EXCEPT ' || $4
             || '  SELECT * FROM ' || have
             || ' ) LIMIT 1 )' INTO res;

        -- Drop the temporary tables.
        EXECUTE 'DROP TABLE ' || have;
        EXECUTE 'DROP TABLE ' || want;
    EXCEPTION WHEN syntax_error OR datatype_mismatch THEN
        msg := E'\n' || diag(
            E'    Columns differ between queries:\n'
            || '        have: (' || _temptypes(have) || E')\n'
            || '        want: (' || _temptypes(want) || ')'
        );
        EXECUTE 'DROP TABLE ' || have;
        EXECUTE 'DROP TABLE ' || want;
        RETURN ok(FALSE, $3) || msg;
    END;

    -- Return the value from the query.
    RETURN ok(res, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _docomp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_docomp"(text, text, text, text);
CREATE OR REPLACE FUNCTION "public"."_docomp"(text, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have    ALIAS FOR $1;
    want    ALIAS FOR $2;
    extras  TEXT[]  := '{}';
    missing TEXT[]  := '{}';
    res     BOOLEAN := TRUE;
    msg     TEXT    := '';
    rec     RECORD;
BEGIN
    BEGIN
        -- Find extra records.
        FOR rec in EXECUTE 'SELECT * FROM ' || have || ' EXCEPT ' || $4
                        || 'SELECT * FROM ' || want LOOP
            extras := extras || rec::text;
        END LOOP;

        -- Find missing records.
        FOR rec in EXECUTE 'SELECT * FROM ' || want || ' EXCEPT ' || $4
                        || 'SELECT * FROM ' || have LOOP
            missing := missing || rec::text;
        END LOOP;

        -- Drop the temporary tables.
        EXECUTE 'DROP TABLE ' || have;
        EXECUTE 'DROP TABLE ' || want;
    EXCEPTION WHEN syntax_error OR datatype_mismatch THEN
        msg := E'\n' || diag(
            E'    Columns differ between queries:\n'
            || '        have: (' || _temptypes(have) || E')\n'
            || '        want: (' || _temptypes(want) || ')'
        );
        EXECUTE 'DROP TABLE ' || have;
        EXECUTE 'DROP TABLE ' || want;
        RETURN ok(FALSE, $3) || msg;
    END;

    -- What extra records do we have?
    IF extras[1] IS NOT NULL THEN
        res := FALSE;
        msg := E'\n' || diag(
            E'    Extra records:\n        '
            ||  array_to_string( extras, E'\n        ' )
        );
    END IF;

    -- What missing records do we have?
    IF missing[1] IS NOT NULL THEN
        res := FALSE;
        msg := msg || E'\n' || diag(
            E'    Missing records:\n        '
            ||  array_to_string( missing, E'\n        ' )
        );
    END IF;

    RETURN ok(res, $3) || msg;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _error_diag
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_error_diag"(text, text, text, text, text, text, text, text, text, text);
CREATE OR REPLACE FUNCTION "public"."_error_diag"(text, text, text, text, text, text, text, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT COALESCE(
               COALESCE( NULLIF($1, '') || ': ', '' ) || COALESCE( NULLIF($2, ''), '' ),
               'NO ERROR FOUND'
           )
        || COALESCE(E'\n        DETAIL:     ' || nullif($3, ''), '')
        || COALESCE(E'\n        HINT:       ' || nullif($4, ''), '')
        || COALESCE(E'\n        SCHEMA:     ' || nullif($6, ''), '')
        || COALESCE(E'\n        TABLE:      ' || nullif($7, ''), '')
        || COALESCE(E'\n        COLUMN:     ' || nullif($8, ''), '')
        || COALESCE(E'\n        CONSTRAINT: ' || nullif($9, ''), '')
        || COALESCE(E'\n        TYPE:       ' || nullif($10, ''), '')
        -- We need to manually indent all the context lines
        || COALESCE(E'\n        CONTEXT:\n'
               || regexp_replace(NULLIF( $5, ''), '^', '            ', 'gn'
           ), '');
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for _expand_context
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_expand_context"(bpchar);
CREATE OR REPLACE FUNCTION "public"."_expand_context"(bpchar)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT CASE $1
          WHEN 'i' THEN 'implicit'
          WHEN 'a' THEN 'assignment'
          WHEN 'e' THEN 'explicit'
          ELSE          'unknown' END
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for _expand_on
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_expand_on"(bpchar);
CREATE OR REPLACE FUNCTION "public"."_expand_on"(bpchar)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT CASE $1
          WHEN '1' THEN 'SELECT'
          WHEN '2' THEN 'UPDATE'
          WHEN '3' THEN 'INSERT'
          WHEN '4' THEN 'DELETE'
          ELSE          'UNKNOWN' END
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for _expand_vol
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_expand_vol"(bpchar);
CREATE OR REPLACE FUNCTION "public"."_expand_vol"(bpchar)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT CASE $1
          WHEN 'i' THEN 'IMMUTABLE'
          WHEN 's' THEN 'STABLE'
          WHEN 'v' THEN 'VOLATILE'
          ELSE          'UNKNOWN' END
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for _ext_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ext_exists"(name);
CREATE OR REPLACE FUNCTION "public"."_ext_exists"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
        SELECT TRUE
          FROM pg_catalog.pg_extension ex
         WHERE ex.extname = $1
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _ext_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ext_exists"(name, name);
CREATE OR REPLACE FUNCTION "public"."_ext_exists"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
        SELECT TRUE
          FROM pg_catalog.pg_extension ex
          JOIN pg_catalog.pg_namespace n ON ex.extnamespace = n.oid
         WHERE n.nspname  = $1
           AND ex.extname = $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _extensions
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_extensions"(name);
CREATE OR REPLACE FUNCTION "public"."_extensions"(name)
  RETURNS SETOF "pg_catalog"."name" AS $BODY$
    SELECT e.extname
      FROM pg_catalog.pg_namespace n
      JOIN pg_catalog.pg_extension e ON n.oid = e.extnamespace
     WHERE n.nspname = $1
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _extensions
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_extensions"();
CREATE OR REPLACE FUNCTION "public"."_extensions"()
  RETURNS SETOF "pg_catalog"."name" AS $BODY$
    SELECT extname FROM pg_catalog.pg_extension
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _extras
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_extras"(bpchar, name, _name);
CREATE OR REPLACE FUNCTION "public"."_extras"(bpchar, name, _name)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT _extras(ARRAY[$1], $2, $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _extras
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_extras"(_bpchar, _name);
CREATE OR REPLACE FUNCTION "public"."_extras"(_bpchar, _name)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT ARRAY(
        SELECT c.relname
          FROM pg_catalog.pg_namespace n
          JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
         WHERE pg_catalog.pg_table_is_visible(c.oid)
           AND n.nspname <> 'pg_catalog'
           AND c.relkind = ANY($1)
           AND c.relname NOT IN ('__tcache__', 'pg_all_foreign_keys', 'tap_funky', '__tresults___numb_seq', '__tcache___id_seq')
        EXCEPT
        SELECT $2[i]
          FROM generate_series(1, array_upper($2, 1)) s(i)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _extras
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_extras"(bpchar, _name);
CREATE OR REPLACE FUNCTION "public"."_extras"(bpchar, _name)
  RETURNS "pg_catalog"."_name" AS $BODY$
SELECT _extras(ARRAY[$1], $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _extras
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_extras"(_bpchar, name, _name);
CREATE OR REPLACE FUNCTION "public"."_extras"(_bpchar, name, _name)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT ARRAY(
        SELECT c.relname
          FROM pg_catalog.pg_namespace n
          JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
         WHERE c.relkind = ANY($1)
           AND n.nspname = $2
           AND c.relname NOT IN('pg_all_foreign_keys', 'tap_funky', '__tresults___numb_seq', '__tcache___id_seq')
        EXCEPT
        SELECT $3[i]
          FROM generate_series(1, array_upper($3, 1)) s(i)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _finish
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_finish"(int4, int4, int4);
CREATE OR REPLACE FUNCTION "public"."_finish"(int4, int4, int4)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
DECLARE
    curr_test ALIAS FOR $1;
    exp_tests INTEGER := $2;
    num_faild ALIAS FOR $3;
    plural    CHAR;
BEGIN
    plural    := CASE exp_tests WHEN 1 THEN '' ELSE 's' END;

    IF curr_test IS NULL THEN
        RAISE EXCEPTION '# No tests run!';
    END IF;

    IF exp_tests = 0 OR exp_tests IS NULL THEN
         -- No plan. Output one now.
        exp_tests = curr_test;
        RETURN NEXT '1..' || exp_tests;
    END IF;

    IF curr_test <> exp_tests THEN
        RETURN NEXT diag(
            'Looks like you planned ' || exp_tests || ' test' ||
            plural || ' but ran ' || curr_test
        );
    ELSIF num_faild > 0 THEN
        RETURN NEXT diag(
            'Looks like you failed ' || num_faild || ' test' ||
            CASE num_faild WHEN 1 THEN '' ELSE 's' END
            || ' of ' || exp_tests
        );
    ELSE

    END IF;
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _fkexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_fkexists"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_fkexists"(name, name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT TRUE
           FROM pg_all_foreign_keys
          WHERE fk_schema_name    = $1
            AND quote_ident(fk_table_name)     = quote_ident($2)
            AND fk_columns = $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _fkexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_fkexists"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_fkexists"(name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT TRUE
           FROM pg_all_foreign_keys
          WHERE quote_ident(fk_table_name)     = quote_ident($1)
            AND pg_catalog.pg_table_is_visible(fk_table_oid)
            AND fk_columns = $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _fprivs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_fprivs_are"(text, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."_fprivs_are"(text, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_func_privs($2, $1);
BEGIN
    IF grants[1] = 'undefined_function' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Function ' || $1 || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _func_compare
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_func_compare"(name, name, anyelement, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."_func_compare"(name, name, anyelement, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE WHEN $3 IS NULL
      THEN ok( FALSE, $5 ) || _nosuch($1, $2, '{}')
      ELSE is( $3, $4, $5 )
      END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _func_compare
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_func_compare"(name, name, _name, anyelement, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."_func_compare"(name, name, _name, anyelement, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE WHEN $4 IS NULL
      THEN ok( FALSE, $6 ) || _nosuch($1, $2, $3)
      ELSE is( $4, $5, $6 )
      END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _func_compare
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_func_compare"(name, name, bool, text);
CREATE OR REPLACE FUNCTION "public"."_func_compare"(name, name, bool, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE WHEN $3 IS NULL
      THEN ok( FALSE, $4 ) || _nosuch($1, $2, '{}')
      ELSE ok( $3, $4 )
      END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _func_compare
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_func_compare"(name, name, _name, bool, text);
CREATE OR REPLACE FUNCTION "public"."_func_compare"(name, name, _name, bool, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE WHEN $4 IS NULL
      THEN ok( FALSE, $5 ) || _nosuch($1, $2, $3)
      ELSE ok( $4, $5 )
      END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get"(text);
CREATE OR REPLACE FUNCTION "public"."_get"(text)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
    ret integer;
BEGIN
    EXECUTE 'SELECT value FROM __tcache__ WHERE label = ' || quote_literal($1) || ' LIMIT 1' INTO ret;
    RETURN ret;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _get_ac_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_ac_privs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_ac_privs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
DECLARE
    privs  TEXT[] := ARRAY['INSERT', 'REFERENCES', 'SELECT', 'UPDATE'];
    grants TEXT[] := '{}';
BEGIN
    FOR i IN 1..array_upper(privs, 1) LOOP
        BEGIN
            IF pg_catalog.has_any_column_privilege($1, $2, privs[i]) THEN
                grants := grants || privs[i];
            END IF;
        EXCEPTION WHEN undefined_table THEN
            -- Not a valid table name.
            RETURN '{undefined_table}';
        WHEN undefined_object THEN
            -- Not a valid role.
            RETURN '{undefined_role}';
        WHEN invalid_parameter_value THEN
            -- Not a valid permission on this version of PostgreSQL; ignore;
        END;
    END LOOP;
    RETURN grants;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_col_ns_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_col_ns_type"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_get_col_ns_type"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    -- Always include the namespace.
    SELECT CASE WHEN pg_catalog.pg_type_is_visible(t.oid)
                THEN quote_ident(tn.nspname) || '.'
                ELSE ''
           END || pg_catalog.format_type(a.atttypid, a.atttypmod)
      FROM pg_catalog.pg_namespace n
      JOIN pg_catalog.pg_class c      ON n.oid = c.relnamespace
      JOIN pg_catalog.pg_attribute a  ON c.oid = a.attrelid
      JOIN pg_catalog.pg_type t       ON a.atttypid = t.oid
      JOIN pg_catalog.pg_namespace tn ON t.typnamespace = tn.oid
     WHERE n.nspname = $1
       AND c.relname = $2
       AND a.attname = $3
       AND attnum    > 0
       AND NOT a.attisdropped
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_col_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_col_privs"(name, text, name);
CREATE OR REPLACE FUNCTION "public"."_get_col_privs"(name, text, name)
  RETURNS "pg_catalog"."_text" AS $BODY$
DECLARE
    privs  TEXT[] := ARRAY['INSERT', 'REFERENCES', 'SELECT', 'UPDATE'];
    grants TEXT[] := '{}';
BEGIN
    FOR i IN 1..array_upper(privs, 1) LOOP
        IF pg_catalog.has_column_privilege($1, $2, $3, privs[i]) THEN
            grants := grants || privs[i];
        END IF;
    END LOOP;
    RETURN grants;
EXCEPTION
    -- Not a valid column name.
    WHEN undefined_column THEN RETURN '{undefined_column}';
    -- Not a valid table name.
    WHEN undefined_table THEN RETURN '{undefined_table}';
    -- Not a valid role.
    WHEN undefined_object THEN RETURN '{undefined_role}';
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_col_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_col_type"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_get_col_type"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT pg_catalog.format_type(a.atttypid, a.atttypmod)
      FROM pg_catalog.pg_namespace n
      JOIN pg_catalog.pg_class c     ON n.oid = c.relnamespace
      JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
     WHERE n.nspname = $1
       AND c.relname = $2
       AND a.attname = $3
       AND attnum    > 0
       AND NOT a.attisdropped
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_col_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_col_type"(name, name);
CREATE OR REPLACE FUNCTION "public"."_get_col_type"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT pg_catalog.format_type(a.atttypid, a.atttypmod)
      FROM pg_catalog.pg_attribute a
      JOIN pg_catalog.pg_class c ON  a.attrelid = c.oid
     WHERE pg_catalog.pg_table_is_visible(c.oid)
       AND c.relname = $1
       AND a.attname = $2
       AND attnum    > 0
       AND NOT a.attisdropped
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_context
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_context"(name, name);
CREATE OR REPLACE FUNCTION "public"."_get_context"(name, name)
  RETURNS "pg_catalog"."char" AS $BODY$
   SELECT c.castcontext
     FROM pg_catalog.pg_cast c
    WHERE _cmp_types(castsource, $1)
      AND _cmp_types(casttarget, $2)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_db_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_db_owner"(name);
CREATE OR REPLACE FUNCTION "public"."_get_db_owner"(name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(datdba)
      FROM pg_catalog.pg_database
     WHERE datname = $1;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_db_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_db_privs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_db_privs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
DECLARE
    privs  TEXT[] := _db_privs();
    grants TEXT[] := '{}';
BEGIN
    FOR i IN 1..array_upper(privs, 1) LOOP
        BEGIN
            IF pg_catalog.has_database_privilege($1, $2, privs[i]) THEN
                grants := grants || privs[i];
            END IF;
        EXCEPTION WHEN invalid_catalog_name THEN
            -- Not a valid db name.
            RETURN '{invalid_catalog_name}';
        WHEN undefined_object THEN
            -- Not a valid role.
            RETURN '{undefined_role}';
        WHEN invalid_parameter_value THEN
            -- Not a valid permission on this version of PostgreSQL; ignore;
        END;
    END LOOP;
    RETURN grants;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_dtype
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_dtype"(name);
CREATE OR REPLACE FUNCTION "public"."_get_dtype"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT pg_catalog.format_type(t.oid, t.typtypmod)
      FROM pg_catalog.pg_type d
      JOIN pg_catalog.pg_type t  ON d.typbasetype  = t.oid
     WHERE d.typisdefined
       AND pg_catalog.pg_type_is_visible(d.oid)
       AND d.typname = LOWER($1)
       AND d.typtype = 'd'
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_dtype
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_dtype"(name, text, bool);
CREATE OR REPLACE FUNCTION "public"."_get_dtype"(name, text, bool)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE WHEN $3 AND pg_catalog.pg_type_is_visible(t.oid)
                THEN quote_ident(tn.nspname) || '.'
                ELSE ''
            END || pg_catalog.format_type(t.oid, t.typtypmod)
      FROM pg_catalog.pg_type d
      JOIN pg_catalog.pg_namespace dn ON d.typnamespace = dn.oid
      JOIN pg_catalog.pg_type t       ON d.typbasetype  = t.oid
      JOIN pg_catalog.pg_namespace tn ON t.typnamespace = tn.oid
     WHERE d.typisdefined
       AND dn.nspname = $1
       AND d.typname  = LOWER($2)
       AND d.typtype  = 'd'
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_fdw_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_fdw_privs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_fdw_privs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
BEGIN
    IF pg_catalog.has_foreign_data_wrapper_privilege($1, $2, 'USAGE') THEN
        RETURN '{USAGE}';
    ELSE
        RETURN '{}';
    END IF;
EXCEPTION WHEN undefined_object THEN
    -- Same error code for unknown user or fdw. So figure out which.
    RETURN CASE WHEN SQLERRM LIKE '%' || $1 || '%' THEN
        '{undefined_role}'
    ELSE
        '{undefined_fdw}'
    END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_func_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_func_owner"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_get_func_owner"(name, name, _name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT owner
      FROM tap_funky
     WHERE schema = $1
       AND name   = $2
       AND args   = array_to_string($3, ',')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_func_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_func_owner"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_get_func_owner"(name, _name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT owner
      FROM tap_funky
     WHERE name = $1
       AND args = array_to_string($2, ',')
       AND is_visible
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_func_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_func_privs"(text, text);
CREATE OR REPLACE FUNCTION "public"."_get_func_privs"(text, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
BEGIN
    IF pg_catalog.has_function_privilege($1, $2, 'EXECUTE') THEN
        RETURN '{EXECUTE}';
    ELSE
        RETURN '{}';
    END IF;
EXCEPTION
    -- Not a valid func name.
    WHEN undefined_function THEN RETURN '{undefined_function}';
    -- Not a valid role.
    WHEN undefined_object   THEN RETURN '{undefined_role}';
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_index_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_index_owner"(name, name);
CREATE OR REPLACE FUNCTION "public"."_get_index_owner"(name, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(ci.relowner)
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
     WHERE ct.relname = $1
       AND ci.relname = $2
       AND pg_catalog.pg_table_is_visible(ct.oid);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_index_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_index_owner"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_get_index_owner"(name, name, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(ci.relowner)
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
     WHERE n.nspname  = $1
       AND ct.relname = $2
       AND ci.relname = $3;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_lang_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_lang_privs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_lang_privs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
BEGIN
    IF pg_catalog.has_language_privilege($1, $2, 'USAGE') THEN
        RETURN '{USAGE}';
    ELSE
        RETURN '{}';
    END IF;
EXCEPTION WHEN undefined_object THEN
    -- Same error code for unknown user or language. So figure out which.
    RETURN CASE WHEN SQLERRM LIKE '%' || $1 || '%' THEN
        '{undefined_role}'
    ELSE
        '{undefined_language}'
    END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_language_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_language_owner"(name);
CREATE OR REPLACE FUNCTION "public"."_get_language_owner"(name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(lanowner)
      FROM pg_catalog.pg_language
     WHERE lanname = $1;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_latest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_latest"(text);
CREATE OR REPLACE FUNCTION "public"."_get_latest"(text)
  RETURNS "pg_catalog"."_int4" AS $BODY$
DECLARE
    ret integer[];
BEGIN
    EXECUTE 'SELECT ARRAY[id, value] FROM __tcache__ WHERE label = ' ||
    quote_literal($1) || ' AND id = (SELECT MAX(id) FROM __tcache__ WHERE label = ' ||
    quote_literal($1) || ') LIMIT 1' INTO ret;
    RETURN ret;
EXCEPTION WHEN undefined_table THEN
   RAISE EXCEPTION 'You tried to run a test without a plan! Gotta have a plan';
END;
$BODY$
  LANGUAGE plpgsql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _get_latest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_latest"(text, int4);
CREATE OR REPLACE FUNCTION "public"."_get_latest"(text, int4)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
    ret integer;
BEGIN
    EXECUTE 'SELECT MAX(id) FROM __tcache__ WHERE label = ' ||
    quote_literal($1) || ' AND value = ' || $2 INTO ret;
    RETURN ret;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _get_note
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_note"(int4);
CREATE OR REPLACE FUNCTION "public"."_get_note"(int4)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    ret text;
BEGIN
    EXECUTE 'SELECT note FROM __tcache__ WHERE id = ' || $1 || ' LIMIT 1' INTO ret;
    RETURN ret;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _get_note
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_note"(text);
CREATE OR REPLACE FUNCTION "public"."_get_note"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    ret text;
BEGIN
    EXECUTE 'SELECT note FROM __tcache__ WHERE label = ' || quote_literal($1) || ' LIMIT 1' INTO ret;
    RETURN ret;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _get_opclass_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_opclass_owner"(name);
CREATE OR REPLACE FUNCTION "public"."_get_opclass_owner"(name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(opcowner)
      FROM pg_catalog.pg_opclass
     WHERE opcname = $1
       AND pg_catalog.pg_opclass_is_visible(oid);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_opclass_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_opclass_owner"(name, name);
CREATE OR REPLACE FUNCTION "public"."_get_opclass_owner"(name, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(opcowner)
      FROM pg_catalog.pg_opclass oc
      JOIN pg_catalog.pg_namespace n ON oc.opcnamespace = n.oid
     WHERE n.nspname = $1
       AND opcname   = $2;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_rel_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_rel_owner"(_bpchar, name);
CREATE OR REPLACE FUNCTION "public"."_get_rel_owner"(_bpchar, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(c.relowner)
      FROM pg_catalog.pg_class c
     WHERE c.relkind = ANY($1)
       AND c.relname = $2
       AND pg_catalog.pg_table_is_visible(c.oid)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_rel_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_rel_owner"(bpchar, name);
CREATE OR REPLACE FUNCTION "public"."_get_rel_owner"(bpchar, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT _get_rel_owner(ARRAY[$1], $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_rel_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_rel_owner"(_bpchar, name, name);
CREATE OR REPLACE FUNCTION "public"."_get_rel_owner"(_bpchar, name, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(c.relowner)
      FROM pg_catalog.pg_class c
      JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
     WHERE c.relkind = ANY($1)
       AND n.nspname = $2
       AND c.relname = $3
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_rel_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_rel_owner"(name);
CREATE OR REPLACE FUNCTION "public"."_get_rel_owner"(name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(c.relowner)
      FROM pg_catalog.pg_class c
     WHERE c.relname = $1
       AND pg_catalog.pg_table_is_visible(c.oid)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_rel_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_rel_owner"(name, name);
CREATE OR REPLACE FUNCTION "public"."_get_rel_owner"(name, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(c.relowner)
      FROM pg_catalog.pg_class c
      JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
     WHERE n.nspname = $1
       AND c.relname = $2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_rel_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_rel_owner"(bpchar, name, name);
CREATE OR REPLACE FUNCTION "public"."_get_rel_owner"(bpchar, name, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT _get_rel_owner(ARRAY[$1], $2, $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_schema_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_schema_owner"(name);
CREATE OR REPLACE FUNCTION "public"."_get_schema_owner"(name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(nspowner)
      FROM pg_catalog.pg_namespace
     WHERE nspname = $1;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_schema_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_schema_privs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_schema_privs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
DECLARE
    privs  TEXT[] := ARRAY['CREATE', 'USAGE'];
    grants TEXT[] := '{}';
BEGIN
    FOR i IN 1..array_upper(privs, 1) LOOP
        IF pg_catalog.has_schema_privilege($1, $2, privs[i]) THEN
            grants := grants || privs[i];
        END IF;
    END LOOP;
    RETURN grants;
EXCEPTION
    -- Not a valid schema name.
    WHEN invalid_schema_name THEN RETURN '{invalid_schema_name}';
    -- Not a valid role.
    WHEN undefined_object   THEN RETURN '{undefined_role}';
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_sequence_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_sequence_privs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_sequence_privs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
DECLARE
    privs  TEXT[] := ARRAY['SELECT', 'UPDATE', 'USAGE'];
    grants TEXT[] := '{}';
BEGIN
    FOR i IN 1..array_upper(privs, 1) LOOP
        BEGIN
            IF pg_catalog.has_sequence_privilege($1, $2, privs[i]) THEN
                grants := grants || privs[i];
            END IF;
        EXCEPTION WHEN undefined_table THEN
            -- Not a valid sequence name.
            RETURN '{undefined_table}';
        WHEN undefined_object THEN
            -- Not a valid role.
            RETURN '{undefined_role}';
        WHEN invalid_parameter_value THEN
            -- Not a valid permission on this version of PostgreSQL; ignore;
        END;
    END LOOP;
    RETURN grants;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_server_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_server_privs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_server_privs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
BEGIN
    IF pg_catalog.has_server_privilege($1, $2, 'USAGE') THEN
        RETURN '{USAGE}';
    ELSE
        RETURN '{}';
    END IF;
EXCEPTION WHEN undefined_object THEN
    -- Same error code for unknown user or server. So figure out which.
    RETURN CASE WHEN SQLERRM LIKE '%' || $1 || '%' THEN
        '{undefined_role}'
    ELSE
        '{undefined_server}'
    END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_table_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_table_privs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_table_privs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
DECLARE
    privs  TEXT[] := _table_privs();
    grants TEXT[] := '{}';
BEGIN
    FOR i IN 1..array_upper(privs, 1) LOOP
        BEGIN
            IF pg_catalog.has_table_privilege($1, $2, privs[i]) THEN
                grants := grants || privs[i];
            END IF;
        EXCEPTION WHEN undefined_table THEN
            -- Not a valid table name.
            RETURN '{undefined_table}';
        WHEN undefined_object THEN
            -- Not a valid role.
            RETURN '{undefined_role}';
        WHEN invalid_parameter_value THEN
            -- Not a valid permission on this version of PostgreSQL; ignore;
        END;
    END LOOP;
    RETURN grants;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_tablespace_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_tablespace_owner"(name);
CREATE OR REPLACE FUNCTION "public"."_get_tablespace_owner"(name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(spcowner)
      FROM pg_catalog.pg_tablespace
     WHERE spcname = $1;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_tablespaceprivs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_tablespaceprivs"(name, text);
CREATE OR REPLACE FUNCTION "public"."_get_tablespaceprivs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
BEGIN
    IF pg_catalog.has_tablespace_privilege($1, $2, 'CREATE') THEN
        RETURN '{CREATE}';
    ELSE
        RETURN '{}';
    END IF;
EXCEPTION WHEN undefined_object THEN
    -- Same error code for unknown user or tablespace. So figure out which.
    RETURN CASE WHEN SQLERRM LIKE '%' || $1 || '%' THEN
        '{undefined_role}'
    ELSE
        '{undefined_tablespace}'
    END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_type_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_type_owner"(name);
CREATE OR REPLACE FUNCTION "public"."_get_type_owner"(name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(typowner)
      FROM pg_catalog.pg_type
     WHERE typname = $1
       AND pg_catalog.pg_type_is_visible(oid)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _get_type_owner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_get_type_owner"(name, name);
CREATE OR REPLACE FUNCTION "public"."_get_type_owner"(name, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT pg_catalog.pg_get_userbyid(t.typowner)
      FROM pg_catalog.pg_type t
      JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace
     WHERE n.nspname = $1
       AND t.typname = $2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _got_func
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_got_func"(name, name);
CREATE OR REPLACE FUNCTION "public"."_got_func"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS( SELECT TRUE FROM tap_funky WHERE schema = $1 AND name = $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _got_func
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_got_func"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_got_func"(name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT TRUE
          FROM tap_funky
         WHERE name = $1
           AND args = array_to_string($2, ',')
           AND is_visible
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _got_func
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_got_func"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_got_func"(name, name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT TRUE
          FROM tap_funky
         WHERE schema = $1
           AND name   = $2
           AND args   = array_to_string($3, ',')
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _got_func
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_got_func"(name);
CREATE OR REPLACE FUNCTION "public"."_got_func"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS( SELECT TRUE FROM tap_funky WHERE name = $1 AND is_visible);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _grolist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_grolist"(name);
CREATE OR REPLACE FUNCTION "public"."_grolist"(name)
  RETURNS "pg_catalog"."_oid" AS $BODY$
    SELECT ARRAY(
        SELECT member
          FROM pg_catalog.pg_auth_members m
          JOIN pg_catalog.pg_roles r ON m.roleid = r.oid
         WHERE r.rolname =  $1
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _has_def
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_has_def"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_has_def"(name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT a.atthasdef
      FROM pg_catalog.pg_namespace n
      JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
      JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
     WHERE n.nspname = $1
       AND c.relname = $2
       AND a.attnum > 0
       AND NOT a.attisdropped
       AND a.attname = $3
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _has_def
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_has_def"(name, name);
CREATE OR REPLACE FUNCTION "public"."_has_def"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT a.atthasdef
      FROM pg_catalog.pg_class c
      JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
     WHERE c.relname = $1
       AND a.attnum > 0
       AND NOT a.attisdropped
       AND a.attname = $2
       AND pg_catalog.pg_table_is_visible(c.oid)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _has_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_has_group"(name);
CREATE OR REPLACE FUNCTION "public"."_has_group"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_group
         WHERE groname = $1
    );
$BODY$
  LANGUAGE sql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _has_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_has_role"(name);
CREATE OR REPLACE FUNCTION "public"."_has_role"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_roles
         WHERE rolname = $1
    );
$BODY$
  LANGUAGE sql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _has_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_has_type"(name, _bpchar);
CREATE OR REPLACE FUNCTION "public"."_has_type"(name, _bpchar)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_type t
         WHERE t.typisdefined
           AND pg_catalog.pg_type_is_visible(t.oid)
           AND t.typname = $1
           AND t.typtype = ANY( COALESCE($2, ARRAY['b', 'c', 'd', 'p', 'e']) )
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _has_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_has_type"(name, name, _bpchar);
CREATE OR REPLACE FUNCTION "public"."_has_type"(name, name, _bpchar)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_type t
          JOIN pg_catalog.pg_namespace n ON t.typnamespace = n.oid
         WHERE t.typisdefined
           AND n.nspname = $1
           AND t.typname = $2
           AND t.typtype = ANY( COALESCE($3, ARRAY['b', 'c', 'd', 'p', 'e']) )
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _has_user
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_has_user"(name);
CREATE OR REPLACE FUNCTION "public"."_has_user"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS( SELECT true FROM pg_catalog.pg_user WHERE usename = $1);
$BODY$
  LANGUAGE sql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _hasc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_hasc"(name, bpchar);
CREATE OR REPLACE FUNCTION "public"."_hasc"(name, bpchar)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
            SELECT true
              FROM pg_catalog.pg_class c
              JOIN pg_catalog.pg_constraint x ON c.oid = x.conrelid
             WHERE c.relhaspkey = true
               AND pg_table_is_visible(c.oid)
               AND c.relname = $1
               AND x.contype = $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _hasc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_hasc"(name, name, bpchar);
CREATE OR REPLACE FUNCTION "public"."_hasc"(name, name, bpchar)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
            SELECT true
              FROM pg_catalog.pg_namespace n
              JOIN pg_catalog.pg_class c      ON c.relnamespace = n.oid
              JOIN pg_catalog.pg_constraint x ON c.oid = x.conrelid
             WHERE c.relhaspkey = true
               AND n.nspname = $1
               AND c.relname = $2
               AND x.contype = $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _have_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_have_index"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_have_index"(name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
    SELECT TRUE
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
     WHERE n.nspname  = $1
       AND ct.relname = $2
       AND ci.relname = $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _have_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_have_index"(name, name);
CREATE OR REPLACE FUNCTION "public"."_have_index"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
    SELECT TRUE
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
     WHERE ct.relname = $1
       AND ci.relname = $2
       AND pg_catalog.pg_table_is_visible(ct.oid)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _ident_array_to_string
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ident_array_to_string"(_name, text);
CREATE OR REPLACE FUNCTION "public"."_ident_array_to_string"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT array_to_string(ARRAY(
        SELECT quote_ident($1[i])
          FROM generate_series(1, array_upper($1, 1)) s(i)
         ORDER BY i
    ), $2);
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for _ikeys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ikeys"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_ikeys"(name, name, name)
  RETURNS "pg_catalog"."_text" AS $BODY$
    SELECT ARRAY(
        SELECT pg_catalog.pg_get_indexdef( ci.oid, s.i + 1, false)
          FROM pg_catalog.pg_index x
          JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
          JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
          JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
          JOIN generate_series(0, current_setting('max_index_keys')::int - 1) s(i)
            ON x.indkey[s.i] IS NOT NULL
         WHERE ct.relname = $2
           AND ci.relname = $3
           AND n.nspname  = $1
         ORDER BY s.i
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _ikeys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_ikeys"(name, name);
CREATE OR REPLACE FUNCTION "public"."_ikeys"(name, name)
  RETURNS "pg_catalog"."_text" AS $BODY$
    SELECT ARRAY(
        SELECT pg_catalog.pg_get_indexdef( ci.oid, s.i + 1, false)
          FROM pg_catalog.pg_index x
          JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
          JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
          JOIN generate_series(0, current_setting('max_index_keys')::int - 1) s(i)
            ON x.indkey[s.i] IS NOT NULL
         WHERE ct.relname = $1
           AND ci.relname = $2
           AND pg_catalog.pg_table_is_visible(ct.oid)
         ORDER BY s.i
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _is_indexed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_is_indexed"(name, name, _text);
CREATE OR REPLACE FUNCTION "public"."_is_indexed"(name, name, _text)
  RETURNS "pg_catalog"."bool" AS $BODY$
SELECT EXISTS( SELECT TRUE FROM (
        SELECT _ikeys(coalesce($1, n.nspname), $2, ci.relname) AS cols
          FROM pg_catalog.pg_index x
          JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
          JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
          JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
         WHERE ($1 IS NULL OR n.nspname  = $1)
           AND ct.relname = $2
    ) icols
    WHERE cols = $3 )
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _is_instead
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_is_instead"(name, name);
CREATE OR REPLACE FUNCTION "public"."_is_instead"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT r.is_instead
      FROM pg_catalog.pg_rewrite r
      JOIN pg_catalog.pg_class c     ON c.oid = r.ev_class
     WHERE r.rulename = $2
       AND c.relname  = $1
       AND pg_catalog.pg_table_is_visible(c.oid)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _is_instead
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_is_instead"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_is_instead"(name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT r.is_instead
      FROM pg_catalog.pg_rewrite r
      JOIN pg_catalog.pg_class c     ON c.oid = r.ev_class
      JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid
     WHERE r.rulename = $3
       AND c.relname  = $2
       AND n.nspname  = $1
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _is_schema
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_is_schema"(name);
CREATE OR REPLACE FUNCTION "public"."_is_schema"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_namespace
          WHERE nspname = $1
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _is_super
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_is_super"(name);
CREATE OR REPLACE FUNCTION "public"."_is_super"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT rolsuper
      FROM pg_catalog.pg_roles
     WHERE rolname = $1
$BODY$
  LANGUAGE sql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _is_trusted
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_is_trusted"(name);
CREATE OR REPLACE FUNCTION "public"."_is_trusted"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT lanpltrusted FROM pg_catalog.pg_language WHERE lanname = $1;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _is_verbose
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_is_verbose"();
CREATE OR REPLACE FUNCTION "public"."_is_verbose"()
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT current_setting('client_min_messages') NOT IN (
        'warning', 'error', 'fatal', 'panic'
    );
$BODY$
  LANGUAGE sql STABLE
  COST 100;

-- ----------------------------
-- Function structure for _keys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_keys"(name, name, bpchar);
CREATE OR REPLACE FUNCTION "public"."_keys"(name, name, bpchar)
  RETURNS SETOF "pg_catalog"."_name" AS $BODY$
    SELECT _pg_sv_column_array(x.conrelid,x.conkey)
      FROM pg_catalog.pg_namespace n
      JOIN pg_catalog.pg_class c       ON n.oid = c.relnamespace
      JOIN pg_catalog.pg_constraint x  ON c.oid = x.conrelid
     WHERE n.nspname = $1
       AND c.relname = $2
       AND x.contype = $3
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _keys
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_keys"(name, bpchar);
CREATE OR REPLACE FUNCTION "public"."_keys"(name, bpchar)
  RETURNS SETOF "pg_catalog"."_name" AS $BODY$
    SELECT _pg_sv_column_array(x.conrelid,x.conkey)
      FROM pg_catalog.pg_class c
      JOIN pg_catalog.pg_constraint x  ON c.oid = x.conrelid
       AND c.relname = $1
       AND x.contype = $2
     WHERE pg_catalog.pg_table_is_visible(c.oid)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _lang
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_lang"(name, name);
CREATE OR REPLACE FUNCTION "public"."_lang"(name, name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT l.lanname
      FROM tap_funky f
      JOIN pg_catalog.pg_language l ON f.langoid = l.oid
     WHERE f.schema = $1
       and f.name   = $2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _lang
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_lang"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_lang"(name, name, _name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT l.lanname
      FROM tap_funky f
      JOIN pg_catalog.pg_language l ON f.langoid = l.oid
     WHERE f.schema = $1
       and f.name   = $2
       AND f.args   = array_to_string($3, ',')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _lang
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_lang"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_lang"(name, _name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT l.lanname
      FROM tap_funky f
      JOIN pg_catalog.pg_language l ON f.langoid = l.oid
     WHERE f.name = $1
       AND f.args = array_to_string($2, ',')
       AND f.is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _lang
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_lang"(name);
CREATE OR REPLACE FUNCTION "public"."_lang"(name)
  RETURNS "pg_catalog"."name" AS $BODY$
    SELECT l.lanname
      FROM tap_funky f
      JOIN pg_catalog.pg_language l ON f.langoid = l.oid
     WHERE f.name = $1
       AND f.is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _missing
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_missing"(bpchar, name, _name);
CREATE OR REPLACE FUNCTION "public"."_missing"(bpchar, name, _name)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT _missing(ARRAY[$1], $2, $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _missing
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_missing"(bpchar, _name);
CREATE OR REPLACE FUNCTION "public"."_missing"(bpchar, _name)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT _missing(ARRAY[$1], $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _missing
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_missing"(_bpchar, name, _name);
CREATE OR REPLACE FUNCTION "public"."_missing"(_bpchar, name, _name)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT ARRAY(
        SELECT $3[i]
          FROM generate_series(1, array_upper($3, 1)) s(i)
        EXCEPT
        SELECT c.relname
          FROM pg_catalog.pg_namespace n
          JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
         WHERE c.relkind = ANY($1)
           AND n.nspname = $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _missing
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_missing"(_bpchar, _name);
CREATE OR REPLACE FUNCTION "public"."_missing"(_bpchar, _name)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT ARRAY(
        SELECT $2[i]
          FROM generate_series(1, array_upper($2, 1)) s(i)
        EXCEPT
        SELECT c.relname
          FROM pg_catalog.pg_namespace n
          JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
         WHERE pg_catalog.pg_table_is_visible(c.oid)
           AND n.nspname NOT IN ('pg_catalog', 'information_schema')
           AND c.relkind = ANY($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _nosuch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_nosuch"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_nosuch"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT E'\n' || diag(
        '    Function '
          || CASE WHEN $1 IS NOT NULL THEN quote_ident($1) || '.' ELSE '' END
          || quote_ident($2) || '('
          || array_to_string($3, ', ') || ') does not exist'
    );
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for _op_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_op_exists"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_op_exists"(name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
       SELECT TRUE
         FROM pg_catalog.pg_operator o
        WHERE pg_catalog.pg_operator_is_visible(o.oid)
          AND o.oprname = $2
          AND CASE o.oprkind WHEN 'l' THEN $1 IS NULL
              ELSE _cmp_types(o.oprleft, $1) END
          AND CASE o.oprkind WHEN 'r' THEN $3 IS NULL
              ELSE _cmp_types(o.oprright, $3) END
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _op_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_op_exists"(name, name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."_op_exists"(name, name, name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
       SELECT TRUE
         FROM pg_catalog.pg_operator o
         JOIN pg_catalog.pg_namespace n ON o.oprnamespace = n.oid
        WHERE n.nspname = $2
          AND o.oprname = $3
          AND CASE o.oprkind WHEN 'l' THEN $1 IS NULL
              ELSE _cmp_types(o.oprleft, $1) END
          AND CASE o.oprkind WHEN 'r' THEN $4 IS NULL
              ELSE _cmp_types(o.oprright, $4) END
          AND _cmp_types(o.oprresult, $5)
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _op_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_op_exists"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."_op_exists"(name, name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
       SELECT TRUE
         FROM pg_catalog.pg_operator o
        WHERE pg_catalog.pg_operator_is_visible(o.oid)
          AND o.oprname = $2
          AND CASE o.oprkind WHEN 'l' THEN $1 IS NULL
              ELSE _cmp_types(o.oprleft, $1) END
          AND CASE o.oprkind WHEN 'r' THEN $3 IS NULL
              ELSE _cmp_types(o.oprright, $3) END
          AND _cmp_types(o.oprresult, $4)
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _opc_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_opc_exists"(name);
CREATE OR REPLACE FUNCTION "public"."_opc_exists"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
        SELECT TRUE
          FROM pg_catalog.pg_opclass oc
         WHERE oc.opcname = $1
           AND pg_opclass_is_visible(oid)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _opc_exists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_opc_exists"(name, name);
CREATE OR REPLACE FUNCTION "public"."_opc_exists"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS (
        SELECT TRUE
          FROM pg_catalog.pg_opclass oc
          JOIN pg_catalog.pg_namespace n ON oc.opcnamespace = n.oid
         WHERE n.nspname  = $1
           AND oc.opcname = $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _partof
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_partof"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."_partof"(name, name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_namespace cn
          JOIN pg_catalog.pg_class cc ON cn.oid = cc.relnamespace
          JOIN pg_catalog.pg_inherits i ON cc.oid = i.inhrelid
          JOIN pg_catalog.pg_class pc ON i.inhparent = pc.oid
          JOIN pg_catalog.pg_namespace pn ON pc.relnamespace = pn.oid
         WHERE cn.nspname = $1
           AND cc.relname = $2
           AND cc.relispartition
           AND pn.nspname = $3
           AND pc.relname = $4
           AND pc.relkind = 'p'
    )
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _partof
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_partof"(name, name);
CREATE OR REPLACE FUNCTION "public"."_partof"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_class cc
          JOIN pg_catalog.pg_inherits i ON cc.oid = i.inhrelid
          JOIN pg_catalog.pg_class pc ON i.inhparent = pc.oid
         WHERE cc.relname = $1
           AND cc.relispartition
           AND pc.relname = $2
           AND pc.relkind = 'p'
           AND pg_catalog.pg_table_is_visible(cc.oid)
           AND pg_catalog.pg_table_is_visible(pc.oid)
    )
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _parts
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_parts"(name, name);
CREATE OR REPLACE FUNCTION "public"."_parts"(name, name)
  RETURNS SETOF "pg_catalog"."name" AS $BODY$
    SELECT i.inhrelid::regclass::name
      FROM pg_catalog.pg_namespace n
      JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
      JOIN pg_catalog.pg_inherits i ON c.oid = i.inhparent
     WHERE n.nspname = $1
       AND c.relname = $2
       AND c.relkind = 'p'
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _parts
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_parts"(name);
CREATE OR REPLACE FUNCTION "public"."_parts"(name)
  RETURNS SETOF "pg_catalog"."name" AS $BODY$
    SELECT i.inhrelid::regclass::name
      FROM pg_catalog.pg_class c
      JOIN pg_catalog.pg_inherits i ON c.oid = i.inhparent
     WHERE c.relname = $1
       AND c.relkind = 'p'
       AND pg_catalog.pg_table_is_visible(c.oid)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _pg_sv_column_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_pg_sv_column_array"(oid, _int2);
CREATE OR REPLACE FUNCTION "public"."_pg_sv_column_array"(oid, _int2)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT ARRAY(
        SELECT a.attname
          FROM pg_catalog.pg_attribute a
          JOIN generate_series(1, array_upper($2, 1)) s(i) ON a.attnum = $2[i]
         WHERE attrelid = $1
         ORDER BY i
    )
$BODY$
  LANGUAGE sql STABLE
  COST 100;

-- ----------------------------
-- Function structure for _pg_sv_table_accessible
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_pg_sv_table_accessible"(oid, oid);
CREATE OR REPLACE FUNCTION "public"."_pg_sv_table_accessible"(oid, oid)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT CASE WHEN has_schema_privilege($1, 'USAGE') THEN (
                  has_table_privilege($2, 'SELECT')
               OR has_table_privilege($2, 'INSERT')
               or has_table_privilege($2, 'UPDATE')
               OR has_table_privilege($2, 'DELETE')
               OR has_table_privilege($2, 'RULE')
               OR has_table_privilege($2, 'REFERENCES')
               OR has_table_privilege($2, 'TRIGGER')
           ) ELSE FALSE
    END;
$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;

-- ----------------------------
-- Function structure for _pg_sv_type_array
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_pg_sv_type_array"(_oid);
CREATE OR REPLACE FUNCTION "public"."_pg_sv_type_array"(_oid)
  RETURNS "pg_catalog"."_name" AS $BODY$
    SELECT ARRAY(
        SELECT t.typname
          FROM pg_catalog.pg_type t
          JOIN generate_series(1, array_upper($1, 1)) s(i) ON t.oid = $1[i]
         ORDER BY i
    )
$BODY$
  LANGUAGE sql STABLE
  COST 100;

-- ----------------------------
-- Function structure for _query
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_query"(text);
CREATE OR REPLACE FUNCTION "public"."_query"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE
        WHEN $1 LIKE '"%' OR $1 !~ '[[:space:]]' THEN 'EXECUTE ' || $1
        ELSE $1
    END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _quote_ident_like
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_quote_ident_like"(text, text);
CREATE OR REPLACE FUNCTION "public"."_quote_ident_like"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have    TEXT;
    pcision TEXT;
BEGIN
    -- Just return it if rhs isn't quoted.
    IF $2 !~ '"' THEN RETURN $1; END IF;

    -- If it's quoted ident without precision, return it quoted.
    IF $2 ~ '"$' THEN RETURN quote_ident($1); END IF;

    pcision := substring($1 FROM '[(][^")]+[)]$');

    -- Just quote it if thre is no precision.
    if pcision IS NULL THEN RETURN quote_ident($1); END IF;

    -- Quote the non-precision part and concatenate with precision.
    RETURN quote_ident(substring($1 FOR char_length($1) - char_length(pcision)))
        || pcision;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _refine_vol
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_refine_vol"(text);
CREATE OR REPLACE FUNCTION "public"."_refine_vol"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _expand_vol(substring(LOWER($1) FROM 1 FOR 1)::char);
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for _relcomp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_relcomp"(text, anyarray, text, text);
CREATE OR REPLACE FUNCTION "public"."_relcomp"(text, anyarray, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _docomp(
        _temptable( $1, '__taphave__' ),
        _temptable( $2, '__tapwant__' ),
        $3, $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _relcomp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_relcomp"(text, text, text, text);
CREATE OR REPLACE FUNCTION "public"."_relcomp"(text, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _docomp(
        _temptable( $1, '__taphave__' ),
        _temptable( $2, '__tapwant__' ),
        $3, $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _relcomp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_relcomp"(text, text, text, text, text);
CREATE OR REPLACE FUNCTION "public"."_relcomp"(text, text, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have    TEXT    := _temptable( $1, '__taphave__' );
    want    TEXT    := _temptable( $2, '__tapwant__' );
    results TEXT[]  := '{}';
    res     BOOLEAN := TRUE;
    msg     TEXT    := '';
    rec     RECORD;
BEGIN
    BEGIN
        -- Find relevant records.
        FOR rec in EXECUTE 'SELECT * FROM ' || want || ' ' || $4
                       || ' SELECT * FROM ' || have LOOP
            results := results || rec::text;
        END LOOP;

        -- Drop the temporary tables.
        EXECUTE 'DROP TABLE ' || have;
        EXECUTE 'DROP TABLE ' || want;
    EXCEPTION WHEN syntax_error OR datatype_mismatch THEN
        msg := E'\n' || diag(
            E'    Columns differ between queries:\n'
            || '        have: (' || _temptypes(have) || E')\n'
            || '        want: (' || _temptypes(want) || ')'
        );
        EXECUTE 'DROP TABLE ' || have;
        EXECUTE 'DROP TABLE ' || want;
        RETURN ok(FALSE, $3) || msg;
    END;

    -- What records do we have?
    IF results[1] IS NOT NULL THEN
        res := FALSE;
        msg := msg || E'\n' || diag(
            '    ' || $5 || E' records:\n        '
            ||  array_to_string( results, E'\n        ' )
        );
    END IF;

    RETURN ok(res, $3) || msg;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _relexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_relexists"(name);
CREATE OR REPLACE FUNCTION "public"."_relexists"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_class c
         WHERE pg_catalog.pg_table_is_visible(c.oid)
           AND c.relname = $1
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _relexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_relexists"(name, name);
CREATE OR REPLACE FUNCTION "public"."_relexists"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_namespace n
          JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
         WHERE n.nspname = $1
           AND c.relname = $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _relne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_relne"(text, text, text, text);
CREATE OR REPLACE FUNCTION "public"."_relne"(text, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _do_ne(
        _temptable( $1, '__taphave__' ),
        _temptable( $2, '__tapwant__' ),
        $3, $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _relne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_relne"(text, anyarray, text, text);
CREATE OR REPLACE FUNCTION "public"."_relne"(text, anyarray, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _do_ne(
        _temptable( $1, '__taphave__' ),
        _temptable( $2, '__tapwant__' ),
        $3, $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_returns"(name);
CREATE OR REPLACE FUNCTION "public"."_returns"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT returns FROM tap_funky WHERE name = $1 AND is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_returns"(name, name);
CREATE OR REPLACE FUNCTION "public"."_returns"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT returns FROM tap_funky WHERE schema = $1 AND name = $2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_returns"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_returns"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT returns
      FROM tap_funky
     WHERE schema = $1
       AND name   = $2
       AND args   = array_to_string($3, ',')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_returns"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_returns"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT returns
      FROM tap_funky
     WHERE name = $1
       AND args = array_to_string($2, ',')
       AND is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _rexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_rexists"(_bpchar, name);
CREATE OR REPLACE FUNCTION "public"."_rexists"(_bpchar, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_class c
         WHERE c.relkind = ANY($1)
           AND pg_catalog.pg_table_is_visible(c.oid)
           AND c.relname = $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _rexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_rexists"(bpchar, name, name);
CREATE OR REPLACE FUNCTION "public"."_rexists"(bpchar, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT _rexists(ARRAY[$1], $2, $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _rexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_rexists"(_bpchar, name, name);
CREATE OR REPLACE FUNCTION "public"."_rexists"(_bpchar, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_namespace n
          JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
         WHERE c.relkind = ANY($1)
           AND n.nspname = $2
           AND c.relname = $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _rexists
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_rexists"(bpchar, name);
CREATE OR REPLACE FUNCTION "public"."_rexists"(bpchar, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
SELECT _rexists(ARRAY[$1], $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _rule_on
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_rule_on"(name, name);
CREATE OR REPLACE FUNCTION "public"."_rule_on"(name, name)
  RETURNS "pg_catalog"."char" AS $BODY$
    SELECT r.ev_type
      FROM pg_catalog.pg_rewrite r
      JOIN pg_catalog.pg_class c     ON c.oid = r.ev_class
     WHERE r.rulename = $2
       AND c.relname  = $1
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _rule_on
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_rule_on"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_rule_on"(name, name, name)
  RETURNS "pg_catalog"."char" AS $BODY$
    SELECT r.ev_type
      FROM pg_catalog.pg_rewrite r
      JOIN pg_catalog.pg_class c     ON c.oid = r.ev_class
      JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid
     WHERE r.rulename = $3
       AND c.relname  = $2
       AND n.nspname  = $1
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _runem
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_runem"(_text, bool);
CREATE OR REPLACE FUNCTION "public"."_runem"(_text, bool)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
DECLARE
    tap    text;
    lbound int := array_lower($1, 1);
BEGIN
    IF lbound IS NULL THEN RETURN; END IF;
    FOR i IN lbound..array_upper($1, 1) LOOP
        -- Send the name of the function to diag if warranted.
        IF $2 THEN RETURN NEXT diag( $1[i] || '()' ); END IF;
        -- Execute the tap function and return its results.
        FOR tap IN EXECUTE 'SELECT * FROM ' || $1[i] || '()' LOOP
            RETURN NEXT tap;
        END LOOP;
    END LOOP;
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _runner
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_runner"(_text, _text, _text, _text, _text);
CREATE OR REPLACE FUNCTION "public"."_runner"(_text, _text, _text, _text, _text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
DECLARE
    startup  ALIAS FOR $1;
    shutdown ALIAS FOR $2;
    setup    ALIAS FOR $3;
    teardown ALIAS FOR $4;
    tests    ALIAS FOR $5;
    tap      TEXT;
    tfaild   INTEGER := 0;
    ffaild   INTEGER := 0;
    tnumb    INTEGER := 0;
    fnumb    INTEGER := 0;
    tok      BOOLEAN := TRUE;
BEGIN
    BEGIN
        -- No plan support.
        PERFORM * FROM no_plan();
        FOR tap IN SELECT * FROM _runem(startup, false) LOOP RETURN NEXT tap; END LOOP;
    EXCEPTION
        -- Catch all exceptions and simply rethrow custom exceptions. This
        -- will roll back everything in the above block.
        WHEN raise_exception THEN RAISE EXCEPTION '%', SQLERRM;
    END;

    -- Record how startup tests have failed.
    tfaild := num_failed();

    FOR i IN 1..COALESCE(array_upper(tests, 1), 0) LOOP

        -- What subtest are we running?
        RETURN NEXT '    ' || diag_test_name('Subtest: ' || tests[i]);

        -- Reset the results.
        tok := TRUE;
        tnumb := COALESCE(_get('curr_test'), 0);

        IF tnumb > 0 THEN
            EXECUTE 'ALTER SEQUENCE __tresults___numb_seq RESTART WITH 1';
            PERFORM _set('curr_test', 0);
            PERFORM _set('failed', 0);
        END IF;

        DECLARE
            errstate text;
            errmsg   text;
            detail   text;
            hint     text;
            context  text;
            schname  text;
            tabname  text;
            colname  text;
            chkname  text;
            typname  text;
        BEGIN
            BEGIN
                -- Run the setup functions.
                FOR tap IN SELECT * FROM _runem(setup, false) LOOP
                    RETURN NEXT regexp_replace(tap, '^', '    ', 'gn');
                END LOOP;

                -- Run the actual test function.
                FOR tap IN EXECUTE 'SELECT * FROM ' || tests[i] || '()' LOOP
                    RETURN NEXT regexp_replace(tap, '^', '    ', 'gn');
                END LOOP;

                -- Run the teardown functions.
                FOR tap IN SELECT * FROM _runem(teardown, false) LOOP
                    RETURN NEXT regexp_replace(tap, '^', '    ', 'gn');
                END LOOP;

                -- Emit the plan.
                fnumb := COALESCE(_get('curr_test'), 0);
                RETURN NEXT '    1..' || fnumb;

                -- Emit any error messages.
                IF fnumb = 0 THEN
                    RETURN NEXT '    # No tests run!';
                    tok = false;
                ELSE
                    -- Report failures.
                    ffaild := num_failed();
                    IF ffaild > 0 THEN
                        tok := FALSE;
                        RETURN NEXT '    ' || diag(
                            'Looks like you failed ' || ffaild || ' test' ||
                             CASE tfaild WHEN 1 THEN '' ELSE 's' END
                             || ' of ' || fnumb
                        );
                    END IF;
                END IF;

            EXCEPTION WHEN raise_exception THEN
                -- Something went wrong. Record that fact.
                errstate := SQLSTATE;
                errmsg := SQLERRM;
                GET STACKED DIAGNOSTICS
                    detail  = PG_EXCEPTION_DETAIL,
                    hint    = PG_EXCEPTION_HINT,
                    context = PG_EXCEPTION_CONTEXT,
                    schname = SCHEMA_NAME,
                    tabname = TABLE_NAME,
                    colname = COLUMN_NAME,
                    chkname = CONSTRAINT_NAME,
                    typname = PG_DATATYPE_NAME;
            END;

            -- Always raise an exception to rollback any changes.
            RAISE EXCEPTION '__TAP_ROLLBACK__';

        EXCEPTION WHEN raise_exception THEN
            IF errmsg IS NOT NULL THEN
                -- Something went wrong. Emit the error message.
                tok := FALSE;
               RETURN NEXT regexp_replace( diag('Test died: ' || _error_diag(
                   errstate, errmsg, detail, hint, context, schname, tabname, colname, chkname, typname
               )), '^', '    ', 'gn');
                errmsg := NULL;
            END IF;
        END;

        -- Restore the sequence.
        EXECUTE 'ALTER SEQUENCE __tresults___numb_seq RESTART WITH ' || tnumb + 1;
        PERFORM _set('curr_test', tnumb);
        PERFORM _set('failed', tfaild);

        -- Record this test.
        RETURN NEXT ok(tok, tests[i]);
        IF NOT tok THEN tfaild := tfaild + 1; END IF;

    END LOOP;

    -- Run the shutdown functions.
    FOR tap IN SELECT * FROM _runem(shutdown, false) LOOP RETURN NEXT tap; END LOOP;

    -- Finish up.
    FOR tap IN SELECT * FROM _finish( COALESCE(_get('curr_test'), 0), 0, tfaild ) LOOP
        RETURN NEXT tap;
    END LOOP;

    -- Clean up and return.
    PERFORM _cleanup();
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for _set
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_set"(int4, int4);
CREATE OR REPLACE FUNCTION "public"."_set"(int4, int4)
  RETURNS "pg_catalog"."int4" AS $BODY$
BEGIN
    EXECUTE 'UPDATE __tcache__ SET value = ' || $2
        || ' WHERE id = ' || $1;
    RETURN $2;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _set
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_set"(text, int4, text);
CREATE OR REPLACE FUNCTION "public"."_set"(text, int4, text)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
    rcount integer;
BEGIN
    EXECUTE 'UPDATE __tcache__ SET value = ' || $2
        || CASE WHEN $3 IS NULL THEN '' ELSE ', note = ' || quote_literal($3) END
        || ' WHERE label = ' || quote_literal($1);
    GET DIAGNOSTICS rcount = ROW_COUNT;
    IF rcount = 0 THEN
       RETURN _add( $1, $2, $3 );
    END IF;
    RETURN $2;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _set
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_set"(text, int4);
CREATE OR REPLACE FUNCTION "public"."_set"(text, int4)
  RETURNS "pg_catalog"."int4" AS $BODY$
    SELECT _set($1, $2, '')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_strict"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_strict"(name, name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_strict
      FROM tap_funky
     WHERE schema = $1
       AND name   = $2
       AND args   = array_to_string($3, ',')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_strict"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_strict"(name, _name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_strict
      FROM tap_funky
     WHERE name = $1
       AND args = array_to_string($2, ',')
       AND is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_strict"(name, name);
CREATE OR REPLACE FUNCTION "public"."_strict"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_strict FROM tap_funky WHERE schema = $1 AND name = $2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_strict"(name);
CREATE OR REPLACE FUNCTION "public"."_strict"(name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT is_strict FROM tap_funky WHERE name = $1 AND is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _table_privs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_table_privs"();
CREATE OR REPLACE FUNCTION "public"."_table_privs"()
  RETURNS "pg_catalog"."_name" AS $BODY$
DECLARE
    pgversion INTEGER := pg_version_num();
BEGIN
    IF pgversion < 80200 THEN RETURN ARRAY[
        'DELETE', 'INSERT', 'REFERENCES', 'RULE', 'SELECT', 'TRIGGER', 'UPDATE'
    ];
    ELSIF pgversion < 80400 THEN RETURN ARRAY[
        'DELETE', 'INSERT', 'REFERENCES', 'SELECT', 'TRIGGER', 'UPDATE'
    ];
    ELSE RETURN ARRAY[
        'DELETE', 'INSERT', 'REFERENCES', 'SELECT', 'TRIGGER', 'TRUNCATE', 'UPDATE'
    ];
    END IF;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _temptable
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_temptable"(anyarray, text);
CREATE OR REPLACE FUNCTION "public"."_temptable"(anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    CREATE TEMP TABLE _____coltmp___ AS
    SELECT $1[i]
    FROM generate_series(array_lower($1, 1), array_upper($1, 1)) s(i);
    EXECUTE 'ALTER TABLE _____coltmp___ RENAME TO ' || $2;
    return $2;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _temptable
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_temptable"(text, text);
CREATE OR REPLACE FUNCTION "public"."_temptable"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    EXECUTE 'CREATE TEMP TABLE ' || $2 || ' AS ' || _query($1);
    return $2;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _temptypes
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_temptypes"(text);
CREATE OR REPLACE FUNCTION "public"."_temptypes"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT array_to_string(ARRAY(
        SELECT pg_catalog.format_type(a.atttypid, a.atttypmod)
          FROM pg_catalog.pg_attribute a
          JOIN pg_catalog.pg_class c ON a.attrelid = c.oid
         WHERE c.oid = ('pg_temp.' || $1)::pg_catalog.regclass
           AND attnum > 0
           AND NOT attisdropped
         ORDER BY attnum
    ), ',');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _tlike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_tlike"(bool, text, text, text);
CREATE OR REPLACE FUNCTION "public"."_tlike"(bool, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( $1, $4 ) || CASE WHEN $1 THEN '' ELSE E'\n' || diag(
           '   error message: ' || COALESCE( quote_literal($2), 'NULL' ) ||
       E'\n   doesn''t match: ' || COALESCE( quote_literal($3), 'NULL' )
    ) END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _todo
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_todo"();
CREATE OR REPLACE FUNCTION "public"."_todo"()
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    todos INT[];
    note text;
BEGIN
    -- Get the latest id and value, because todo() might have been called
    -- again before the todos ran out for the first call to todo(). This
    -- allows them to nest.
    todos := _get_latest('todo');
    IF todos IS NULL THEN
        -- No todos.
        RETURN NULL;
    END IF;
    IF todos[2] = 0 THEN
        -- Todos depleted. Clean up.
        EXECUTE 'DELETE FROM __tcache__ WHERE id = ' || todos[1];
        RETURN NULL;
    END IF;
    -- Decrement the count of counted todos and return the reason.
    IF todos[2] <> -1 THEN
        PERFORM _set(todos[1], todos[2] - 1);
    END IF;
    note := _get_note(todos[1]);

    IF todos[2] = 1 THEN
        -- This was the last todo, so delete the record.
        EXECUTE 'DELETE FROM __tcache__ WHERE id = ' || todos[1];
    END IF;

    RETURN note;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _trig
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_trig"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."_trig"(name, name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_trigger t
          JOIN pg_catalog.pg_class c     ON c.oid = t.tgrelid
          JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
         WHERE n.nspname = $1
           AND c.relname = $2
           AND t.tgname  = $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _trig
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_trig"(name, name);
CREATE OR REPLACE FUNCTION "public"."_trig"(name, name)
  RETURNS "pg_catalog"."bool" AS $BODY$
    SELECT EXISTS(
        SELECT true
          FROM pg_catalog.pg_trigger t
          JOIN pg_catalog.pg_class c     ON c.oid = t.tgrelid
         WHERE c.relname = $1
           AND t.tgname  = $2
           AND pg_catalog.pg_table_is_visible(c.oid)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _types_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_types_are"(name, _name, text, _bpchar);
CREATE OR REPLACE FUNCTION "public"."_types_are"(name, _name, text, _bpchar)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'types',
        ARRAY(
            SELECT t.typname
              FROM pg_catalog.pg_type t
              LEFT JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace
             WHERE (
                     t.typrelid = 0
                 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)
             )
               AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
               AND n.nspname = $1
               AND t.typtype = ANY( COALESCE($4, ARRAY['b', 'c', 'd', 'p', 'e']) )
            EXCEPT
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
        ),
        ARRAY(
            SELECT $2[i]
               FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT t.typname
              FROM pg_catalog.pg_type t
              LEFT JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace
             WHERE (
                     t.typrelid = 0
                 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)
             )
               AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
               AND n.nspname = $1
               AND t.typtype = ANY( COALESCE($4, ARRAY['b', 'c', 'd', 'p', 'e']) )
        ),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _types_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_types_are"(_name, text, _bpchar);
CREATE OR REPLACE FUNCTION "public"."_types_are"(_name, text, _bpchar)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'types',
        ARRAY(
            SELECT t.typname
              FROM pg_catalog.pg_type t
              LEFT JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace
             WHERE (
                     t.typrelid = 0
                 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)
             )
               AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND pg_catalog.pg_type_is_visible(t.oid)
               AND t.typtype = ANY( COALESCE($3, ARRAY['b', 'c', 'd', 'p', 'e']) )
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
               FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT t.typname
              FROM pg_catalog.pg_type t
              LEFT JOIN pg_catalog.pg_namespace n ON n.oid = t.typnamespace
             WHERE (
                     t.typrelid = 0
                 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid)
             )
               AND NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND pg_catalog.pg_type_is_visible(t.oid)
               AND t.typtype = ANY( COALESCE($3, ARRAY['b', 'c', 'd', 'p', 'e']) )
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _unalike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_unalike"(bool, anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."_unalike"(bool, anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    result ALIAS FOR $1;
    got    ALIAS FOR $2;
    rx     ALIAS FOR $3;
    descr  ALIAS FOR $4;
    output TEXT;
BEGIN
    output := ok( result, descr );
    RETURN output || CASE result WHEN TRUE THEN '' ELSE E'\n' || diag(
           '                  ' || COALESCE( quote_literal(got), 'NULL' ) ||
        E'\n         matches: ' || COALESCE( quote_literal(rx), 'NULL' )
    ) END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _vol
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_vol"(name, name);
CREATE OR REPLACE FUNCTION "public"."_vol"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _expand_vol(volatility) FROM tap_funky f
     WHERE f.schema = $1 and f.name = $2
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _vol
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_vol"(name, _name);
CREATE OR REPLACE FUNCTION "public"."_vol"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _expand_vol(volatility)
      FROM tap_funky f
     WHERE f.name = $1
       AND f.args = array_to_string($2, ',')
       AND f.is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _vol
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_vol"(name);
CREATE OR REPLACE FUNCTION "public"."_vol"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _expand_vol(volatility) FROM tap_funky f
     WHERE f.name = $1 AND f.is_visible;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for _vol
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."_vol"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."_vol"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _expand_vol(volatility)
      FROM tap_funky f
     WHERE f.schema = $1
       and f.name   = $2
       AND f.args   = array_to_string($3, ',')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for add_result
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."add_result"(bool, bool, text, text, text);
CREATE OR REPLACE FUNCTION "public"."add_result"(bool, bool, text, text, text)
  RETURNS "pg_catalog"."int4" AS $BODY$
BEGIN
    IF NOT $1 THEN PERFORM _set('failed', _get('failed') + 1); END IF;
    RETURN nextval('__tresults___numb_seq');
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for algorithm_sign
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."algorithm_sign"("signables" text, "secret" text, "algorithm" text);
CREATE OR REPLACE FUNCTION "public"."algorithm_sign"("signables" text, "secret" text, "algorithm" text)
  RETURNS "pg_catalog"."text" AS $BODY$
WITH
  alg AS (
    SELECT CASE
      WHEN algorithm = 'HS256' THEN 'sha256'
      WHEN algorithm = 'HS384' THEN 'sha384'
      WHEN algorithm = 'HS512' THEN 'sha512'
      ELSE '' END AS id)  -- hmac throws error
SELECT public.url_encode(hmac(signables, secret, alg.id)) FROM alg;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for alike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."alike"(anyelement, text);
CREATE OR REPLACE FUNCTION "public"."alike"(anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _alike( $1 ~~ $2, $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for alike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."alike"(anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."alike"(anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _alike( $1 ~~ $2, $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for any_column_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."any_column_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."any_column_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_ac_privs( $2, quote_ident($1) );
BEGIN
    IF grants[1] = 'undefined_table' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Table ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for any_column_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."any_column_privs_are"(name, name, name, _name);
CREATE OR REPLACE FUNCTION "public"."any_column_privs_are"(name, name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT any_column_privs_are(
        $1, $2, $3, $4,
        'Role ' || quote_ident($3) || ' should be granted '
            || CASE WHEN $4[1] IS NULL THEN 'no privileges' ELSE array_to_string($4, ', ') END
            || ' on any column in '|| quote_ident($1) || '.' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for any_column_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."any_column_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."any_column_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT any_column_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on any column in ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for any_column_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."any_column_privs_are"(name, name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."any_column_privs_are"(name, name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_ac_privs( $3, quote_ident($1) || '.' || quote_ident($2) );
BEGIN
    IF grants[1] = 'undefined_table' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Table ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Role ' || quote_ident($3) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $4, $5);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for armor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."armor"(bytea);
CREATE OR REPLACE FUNCTION "public"."armor"(bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_armor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for armor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."armor"(bytea, _text, _text);
CREATE OR REPLACE FUNCTION "public"."armor"(bytea, _text, _text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_armor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for bag_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_eq"(text, anyarray, text);
CREATE OR REPLACE FUNCTION "public"."bag_eq"(text, anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, $3, 'ALL ' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_eq"(text, anyarray);
CREATE OR REPLACE FUNCTION "public"."bag_eq"(text, anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, NULL::text, 'ALL ' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_eq"(text, text);
CREATE OR REPLACE FUNCTION "public"."bag_eq"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, NULL::text, 'ALL ' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_eq"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."bag_eq"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, $3, 'ALL ' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_has
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_has"(text, text);
CREATE OR REPLACE FUNCTION "public"."bag_has"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, NULL::TEXT, 'EXCEPT ALL', 'Missing' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_has
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_has"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."bag_has"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, $3, 'EXCEPT ALL', 'Missing' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_hasnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_hasnt"(text, text);
CREATE OR REPLACE FUNCTION "public"."bag_hasnt"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, NULL::TEXT, 'INTERSECT ALL', 'Extra' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_hasnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_hasnt"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."bag_hasnt"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, $3, 'INTERSECT ALL', 'Extra' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_ne"(text, anyarray);
CREATE OR REPLACE FUNCTION "public"."bag_ne"(text, anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relne( $1, $2, NULL::text, 'ALL ' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_ne"(text, text);
CREATE OR REPLACE FUNCTION "public"."bag_ne"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relne( $1, $2, NULL::text, 'ALL ' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_ne"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."bag_ne"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relne( $1, $2, $3, 'ALL ' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bag_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."bag_ne"(text, anyarray, text);
CREATE OR REPLACE FUNCTION "public"."bag_ne"(text, anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relne( $1, $2, $3, 'ALL ' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for can
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."can"(_name, text);
CREATE OR REPLACE FUNCTION "public"."can"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    missing text[];
BEGIN
    SELECT ARRAY(
        SELECT quote_ident($1[i])
          FROM generate_series(1, array_upper($1, 1)) s(i)
          LEFT JOIN pg_catalog.pg_proc p
            ON $1[i] = p.proname
           AND pg_catalog.pg_function_is_visible(p.oid)
         WHERE p.oid IS NULL
         ORDER BY s.i
    ) INTO missing;
    IF missing[1] IS NULL THEN
        RETURN ok( true, $2 );
    END IF;
    RETURN ok( false, $2 ) || E'\n' || diag(
        '    ' ||
        array_to_string( missing, E'() missing\n    ') ||
        '() missing'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for can
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."can"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."can"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    missing text[];
BEGIN
    SELECT ARRAY(
        SELECT quote_ident($2[i])
          FROM generate_series(1, array_upper($2, 1)) s(i)
          LEFT JOIN tap_funky ON name = $2[i] AND schema = $1
         WHERE oid IS NULL
         GROUP BY $2[i], s.i
         ORDER BY MIN(s.i)
    ) INTO missing;
    IF missing[1] IS NULL THEN
        RETURN ok( true, $3 );
    END IF;
    RETURN ok( false, $3 ) || E'\n' || diag(
        '    ' || quote_ident($1) || '.' ||
        array_to_string( missing, E'() missing\n    ' || quote_ident($1) || '.') ||
        '() missing'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for can
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."can"(_name);
CREATE OR REPLACE FUNCTION "public"."can"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT can( $1, 'Schema ' || _ident_array_to_string(current_schemas(true), ' or ') || ' can' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for can
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."can"(name, _name);
CREATE OR REPLACE FUNCTION "public"."can"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT can( $1, $2, 'Schema ' || quote_ident($1) || ' can' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for cast_context_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cast_context_is"(name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."cast_context_is"(name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    want char = substring(LOWER($3) FROM 1 FOR 1);
    have char := _get_context($1, $2);
BEGIN
    IF have IS NOT NULL THEN
        RETURN is( _expand_context(have), _expand_context(want), $4 );
    END IF;

    RETURN ok( false, $4 ) || E'\n' || diag(
       '    Cast (' || quote_ident($1) || ' AS ' || quote_ident($2)
      || ') does not exist'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for cast_context_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cast_context_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."cast_context_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT cast_context_is(
        $1, $2, $3,
        'Cast (' || quote_ident($1) || ' AS ' || quote_ident($2)
        || ') context should be ' || _expand_context(substring(LOWER($3) FROM 1 FOR 1))
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for casts_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."casts_are"(_text, text);
CREATE OR REPLACE FUNCTION "public"."casts_are"(_text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _areni(
        'casts',
        ARRAY(
            SELECT pg_catalog.format_type(castsource, NULL)
                   || ' AS ' || pg_catalog.format_type(casttarget, NULL)
              FROM pg_catalog.pg_cast c
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT pg_catalog.format_type(castsource, NULL)
                   || ' AS ' || pg_catalog.format_type(casttarget, NULL)
              FROM pg_catalog.pg_cast c
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for casts_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."casts_are"(_text);
CREATE OR REPLACE FUNCTION "public"."casts_are"(_text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT casts_are( $1, 'There should be the correct casts');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for check_test
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_test"(text, bool, text, text, text, bool);
CREATE OR REPLACE FUNCTION "public"."check_test"(text, bool, text, text, text, bool)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
DECLARE
    tnumb   INTEGER;
    aok     BOOLEAN;
    adescr  TEXT;
    res     BOOLEAN;
    descr   TEXT;
    adiag   TEXT;
    have    ALIAS FOR $1;
    eok     ALIAS FOR $2;
    name    ALIAS FOR $3;
    edescr  ALIAS FOR $4;
    ediag   ALIAS FOR $5;
    matchit ALIAS FOR $6;
BEGIN
    -- What test was it that just ran?
    tnumb := currval('__tresults___numb_seq');

    -- Fetch the results.
    aok    := substring(have, 1, 2) = 'ok';
    adescr := COALESCE(substring(have FROM  E'(?:not )?ok [[:digit:]]+ - ([^\n]+)'), '');

    -- Now delete those results.
    EXECUTE 'ALTER SEQUENCE __tresults___numb_seq RESTART WITH ' || tnumb;
    IF NOT aok THEN PERFORM _set('failed', _get('failed') - 1); END IF;

    -- Set up the description.
    descr := coalesce( name || ' ', 'Test ' ) || 'should ';

    -- So, did the test pass?
    RETURN NEXT is(
        aok,
        eok,
        descr || CASE eok WHEN true then 'pass' ELSE 'fail' END
    );

    -- Was the description as expected?
    IF edescr IS NOT NULL THEN
        RETURN NEXT is(
            adescr,
            edescr,
            descr || 'have the proper description'
        );
    END IF;

    -- Were the diagnostics as expected?
    IF ediag IS NOT NULL THEN
        -- Remove ok and the test number.
        adiag := substring(
            have
            FROM CASE WHEN aok THEN 4 ELSE 9 END + char_length(tnumb::text)
        );

        -- Remove the description, if there is one.
        IF adescr <> '' THEN
            adiag := substring(
                adiag FROM 1 + char_length( ' - ' || substr(diag( adescr ), 3) )
            );
        END IF;

        IF NOT aok THEN
            -- Remove failure message from ok().
            adiag := substring(adiag FROM 1 + char_length(diag(
                'Failed test ' || tnumb ||
                CASE adescr WHEN '' THEN '' ELSE COALESCE(': "' || adescr || '"', '') END
            )));
        END IF;

        IF ediag <> '' THEN
           -- Remove the space before the diagnostics.
           adiag := substring(adiag FROM 2);
        END IF;

        -- Remove the #s.
        adiag := replace( substring(adiag from 3), E'\n# ', E'\n' );

        -- Now compare the diagnostics.
        IF matchit THEN
            RETURN NEXT matches(
                adiag,
                ediag,
                descr || 'have the proper diagnostics'
            );
        ELSE
            RETURN NEXT is(
                adiag,
                ediag,
                descr || 'have the proper diagnostics'
            );
        END IF;
    END IF;

    -- And we're done
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for check_test
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_test"(text, bool);
CREATE OR REPLACE FUNCTION "public"."check_test"(text, bool)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM check_test( $1, $2, NULL, NULL, NULL, FALSE );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for check_test
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_test"(text, bool, text);
CREATE OR REPLACE FUNCTION "public"."check_test"(text, bool, text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM check_test( $1, $2, $3, NULL, NULL, FALSE );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for check_test
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_test"(text, bool, text, text, text);
CREATE OR REPLACE FUNCTION "public"."check_test"(text, bool, text, text, text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM check_test( $1, $2, $3, $4, $5, FALSE );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for check_test
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."check_test"(text, bool, text, text);
CREATE OR REPLACE FUNCTION "public"."check_test"(text, bool, text, text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM check_test( $1, $2, $3, $4, NULL, FALSE );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for cmp_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cmp_ok"(anyelement, text, anyelement);
CREATE OR REPLACE FUNCTION "public"."cmp_ok"(anyelement, text, anyelement)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT cmp_ok( $1, $2, $3, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for cmp_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cmp_ok"(anyelement, text, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."cmp_ok"(anyelement, text, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have   ALIAS FOR $1;
    op     ALIAS FOR $2;
    want   ALIAS FOR $3;
    descr  ALIAS FOR $4;
    result BOOLEAN;
    output TEXT;
BEGIN
    EXECUTE 'SELECT ' ||
            COALESCE(quote_literal( have ), 'NULL') || '::' || pg_typeof(have) || ' '
            || op || ' ' ||
            COALESCE(quote_literal( want ), 'NULL') || '::' || pg_typeof(want)
       INTO result;
    output := ok( COALESCE(result, FALSE), descr );
    RETURN output || CASE result WHEN TRUE THEN '' ELSE E'\n' || diag(
           '    ' || COALESCE( quote_literal(have), 'NULL' ) ||
           E'\n        ' || op ||
           E'\n    ' || COALESCE( quote_literal(want), 'NULL' )
    ) END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_default_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_default_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_default_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _cdi( $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_default_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_default_is"(name, name, name, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."col_default_is"(name, name, name, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _cdi( $1, $2, $3, $4, $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_default_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_default_is"(name, name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."col_default_is"(name, name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _cdi( $1, $2, $3, $4, $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_default_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_default_is"(name, name, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."col_default_is"(name, name, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _cdi( $1, $2, $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_default_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_default_is"(name, name, anyelement);
CREATE OR REPLACE FUNCTION "public"."col_default_is"(name, name, anyelement)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _cdi( $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_default_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_default_is"(name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."col_default_is"(name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _cdi( $1, $2, $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_check"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_has_check"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _constraint( $1, 'c', $2, $3, 'check' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_check"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_has_check"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_has_check( $1, $2, ARRAY[$3], $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_check"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_has_check"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _constraint( $1, $2, 'c', $3, $4, 'check' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_check"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_has_check"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_has_check( $1, ARRAY[$2], $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_check"(name, _name);
CREATE OR REPLACE FUNCTION "public"."col_has_check"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_has_check( $1, $2, 'Columns ' || quote_ident($1) || '(' || _ident_array_to_string($2, ', ') || ') should have a check constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_check"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_has_check"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_has_check( $1, $2, 'Column ' || quote_ident($1) || '(' || quote_ident($2) || ') should have a check constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_default
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_default"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_has_default"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF NOT _cexists( $1, $2 ) THEN
        RETURN fail( $3 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist' );
    END IF;
    RETURN ok( _has_def( $1, $2 ), $3 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_default
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_default"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_has_default"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_has_default( $1, $2, 'Column ' || quote_ident($1) || '.' || quote_ident($2) || ' should have a default' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_has_default
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_has_default"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_has_default"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF NOT _cexists( $1, $2, $3 ) THEN
        RETURN fail( $4 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || '.' || quote_ident($3) || ' does not exist' );
    END IF;
    RETURN ok( _has_def( $1, $2, $3 ), $4 );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_hasnt_default
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_hasnt_default"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_hasnt_default"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF NOT _cexists( $1, $2, $3 ) THEN
        RETURN fail( $4 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || '.' || quote_ident($3) || ' does not exist' );
    END IF;
    RETURN ok( NOT _has_def( $1, $2, $3 ), $4 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_hasnt_default
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_hasnt_default"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_hasnt_default"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF NOT _cexists( $1, $2 ) THEN
        RETURN fail( $3 ) || E'\n'
            || diag ('    Column ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist' );
    END IF;
    RETURN ok( NOT _has_def( $1, $2 ), $3 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_hasnt_default
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_hasnt_default"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_hasnt_default"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_hasnt_default( $1, $2, 'Column ' || quote_ident($1) || '.' || quote_ident($2) || ' should not have a default' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_fk"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_fk"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    names text[];
BEGIN
    IF _fkexists($1, $2) THEN
        RETURN pass( $3 );
    END IF;

    -- Try to show the columns.
    SELECT ARRAY(
        SELECT _ident_array_to_string(fk_columns, ', ')
          FROM pg_all_foreign_keys
         WHERE fk_table_name  = $1
         ORDER BY fk_columns
    ) INTO names;

    IF NAMES[1] IS NOT NULL THEN
        RETURN fail($3) || E'\n' || diag(
            '    Table ' || quote_ident($1) || E' has foreign key constraints on these columns:\n        '
            || array_to_string( names, E'\n        ' )
        );
    END IF;

    -- No FKs in this table.
    RETURN fail($3) || E'\n' || diag(
        '    Table ' || quote_ident($1) || ' has no foreign key columns'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_fk"(name, _name);
CREATE OR REPLACE FUNCTION "public"."col_is_fk"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_fk( $1, $2, 'Columns ' || quote_ident($1) || '(' || _ident_array_to_string($2, ', ') || ') should be a foreign key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_fk"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_is_fk"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_fk( $1, $2, 'Column ' || quote_ident($1) || '(' || quote_ident($2) || ') should be a foreign key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_fk"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_fk"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_fk( $1, ARRAY[$2], $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_fk"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_fk"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_fk( $1, $2, ARRAY[$3], $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_fk"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_fk"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    names text[];
BEGIN
    IF _fkexists($1, $2, $3) THEN
        RETURN pass( $4 );
    END IF;

    -- Try to show the columns.
    SELECT ARRAY(
        SELECT _ident_array_to_string(fk_columns, ', ')
          FROM pg_all_foreign_keys
         WHERE fk_schema_name = $1
           AND fk_table_name  = $2
         ORDER BY fk_columns
    ) INTO names;

    IF names[1] IS NOT NULL THEN
        RETURN fail($4) || E'\n' || diag(
            '    Table ' || quote_ident($1) || '.' || quote_ident($2) || E' has foreign key constraints on these columns:\n        '
            ||  array_to_string( names, E'\n        ' )
        );
    END IF;

    -- No FKs in this table.
    RETURN fail($4) || E'\n' || diag(
        '    Table ' || quote_ident($1) || '.' || quote_ident($2) || ' has no foreign key columns'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_null
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_null"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_null"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _col_is_null( $1, $2, $3, $4, false );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_null
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_null"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_is_null"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _col_is_null( $1, $2, 'Column ' || quote_ident($1) || '.' || quote_ident($2) || ' should allow NULL', false );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_null
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_null"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."col_is_null"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _col_is_null( $1, $2, $3, false );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_pk"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_pk"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is( _ckeys( $1, 'p' ), $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_pk"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_is_pk"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_pk( $1, $2, 'Column ' || quote_ident($1) || '(' || quote_ident($2) || ') should be a primary key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_pk"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_pk"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is( _ckeys( $1, $2, 'p' ), $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_pk"(name, _name);
CREATE OR REPLACE FUNCTION "public"."col_is_pk"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_pk( $1, $2, 'Columns ' || quote_ident($1) || '(' || _ident_array_to_string($2, ', ') || ') should be a primary key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_pk"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_pk"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_pk( $1, ARRAY[$2], $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_pk"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_pk"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_pk( $1, $2, ARRAY[$3], $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_unique"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_unique"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _constraint( $1, 'u', $2, $3, 'unique' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_unique"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."col_is_unique"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_unique( $1, $2, ARRAY[$3], 'Column ' || quote_ident($2) || '(' || quote_ident($3) || ') should have a unique constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_unique"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."col_is_unique"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_unique( $1, $2, $3, 'Columns ' || quote_ident($2) || '(' || _ident_array_to_string($3, ', ') || ') should have a unique constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_unique"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_is_unique"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_unique( $1, $2, 'Column ' || quote_ident($1) || '(' || quote_ident($2) || ') should have a unique constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_unique"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_unique"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _constraint( $1, $2, 'u', $3, $4, 'unique' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_unique"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_unique"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_unique( $1, ARRAY[$2], $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_unique"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_is_unique"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_unique( $1, $2, ARRAY[$3], $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_is_unique"(name, _name);
CREATE OR REPLACE FUNCTION "public"."col_is_unique"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_is_unique( $1, $2, 'Columns ' || quote_ident($1) || '(' || _ident_array_to_string($2, ', ') || ') should have a unique constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_fk"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_isnt_fk"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _fkexists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_fk"(name, _name);
CREATE OR REPLACE FUNCTION "public"."col_isnt_fk"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_isnt_fk( $1, $2, 'Columns ' || quote_ident($1) || '(' || _ident_array_to_string($2, ', ') || ') should not be a foreign key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_fk"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_isnt_fk"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_isnt_fk( $1, $2, 'Column ' || quote_ident($1) || '(' || quote_ident($2) || ') should not be a foreign key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_fk"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_isnt_fk"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_isnt_fk( $1, $2, ARRAY[$3], $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_fk"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_isnt_fk"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_isnt_fk( $1, ARRAY[$2], $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_fk"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_isnt_fk"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _fkexists( $1, $2, $3 ), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_pk"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_isnt_pk"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_isnt_pk( $1, $2, 'Column ' || quote_ident($1) || '(' || quote_ident($2) || ') should not be a primary key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_pk"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_isnt_pk"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT isnt( _ckeys( $1, $2, 'p' ), $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_pk"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_isnt_pk"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_isnt_pk( $1, ARRAY[$2], $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_pk"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."col_isnt_pk"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT isnt( _ckeys( $1, 'p' ), $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_pk"(name, _name);
CREATE OR REPLACE FUNCTION "public"."col_isnt_pk"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_isnt_pk( $1, $2, 'Columns ' || quote_ident($1) || '(' || _ident_array_to_string($2, ', ') || ') should not be a primary key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_isnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_isnt_pk"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_isnt_pk"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_isnt_pk( $1, $2, ARRAY[$3], $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_not_null
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_not_null"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_not_null"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _col_is_null( $1, $2, $3, $4, true );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_not_null
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_not_null"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_not_null"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _col_is_null( $1, $2, $3, true );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_not_null
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_not_null"(name, name);
CREATE OR REPLACE FUNCTION "public"."col_not_null"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _col_is_null( $1, $2, 'Column ' || quote_ident($1) || '.' || quote_ident($2) || ' should be NOT NULL', true );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_type_is"(name, name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."col_type_is"(name, name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have_type TEXT;
    want_type TEXT;
BEGIN
    -- Get the data type.
    IF $1 IS NULL THEN
        have_type := _get_col_type($2, $3);
    ELSE
        have_type := _get_col_type($1, $2, $3);
    END IF;

    IF have_type IS NULL THEN
        RETURN fail( $5 ) || E'\n' || diag (
            '   Column ' || COALESCE(quote_ident($1) || '.', '')
            || quote_ident($2) || '.' || quote_ident($3) || ' does not exist'
        );
    END IF;

    want_type := _quote_ident_like($4, have_type);
    IF have_type = want_type THEN
        -- We're good to go.
        RETURN ok( true, $5 );
    END IF;

    -- Wrong data type. tell 'em what we really got.
    RETURN ok( false, $5 ) || E'\n' || diag(
           '        have: ' || have_type ||
        E'\n        want: ' || want_type
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_type_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_type_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_type_is( $1, $2, $3, 'Column ' || quote_ident($1) || '.' || quote_ident($2) || ' should be type ' || $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_type_is"(name, name, name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."col_type_is"(name, name, name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have_type TEXT := _get_col_ns_type($1, $2, $3);
    want_type TEXT;
BEGIN
    IF have_type IS NULL THEN
        RETURN fail( $6 ) || E'\n' || diag (
            '   Column ' || COALESCE(quote_ident($1) || '.', '')
            || quote_ident($2) || '.' || quote_ident($3) || ' does not exist'
        );
    END IF;

    want_type := quote_ident($4) || '.' || _quote_ident_like($5, have_type);
    IF have_type = want_type THEN
        -- We're good to go.
        RETURN ok( true, $6 );
    END IF;

    -- Wrong data type. tell 'em what we really got.
    RETURN ok( false, $6 ) || E'\n' || diag(
           '        have: ' || have_type ||
        E'\n        want: ' || want_type
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_type_is"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_type_is"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_type_is( $1, $2, $3, $4, $5, 'Column ' || quote_ident($1) || '.' || quote_ident($2)
        || '.' || quote_ident($3) || ' should be type ' || quote_ident($4) || '.' || $5);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_type_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."col_type_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_type_is( $1, $2, $3, $4, 'Column ' || quote_ident($1) || '.' || quote_ident($2) || '.' || quote_ident($3) || ' should be type ' || $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for col_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."col_type_is"(name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."col_type_is"(name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT col_type_is( NULL, $1, $2, $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for collect_tap
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."collect_tap"(VARIADIC _text);
CREATE OR REPLACE FUNCTION "public"."collect_tap"(VARIADIC _text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT array_to_string($1, E'\n');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for collect_tap
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."collect_tap"(_varchar);
CREATE OR REPLACE FUNCTION "public"."collect_tap"(_varchar)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT array_to_string($1, E'\n');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for column_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."column_privs_are"(name, name, name, _name);
CREATE OR REPLACE FUNCTION "public"."column_privs_are"(name, name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT column_privs_are(
        $1, $2, $3, $4,
        'Role ' || quote_ident($3) || ' should be granted '
            || CASE WHEN $4[1] IS NULL THEN 'no privileges' ELSE array_to_string($4, ', ') END
            || ' on column ' || quote_ident($1) || '.' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for column_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."column_privs_are"(name, name, name, name, _name);
CREATE OR REPLACE FUNCTION "public"."column_privs_are"(name, name, name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT column_privs_are(
        $1, $2, $3, $4, $5,
        'Role ' || quote_ident($4) || ' should be granted '
            || CASE WHEN $5[1] IS NULL THEN 'no privileges' ELSE array_to_string($5, ', ') END
            || ' on column ' || quote_ident($1) || '.' || quote_ident($2) || '.' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for column_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."column_privs_are"(name, name, name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."column_privs_are"(name, name, name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_col_privs( $4, quote_ident($1) || '.' || quote_ident($2), $3 );
BEGIN
    IF grants[1] = 'undefined_column' THEN
        RETURN ok(FALSE, $6) || E'\n' || diag(
            '    Column ' || quote_ident($1) || '.' || quote_ident($2) || '.' || quote_ident($3)
            || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_table' THEN
        RETURN ok(FALSE, $6) || E'\n' || diag(
            '    Table ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $6) || E'\n' || diag(
            '    Role ' || quote_ident($4) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $5, $6);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for column_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."column_privs_are"(name, name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."column_privs_are"(name, name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_col_privs( $3, quote_ident($1), $2 );
BEGIN
    IF grants[1] = 'undefined_column' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Column ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_table' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Table ' || quote_ident($1) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Role ' || quote_ident($3) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $4, $5);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for columns_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."columns_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."columns_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT columns_are( $1, $2, 'Table ' || quote_ident($1) || ' should have the correct columns' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for columns_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."columns_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."columns_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'columns',
        ARRAY(
            SELECT a.attname
              FROM pg_catalog.pg_namespace n
              JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
              JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
             WHERE n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND pg_catalog.pg_table_is_visible(c.oid)
               AND c.relname = $1
               AND a.attnum > 0
               AND NOT a.attisdropped
            EXCEPT
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
        ),
        ARRAY(
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT a.attname
              FROM pg_catalog.pg_namespace n
              JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
              JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
             WHERE n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND pg_catalog.pg_table_is_visible(c.oid)
               AND c.relname = $1
               AND a.attnum > 0
               AND NOT a.attisdropped
        ),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for columns_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."columns_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."columns_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT columns_are( $1, $2, $3, 'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should have the correct columns' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for columns_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."columns_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."columns_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'columns',
        ARRAY(
            SELECT a.attname
              FROM pg_catalog.pg_namespace n
              JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
              JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
             WHERE n.nspname = $1
               AND c.relname = $2
               AND a.attnum > 0
               AND NOT a.attisdropped
            EXCEPT
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
        ),
        ARRAY(
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
            EXCEPT
            SELECT a.attname
              FROM pg_catalog.pg_namespace n
              JOIN pg_catalog.pg_class c ON n.oid = c.relnamespace
              JOIN pg_catalog.pg_attribute a ON c.oid = a.attrelid
             WHERE n.nspname = $1
               AND c.relname = $2
               AND a.attnum > 0
               AND NOT a.attisdropped
        ),
        $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for composite_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."composite_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."composite_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('c'::char, $1, $2);
BEGIN
    -- Make sure the composite exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Composite type ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for composite_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."composite_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."composite_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT composite_owner_is(
        $1, $2,
        'Composite type ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for composite_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."composite_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."composite_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT composite_owner_is(
        $1, $2, $3,
        'Composite type ' || quote_ident($1) || '.' || quote_ident($2) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for composite_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."composite_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."composite_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('c'::char, $1);
BEGIN
    -- Make sure the composite exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Composite type ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for crypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."crypt"(text, text);
CREATE OR REPLACE FUNCTION "public"."crypt"(text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_crypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for database_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."database_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."database_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT database_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on database ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for database_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."database_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."database_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_db_privs( $2, $1::TEXT );
BEGIN
    IF grants[1] = 'invalid_catalog_name' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Database ' || quote_ident($1) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for db_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."db_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."db_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT db_owner_is(
        $1, $2,
        'Database ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for db_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."db_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."db_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    dbowner NAME := _get_db_owner($1);
BEGIN
    -- Make sure the database exists.
    IF dbowner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Database ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(dbowner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for dearmor
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dearmor"(text);
CREATE OR REPLACE FUNCTION "public"."dearmor"(text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_dearmor'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."decrypt"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."decrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_decrypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for decrypt_iv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."decrypt_iv"(bytea, bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."decrypt_iv"(bytea, bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_decrypt_iv'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for diag
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."diag"(VARIADIC _text);
CREATE OR REPLACE FUNCTION "public"."diag"(VARIADIC _text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT diag(array_to_string($1, ''));
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for diag
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."diag"(VARIADIC anyarray);
CREATE OR REPLACE FUNCTION "public"."diag"(VARIADIC anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT diag(array_to_string($1, ''));
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for diag
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."diag"("msg" text);
CREATE OR REPLACE FUNCTION "public"."diag"("msg" text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT '# ' || replace(
       replace(
            replace( $1, E'\r\n', E'\n# ' ),
            E'\n',
            E'\n# '
        ),
        E'\r',
        E'\n# '
    );
$BODY$
  LANGUAGE sql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for diag
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."diag"("msg" anyelement);
CREATE OR REPLACE FUNCTION "public"."diag"("msg" anyelement)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT diag($1::text);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for diag_test_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."diag_test_name"(text);
CREATE OR REPLACE FUNCTION "public"."diag_test_name"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT diag($1 || '()');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for digest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."digest"(text, text);
CREATE OR REPLACE FUNCTION "public"."digest"(text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_digest'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for digest
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."digest"(bytea, text);
CREATE OR REPLACE FUNCTION "public"."digest"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_digest'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for display_oper
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."display_oper"(name, oid);
CREATE OR REPLACE FUNCTION "public"."display_oper"(name, oid)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT $1 || substring($2::regoperator::text, '[(][^)]+[)]$')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for do_tap
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."do_tap"(name, text);
CREATE OR REPLACE FUNCTION "public"."do_tap"(name, text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM _runem( findfuncs($1, $2), _is_verbose() );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for do_tap
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."do_tap"(name);
CREATE OR REPLACE FUNCTION "public"."do_tap"(name)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM _runem( findfuncs($1, '^test'), _is_verbose() );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for do_tap
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."do_tap"(text);
CREATE OR REPLACE FUNCTION "public"."do_tap"(text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM _runem( findfuncs($1), _is_verbose() );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for do_tap
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."do_tap"();
CREATE OR REPLACE FUNCTION "public"."do_tap"()
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM _runem( findfuncs('^test'), _is_verbose());
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for doesnt_imatch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."doesnt_imatch"(anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."doesnt_imatch"(anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _unalike( $1 !~* $2, $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for doesnt_imatch
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."doesnt_imatch"(anyelement, text);
CREATE OR REPLACE FUNCTION "public"."doesnt_imatch"(anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _unalike( $1 !~* $2, $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for doesnt_match
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."doesnt_match"(anyelement, text);
CREATE OR REPLACE FUNCTION "public"."doesnt_match"(anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _unalike( $1 !~ $2, $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for doesnt_match
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."doesnt_match"(anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."doesnt_match"(anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _unalike( $1 !~ $2, $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_is"(name, text, text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_is"(name, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    actual_type TEXT := _get_dtype($1, $2, false);
BEGIN
    IF actual_type IS NULL THEN
        RETURN fail( $4 ) || E'\n' || diag (
            '   Domain ' || quote_ident($1) || '.' || $2
            || ' does not exist'
        );
    END IF;

    RETURN is( actual_type, _quote_ident_like($3, actual_type), $4 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_is"(name, text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_is"(name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT domain_type_is(
        $1, $2, $3,
        'Domain ' || quote_ident($1) || '.' || $2
        || ' should extend type ' || $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_is"(name, text, name, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_is"(name, text, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT domain_type_is(
        $1, $2, $3, $4,
        'Domain ' || quote_ident($1) || '.' || $2
        || ' should extend type ' || quote_ident($3) || '.' || $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_is"(text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_is"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT domain_type_is(
        $1, $2,
        'Domain ' || $1 || ' should extend type ' || $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_is"(name, text, name, text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_is"(name, text, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    actual_type TEXT := _get_dtype($1, $2, true);
BEGIN
    IF actual_type IS NULL THEN
        RETURN fail( $5 ) || E'\n' || diag (
            '   Domain ' || quote_ident($1) || '.' || $2
            || ' does not exist'
        );
    END IF;

    RETURN is( actual_type, quote_ident($3) || '.' || _quote_ident_like($4, actual_type), $5 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_is"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_is"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    actual_type TEXT := _get_dtype($1);
BEGIN
    IF actual_type IS NULL THEN
        RETURN fail( $3 ) || E'\n' || diag (
            '   Domain ' ||  $1 || ' does not exist'
        );
    END IF;

    RETURN is( actual_type, _quote_ident_like($2, actual_type), $3 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_isnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_isnt"(name, text, name, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_isnt"(name, text, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT domain_type_isnt(
        $1, $2, $3, $4,
        'Domain ' || quote_ident($1) || '.' || $2
        || ' should not extend type ' || quote_ident($3) || '.' || $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_isnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_isnt"(text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_isnt"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT domain_type_isnt(
        $1, $2,
        'Domain ' || $1 || ' should not extend type ' || $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_isnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_isnt"(name, text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_isnt"(name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT domain_type_isnt(
        $1, $2, $3,
        'Domain ' || quote_ident($1) || '.' || $2
        || ' should not extend type ' || $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_isnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_isnt"(name, text, name, text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_isnt"(name, text, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    actual_type TEXT := _get_dtype($1, $2, true);
BEGIN
    IF actual_type IS NULL THEN
        RETURN fail( $5 ) || E'\n' || diag (
            '   Domain ' || quote_ident($1) || '.' || $2
            || ' does not exist'
        );
    END IF;

    RETURN isnt( actual_type, quote_ident($3) || '.' || _quote_ident_like($4, actual_type), $5 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_isnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_isnt"(name, text, text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_isnt"(name, text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    actual_type TEXT := _get_dtype($1, $2, false);
BEGIN
    IF actual_type IS NULL THEN
        RETURN fail( $4 ) || E'\n' || diag (
            '   Domain ' || quote_ident($1) || '.' || $2
            || ' does not exist'
        );
    END IF;

    RETURN isnt( actual_type, _quote_ident_like($3, actual_type), $4 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domain_type_isnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domain_type_isnt"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."domain_type_isnt"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    actual_type TEXT := _get_dtype($1);
BEGIN
    IF actual_type IS NULL THEN
        RETURN fail( $3 ) || E'\n' || diag (
            '   Domain ' ||  $1 || ' does not exist'
        );
    END IF;

    RETURN isnt( actual_type, _quote_ident_like($2, actual_type), $3 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domains_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domains_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."domains_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, $3, ARRAY['d'] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domains_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domains_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."domains_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, 'Schema ' || quote_ident($1) || ' should have the correct domains', ARRAY['d'] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domains_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domains_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."domains_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, ARRAY['d'] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for domains_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."domains_are"(_name);
CREATE OR REPLACE FUNCTION "public"."domains_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, 'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct domains', ARRAY['d'] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."encrypt"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."encrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_encrypt'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for encrypt_iv
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."encrypt_iv"(bytea, bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."encrypt_iv"(bytea, bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_encrypt_iv'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for enum_has_labels
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."enum_has_labels"(name, _name);
CREATE OR REPLACE FUNCTION "public"."enum_has_labels"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT enum_has_labels(
        $1, $2,
        'Enum ' || quote_ident($1) || ' should have labels (' || array_to_string( $2, ', ' ) || ')'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for enum_has_labels
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."enum_has_labels"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."enum_has_labels"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT enum_has_labels(
        $1, $2, $3,
        'Enum ' || quote_ident($1) || '.' || quote_ident($2) || ' should have labels (' || array_to_string( $3, ', ' ) || ')'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for enum_has_labels
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."enum_has_labels"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."enum_has_labels"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is(
        ARRAY(
            SELECT e.enumlabel
              FROM pg_catalog.pg_type t
              JOIN pg_catalog.pg_enum e ON t.oid = e.enumtypid
              WHERE t.typisdefined
               AND pg_catalog.pg_type_is_visible(t.oid)
               AND t.typname = $1
               AND t.typtype = 'e'
             ORDER BY e.enumsortorder
        ),
        $2,
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for enum_has_labels
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."enum_has_labels"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."enum_has_labels"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is(
        ARRAY(
            SELECT e.enumlabel
              FROM pg_catalog.pg_type t
              JOIN pg_catalog.pg_enum e      ON t.oid = e.enumtypid
              JOIN pg_catalog.pg_namespace n ON t.typnamespace = n.oid
              WHERE t.typisdefined
               AND n.nspname = $1
               AND t.typname = $2
               AND t.typtype = 'e'
             ORDER BY e.enumsortorder
        ),
        $3,
        $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for enums_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."enums_are"(_name);
CREATE OR REPLACE FUNCTION "public"."enums_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, 'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct enums', ARRAY['e'] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for enums_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."enums_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."enums_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, 'Schema ' || quote_ident($1) || ' should have the correct enums', ARRAY['e'] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for enums_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."enums_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."enums_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, $3, ARRAY['e'] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for enums_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."enums_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."enums_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, ARRAY['e'] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for extensions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."extensions_are"(_name);
CREATE OR REPLACE FUNCTION "public"."extensions_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
  SELECT extensions_are($1, 'Should have the correct extensions');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for extensions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."extensions_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."extensions_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'extensions',
        ARRAY(SELECT _extensions($1) EXCEPT SELECT unnest($2)),
        ARRAY(SELECT unnest($2) EXCEPT SELECT _extensions($1)),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for extensions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."extensions_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."extensions_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'extensions',
        ARRAY(SELECT _extensions() EXCEPT SELECT unnest($1)),
        ARRAY(SELECT unnest($1) EXCEPT SELECT _extensions()),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for extensions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."extensions_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."extensions_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
  SELECT extensions_are(
        $1, $2,
        'Schema ' || quote_ident($1) || ' should have the correct extensions'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fail
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fail"();
CREATE OR REPLACE FUNCTION "public"."fail"()
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( FALSE, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fail
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fail"(text);
CREATE OR REPLACE FUNCTION "public"."fail"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( FALSE, $1 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fdw_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fdw_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."fdw_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_fdw_privs( $2, $1::TEXT );
BEGIN
    IF grants[1] = 'undefined_fdw' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    FDW ' || quote_ident($1) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fdw_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fdw_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."fdw_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT fdw_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on FDW ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for findfuncs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."findfuncs"(text, text);
CREATE OR REPLACE FUNCTION "public"."findfuncs"(text, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
    SELECT ARRAY(
        SELECT DISTINCT (quote_ident(n.nspname) || '.' || quote_ident(p.proname)) COLLATE "C" AS pname
          FROM pg_catalog.pg_proc p
          JOIN pg_catalog.pg_namespace n ON p.pronamespace = n.oid
         WHERE pg_catalog.pg_function_is_visible(p.oid)
           AND p.proname ~ $1
           AND ($2 IS NULL OR p.proname !~ $2)
         ORDER BY pname
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for findfuncs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."findfuncs"(text);
CREATE OR REPLACE FUNCTION "public"."findfuncs"(text)
  RETURNS "pg_catalog"."_text" AS $BODY$
    SELECT findfuncs( $1, NULL )
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for findfuncs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."findfuncs"(name, text, text);
CREATE OR REPLACE FUNCTION "public"."findfuncs"(name, text, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
    SELECT ARRAY(
        SELECT DISTINCT (quote_ident(n.nspname) || '.' || quote_ident(p.proname)) COLLATE "C" AS pname
          FROM pg_catalog.pg_proc p
          JOIN pg_catalog.pg_namespace n ON p.pronamespace = n.oid
         WHERE n.nspname = $1
           AND p.proname ~ $2
           AND ($3 IS NULL OR p.proname !~ $3)
         ORDER BY pname
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for findfuncs
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."findfuncs"(name, text);
CREATE OR REPLACE FUNCTION "public"."findfuncs"(name, text)
  RETURNS "pg_catalog"."_text" AS $BODY$
    SELECT findfuncs( $1, $2, NULL )
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for finish
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."finish"();
CREATE OR REPLACE FUNCTION "public"."finish"()
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM _finish(
        _get('curr_test'),
        _get('plan'),
        num_failed()
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for fk_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fk_ok"(name, name, name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."fk_ok"(name, name, name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT fk_ok( $1, $2, ARRAY[$3], $4, $5, ARRAY[$6], $7 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fk_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fk_ok"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."fk_ok"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT fk_ok( $1, ARRAY[$2], $3, ARRAY[$4], $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fk_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fk_ok"(name, name, _name, name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."fk_ok"(name, name, _name, name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    sch  name;
    tab  name;
    cols name[];
BEGIN
    SELECT pk_schema_name, pk_table_name, pk_columns
      FROM pg_all_foreign_keys
      WHERE fk_schema_name = $1
        AND fk_table_name  = $2
        AND fk_columns     = $3
      INTO sch, tab, cols;

    RETURN is(
        -- have
        quote_ident($1) || '.' || quote_ident($2) || '(' || _ident_array_to_string( $3, ', ' )
        || ') REFERENCES ' || COALESCE ( sch || '.' || tab || '(' || _ident_array_to_string( cols, ', ' ) || ')', 'NOTHING' ),
        -- want
        quote_ident($1) || '.' || quote_ident($2) || '(' || _ident_array_to_string( $3, ', ' )
        || ') REFERENCES ' ||
        $4 || '.' || $5 || '(' || _ident_array_to_string( $6, ', ' ) || ')',
        $7
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fk_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fk_ok"(name, _name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."fk_ok"(name, _name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    tab  name;
    cols name[];
BEGIN
    SELECT pk_table_name, pk_columns
      FROM pg_all_foreign_keys
     WHERE fk_table_name = $1
       AND fk_columns    = $2
       AND pg_catalog.pg_table_is_visible(fk_table_oid)
      INTO tab, cols;

    RETURN is(
        -- have
        $1 || '(' || _ident_array_to_string( $2, ', ' )
        || ') REFERENCES ' || COALESCE( tab || '(' || _ident_array_to_string( cols, ', ' ) || ')', 'NOTHING'),
        -- want
        $1 || '(' || _ident_array_to_string( $2, ', ' )
        || ') REFERENCES ' ||
        $3 || '(' || _ident_array_to_string( $4, ', ' ) || ')',
        $5
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fk_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fk_ok"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."fk_ok"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT fk_ok( $1, ARRAY[$2], $3, ARRAY[$4] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fk_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fk_ok"(name, name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."fk_ok"(name, name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT fk_ok( $1, $2, ARRAY[$3], $4, $5, ARRAY[$6] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fk_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fk_ok"(name, name, _name, name, name, _name);
CREATE OR REPLACE FUNCTION "public"."fk_ok"(name, name, _name, name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT fk_ok( $1, $2, $3, $4, $5, $6,
        quote_ident($1) || '.' || quote_ident($2) || '(' || _ident_array_to_string( $3, ', ' )
        || ') should reference ' ||
        $4 || '.' || $5 || '(' || _ident_array_to_string( $6, ', ' ) || ')'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for fk_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."fk_ok"(name, _name, name, _name);
CREATE OR REPLACE FUNCTION "public"."fk_ok"(name, _name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT fk_ok( $1, $2, $3, $4,
        $1 || '(' || _ident_array_to_string( $2, ', ' )
        || ') should reference ' ||
        $3 || '(' || _ident_array_to_string( $4, ', ' ) || ')'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for foreign_table_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."foreign_table_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."foreign_table_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT foreign_table_owner_is(
        $1, $2, $3,
        'Foreign table ' || quote_ident($1) || '.' || quote_ident($2) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for foreign_table_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."foreign_table_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."foreign_table_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('f'::char, $1, $2);
BEGIN
    -- Make sure the table exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Foreign table ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for foreign_table_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."foreign_table_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."foreign_table_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('f'::char, $1);
BEGIN
    -- Make sure the table exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Foreign table ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for foreign_table_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."foreign_table_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."foreign_table_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT foreign_table_owner_is(
        $1, $2,
        'Foreign table ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for foreign_tables_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."foreign_tables_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."foreign_tables_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'foreign tables', _extras('f', $1), _missing('f', $1), $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for foreign_tables_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."foreign_tables_are"(_name);
CREATE OR REPLACE FUNCTION "public"."foreign_tables_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'foreign tables', _extras('f', $1), _missing('f', $1),
        'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct foreign tables'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for foreign_tables_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."foreign_tables_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."foreign_tables_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'foreign tables', _extras('f', $1, $2), _missing('f', $1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for foreign_tables_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."foreign_tables_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."foreign_tables_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'foreign tables', _extras('f', $1, $2), _missing('f', $1, $2),
        'Schema ' || quote_ident($1) || ' should have the correct foreign tables'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_lang_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_lang_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."function_lang_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, _lang($1, $2), $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_lang_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_lang_is"(name, name, _name, name);
CREATE OR REPLACE FUNCTION "public"."function_lang_is"(name, name, _name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_lang_is(
        $1, $2, $3, $4,
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should be written in ' || quote_ident($4)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_lang_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_lang_is"(name, name, _name, name, text);
CREATE OR REPLACE FUNCTION "public"."function_lang_is"(name, name, _name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, _lang($1, $2, $3), $4, $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_lang_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_lang_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."function_lang_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, _lang($1), $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_lang_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_lang_is"(name, _name, name, text);
CREATE OR REPLACE FUNCTION "public"."function_lang_is"(name, _name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, _lang($1, $2), $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_lang_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_lang_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."function_lang_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_lang_is(
        $1, $2,
        'Function ' || quote_ident($1)
        || '() should be written in ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_lang_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_lang_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."function_lang_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_lang_is(
        $1, $2, $3,
        'Function ' || quote_ident($1) || '.' || quote_ident($2)
        || '() should be written in ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_lang_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_lang_is"(name, _name, name);
CREATE OR REPLACE FUNCTION "public"."function_lang_is"(name, _name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_lang_is(
        $1, $2, $3,
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should be written in ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_owner_is"(name, _name, name);
CREATE OR REPLACE FUNCTION "public"."function_owner_is"(name, _name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_owner_is(
        $1, $2, $3,
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_owner_is"(name, _name, name, text);
CREATE OR REPLACE FUNCTION "public"."function_owner_is"(name, _name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_func_owner($1, $2);
BEGIN
    -- Make sure the function exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Function ' || quote_ident($1) || '(' ||
                    array_to_string($2, ', ') || ') does not exist'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_owner_is"(name, name, _name, name, text);
CREATE OR REPLACE FUNCTION "public"."function_owner_is"(name, name, _name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_func_owner($1, $2, $3);
BEGIN
    -- Make sure the function exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            E'    Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
                    array_to_string($3, ', ') || ') does not exist'
        );
    END IF;

    RETURN is(owner, $4, $5);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_owner_is"(name, name, _name, name);
CREATE OR REPLACE FUNCTION "public"."function_owner_is"(name, name, _name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_owner_is(
        $1, $2, $3, $4,
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should be owned by ' || quote_ident($4)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_privs_are"(name, name, _name, name, _name);
CREATE OR REPLACE FUNCTION "public"."function_privs_are"(name, name, _name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_privs_are(
        $1, $2, $3, $4, $5,
        'Role ' || quote_ident($4) || ' should be granted '
            || CASE WHEN $5[1] IS NULL THEN 'no privileges' ELSE array_to_string($5, ', ') END
            || ' on function ' || quote_ident($1) || '.' || quote_ident($2)
            || '(' || array_to_string($3, ', ') || ')'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_privs_are"(name, _name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."function_privs_are"(name, _name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _fprivs_are(
        quote_ident($1) || '(' || array_to_string($2, ', ') || ')',
        $3, $4, $5
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_privs_are"(name, name, _name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."function_privs_are"(name, name, _name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _fprivs_are(
        quote_ident($1) || '.' || quote_ident($2) || '(' || array_to_string($3, ', ') || ')',
        $4, $5, $6
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_privs_are"(name, _name, name, _name);
CREATE OR REPLACE FUNCTION "public"."function_privs_are"(name, _name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_privs_are(
        $1, $2, $3, $4,
        'Role ' || quote_ident($3) || ' should be granted '
            || CASE WHEN $4[1] IS NULL THEN 'no privileges' ELSE array_to_string($4, ', ') END
            || ' on function ' || quote_ident($1) || '(' || array_to_string($2, ', ') || ')'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_returns"(name, text, text);
CREATE OR REPLACE FUNCTION "public"."function_returns"(name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, _returns($1), $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_returns"(name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."function_returns"(name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, _returns($1, $2), $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_returns"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."function_returns"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_returns(
        $1, $2, $3,
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should return ' || $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_returns"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."function_returns"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_returns(
        $1, $2, $3,
        'Function ' || quote_ident($1) || '.' || quote_ident($2)
        || '() should return ' || $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_returns"(name, _name, text, text);
CREATE OR REPLACE FUNCTION "public"."function_returns"(name, _name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, _returns($1, $2), $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_returns"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."function_returns"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_returns(
        $1, $2, $3, $4,
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should return ' || $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_returns"(name, text);
CREATE OR REPLACE FUNCTION "public"."function_returns"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT function_returns(
        $1, $2,
        'Function ' || quote_ident($1) || '() should return ' || $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for function_returns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."function_returns"(name, name, _name, text, text);
CREATE OR REPLACE FUNCTION "public"."function_returns"(name, name, _name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, _returns($1, $2, $3), $4, $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for functions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."functions_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."functions_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'functions',
        ARRAY(
            SELECT name FROM tap_funky WHERE schema = $1
            EXCEPT
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
        ),
        ARRAY(
            SELECT $2[i]
               FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT name FROM tap_funky WHERE schema = $1
        ),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for functions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."functions_are"(_name);
CREATE OR REPLACE FUNCTION "public"."functions_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT functions_are( $1, 'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct functions' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for functions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."functions_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."functions_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT functions_are( $1, $2, 'Schema ' || quote_ident($1) || ' should have the correct functions' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for functions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."functions_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."functions_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'functions',
        ARRAY(
            SELECT name FROM tap_funky WHERE is_visible
            AND schema NOT IN ('pg_catalog', 'information_schema')
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
               FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT name FROM tap_funky WHERE is_visible
            AND schema NOT IN ('pg_catalog', 'information_schema')
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for gen_random_bytes
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_random_bytes"(int4);
CREATE OR REPLACE FUNCTION "public"."gen_random_bytes"(int4)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_random_bytes'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gen_random_uuid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_random_uuid"();
CREATE OR REPLACE FUNCTION "public"."gen_random_uuid"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/pgcrypto', 'pg_random_uuid'
  LANGUAGE c VOLATILE
  COST 1;

-- ----------------------------
-- Function structure for gen_salt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_salt"(text, int4);
CREATE OR REPLACE FUNCTION "public"."gen_salt"(text, int4)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_gen_salt_rounds'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gen_salt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gen_salt"(text);
CREATE OR REPLACE FUNCTION "public"."gen_salt"(text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pg_gen_salt'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for groups_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."groups_are"(_name);
CREATE OR REPLACE FUNCTION "public"."groups_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT groups_are( $1, 'There should be the correct groups' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for groups_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."groups_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."groups_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'groups',
        ARRAY(
            SELECT groname
              FROM pg_catalog.pg_group
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT groname
              FROM pg_catalog.pg_group
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_cast"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_cast"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _cast_exists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_cast"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_cast"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok( _cast_exists( $1, $2, $3, $4 ), $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_cast"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_cast"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok( _cast_exists( $1, $2, $3 ), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_cast"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_cast"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _cast_exists( $1, $2 ),
        'Cast (' || quote_ident($1) || ' AS ' || quote_ident($2)
        || ') should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_cast"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_cast"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok(
       _cast_exists( $1, $2, $3, $4 ),
        'Cast (' || quote_ident($1) || ' AS ' || quote_ident($2)
        || ') WITH FUNCTION ' || quote_ident($3)
        || '.' || quote_ident($4) || '() should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_cast"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_cast"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok(
        _cast_exists( $1, $2, $3 ),
        'Cast (' || quote_ident($1) || ' AS ' || quote_ident($2)
        || ') WITH FUNCTION ' || quote_ident($3) || '() should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_check"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_check"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _hasc( $1, 'c' ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_check"(name);
CREATE OR REPLACE FUNCTION "public"."has_check"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_check( $1, 'Table ' || quote_ident($1) || ' should have a check constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_check
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_check"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_check"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _hasc( $1, $2, 'c' ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_column
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_column"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_column"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _cexists( $1, $2, $3 ), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_column
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_column"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_column"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _cexists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_column
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_column"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_column"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_column( $1, $2, 'Column ' || quote_ident($1) || '.' || quote_ident($2) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_composite
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_composite"(name);
CREATE OR REPLACE FUNCTION "public"."has_composite"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_composite( $1, 'Composite type ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_composite
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_composite"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_composite"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'c', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_composite
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_composite"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_composite"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'c', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_domain
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_domain"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_domain"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, ARRAY['d'] ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_domain
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_domain"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_domain"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_domain( $1, $2, 'Domain ' || quote_ident($1) || '.' || quote_ident($2) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_domain
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_domain"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_domain"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, $2, ARRAY['d'] ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_domain
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_domain"(name);
CREATE OR REPLACE FUNCTION "public"."has_domain"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, ARRAY['d'] ), ('Domain ' || quote_ident($1) || ' should exist')::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_enum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_enum"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_enum"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, ARRAY['e'] ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_enum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_enum"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_enum"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_enum( $1, $2, 'Enum ' || quote_ident($1) || '.' || quote_ident($2) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_enum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_enum"(name);
CREATE OR REPLACE FUNCTION "public"."has_enum"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, ARRAY['e'] ), ('Enum ' || quote_ident($1) || ' should exist')::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_enum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_enum"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_enum"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, $2, ARRAY['e'] ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_extension"(name);
CREATE OR REPLACE FUNCTION "public"."has_extension"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _ext_exists( $1 ),
        'Extension ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_extension"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_extension"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _ext_exists( $1 ), $2)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_extension"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_extension"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _ext_exists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_extension"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_extension"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _ext_exists( $1, $2 ),
        'Extension ' || quote_ident($2)
        || ' should exist in schema ' || quote_ident($1) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_fk"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_fk"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _hasc( $1, $2, 'f' ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_fk"(name);
CREATE OR REPLACE FUNCTION "public"."has_fk"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_fk( $1, 'Table ' || quote_ident($1) || ' should have a foreign key constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_fk"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_fk"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _hasc( $1, 'f' ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_foreign_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_foreign_table"(name);
CREATE OR REPLACE FUNCTION "public"."has_foreign_table"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_foreign_table( $1, 'Foreign table ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_foreign_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_foreign_table"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_foreign_table"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'f', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_foreign_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_foreign_table"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_foreign_table"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _rexists( 'f', $1, $2 ),
        'Foreign table ' || quote_ident($1) || '.' || quote_ident($2) || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_foreign_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_foreign_table"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_foreign_table"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'f', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_function"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."has_function"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _got_func($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_function"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_function"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _got_func($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_function"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."has_function"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _got_func($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_function"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."has_function"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _got_func($1, $2, $3),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_function"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_function"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _got_func($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_function"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_function"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _got_func($1, $2),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '() should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_function"(name, _name);
CREATE OR REPLACE FUNCTION "public"."has_function"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _got_func($1, $2),
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_function"(name);
CREATE OR REPLACE FUNCTION "public"."has_function"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _got_func($1), 'Function ' || quote_ident($1) || '() should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_group"(name);
CREATE OR REPLACE FUNCTION "public"."has_group"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_group($1), 'Group ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_group"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_group"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_group($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _have_index( $1, $2 ), 'Index ' || quote_ident($2) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, name, _name);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT has_index( $1, $2, $3, $4, 'Index ' || quote_ident($3) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE WHEN $3 LIKE '%(%'
           THEN has_index( $1, $2, $3::name )
           ELSE ok( _have_index( $1, $2 ), $3 )
           END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE WHEN _is_schema( $1 ) THEN
        -- Looking for schema.table index.
            ok ( _have_index( $1, $2, $3 ), $4)
        ELSE
        -- Looking for particular columns.
            has_index( $1, $2, ARRAY[$3], $4 )
      END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_index( $1, $2, $3, ARRAY[$4], $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
     index_cols name[];
BEGIN
    index_cols := _ikeys($1, $2 );

    IF index_cols IS NULL OR index_cols = '{}'::name[] THEN
        RETURN ok( false, $4 ) || E'\n'
            || diag( 'Index ' || quote_ident($2) || ' ON ' || quote_ident($1) || ' not found');
    END IF;

    RETURN is(
        quote_ident($2) || ' ON ' || quote_ident($1) || '(' || array_to_string( index_cols, ', ' ) || ')',
        quote_ident($2) || ' ON ' || quote_ident($1) || '(' || array_to_string( $3, ', ' ) || ')',
        $4
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
     index_cols name[];
BEGIN
    index_cols := _ikeys($1, $2, $3 );

    IF index_cols IS NULL OR index_cols = '{}'::name[] THEN
        RETURN ok( false, $5 ) || E'\n'
            || diag( 'Index ' || quote_ident($3) || ' ON ' || quote_ident($1) || '.' || quote_ident($2) || ' not found');
    END IF;

    RETURN is(
        quote_ident($3) || ' ON ' || quote_ident($1) || '.' || quote_ident($2) || '(' || array_to_string( index_cols, ', ' ) || ')',
        quote_ident($3) || ' ON ' || quote_ident($1) || '.' || quote_ident($2) || '(' || array_to_string( $4, ', ' ) || ')',
        $5
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
   IF _is_schema($1) THEN
       -- ( schema, table, index )
       RETURN ok( _have_index( $1, $2, $3 ), 'Index ' || quote_ident($3) || ' should exist' );
   ELSE
       -- ( table, index, column/expression )
       RETURN has_index( $1, $2, $3, 'Index ' || quote_ident($2) || ' should exist' );
   END IF;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT has_index( $1, $2, $3, 'Index ' || quote_ident($2) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_index"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_index"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT has_index( $1, $2, $3, $4, 'Index ' || quote_ident($3) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_language
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_language"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_language"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_trusted($1) IS NOT NULL, $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_language
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_language"(name);
CREATE OR REPLACE FUNCTION "public"."has_language"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_trusted($1) IS NOT NULL, 'Procedural language ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_leftop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_leftop"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_leftop"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists(NULL, $1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_leftop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_leftop"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_leftop"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists(NULL, $1, $2, $3, $4), $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_leftop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_leftop"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_leftop"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists(NULL, $1, $2, $3, $4 ),
        'Left operator ' || quote_ident($1) || '.' || $2 || '(NONE,'
        || $3 || ') RETURNS ' || $4 || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_leftop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_leftop"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_leftop"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists(NULL, $1, $2, $3 ),
        'Left operator ' || $1 || '(NONE,' || $2 || ') RETURNS ' || $3 || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_leftop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_leftop"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_leftop"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists(NULL, $1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_leftop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_leftop"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_leftop"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists(NULL, $1, $2 ),
        'Left operator ' || $1 || '(NONE,' || $2 || ') should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_materialized_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_materialized_view"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_materialized_view"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'm', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_materialized_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_materialized_view"(name);
CREATE OR REPLACE FUNCTION "public"."has_materialized_view"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_materialized_view( $1, 'Materialized view ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_materialized_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_materialized_view"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_materialized_view"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'm', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_opclass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_opclass"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_opclass"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _opc_exists( $1, $2 ), 'Operator class ' || quote_ident($1) || '.' || quote_ident($2) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_opclass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_opclass"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_opclass"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _opc_exists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_opclass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_opclass"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_opclass"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _opc_exists( $1 ), $2)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_opclass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_opclass"(name);
CREATE OR REPLACE FUNCTION "public"."has_opclass"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _opc_exists( $1 ), 'Operator class ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_operator
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_operator"(name, name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_operator"(name, name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists($1, $2, $3, $4, $5 ), $6 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_operator
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_operator"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_operator"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists($1, $2, $3, $4 ), $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_operator
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_operator"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_operator"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists($1, $2, $3, $4 ),
        'Operator ' ||  $2 || '(' || $1 || ',' || $3
        || ') RETURNS ' || $4 || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_operator
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_operator"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_operator"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists($1, $2, $3 ), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_operator
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_operator"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_operator"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists($1, $2, $3 ),
        'Operator ' ||  $2 || '(' || $1 || ',' || $3
        || ') should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_operator
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_operator"(name, name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_operator"(name, name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists($1, $2, $3, $4, $5 ),
        'Operator ' || quote_ident($2) || '.' || $3 || '(' || $1 || ',' || $4
        || ') RETURNS ' || $5 || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_pk"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_pk"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _hasc( $1, $2, 'p' ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_pk"(name);
CREATE OR REPLACE FUNCTION "public"."has_pk"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_pk( $1, 'Table ' || quote_ident($1) || ' should have a primary key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_pk"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_pk"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _hasc( $1, 'p' ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_relation
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_relation"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_relation"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _relexists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_relation
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_relation"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_relation"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _relexists( $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_relation
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_relation"(name);
CREATE OR REPLACE FUNCTION "public"."has_relation"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_relation( $1, 'Relation ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rightop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rightop"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_rightop"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists($1, $2, $3, NULL, $4 ),
        'Right operator ' || quote_ident($2) || '.' || $3 || '('
        || $1 || ',NONE) RETURNS ' || $4 || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rightop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rightop"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_rightop"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists( $1, $2, $3, NULL, $4), $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rightop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rightop"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_rightop"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists($1, $2, NULL, $3 ),
        'Right operator ' || $2 || '('
        || $1 || ',NONE) RETURNS ' || $3 || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rightop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rightop"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_rightop"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists( $1, $2, NULL), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rightop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rightop"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_rightop"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
         _op_exists($1, $2, NULL ),
        'Right operator ' || $2 || '(' || $1 || ',NONE) should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rightop
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rightop"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_rightop"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _op_exists( $1, $2, NULL, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_role"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_role"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_role($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_role"(name);
CREATE OR REPLACE FUNCTION "public"."has_role"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_role($1), 'Role ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rule
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rule"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_rule"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_instead($1, $2) IS NOT NULL, 'Relation ' || quote_ident($1) || ' should have rule ' || quote_ident($2) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rule
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rule"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_rule"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_instead($1, $2, $3) IS NOT NULL, 'Relation ' || quote_ident($1) || '.' || quote_ident($2) || ' should have rule ' || quote_ident($3) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rule
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rule"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_rule"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_instead($1, $2, $3) IS NOT NULL, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_rule
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_rule"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_rule"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_instead($1, $2) IS NOT NULL, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_schema
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_schema"(name);
CREATE OR REPLACE FUNCTION "public"."has_schema"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_schema( $1, 'Schema ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_schema
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_schema"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_schema"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        EXISTS(
            SELECT true
              FROM pg_catalog.pg_namespace
             WHERE nspname = $1
        ), $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_sequence
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_sequence"(name);
CREATE OR REPLACE FUNCTION "public"."has_sequence"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_sequence( $1, 'Sequence ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_sequence
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_sequence"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_sequence"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _rexists( 'S', $1, $2 ),
        'Sequence ' || quote_ident($1) || '.' || quote_ident($2) || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_sequence
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_sequence"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_sequence"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'S', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_sequence
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_sequence"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_sequence"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'S', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_table"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_table"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( '{r,p}'::char[], $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_table"(name);
CREATE OR REPLACE FUNCTION "public"."has_table"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_table( $1, 'Table ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_table"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_table"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( '{r,p}'::char[], $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_table"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_table"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _rexists( '{r,p}'::char[], $1, $2 ),
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_tablespace
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_tablespace"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_tablespace"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        EXISTS(
            SELECT true
              FROM pg_catalog.pg_tablespace
             WHERE spcname = $1
        ), $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_tablespace
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_tablespace"(name, text, text);
CREATE OR REPLACE FUNCTION "public"."has_tablespace"(name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF pg_version_num() >= 90200 THEN
        RETURN ok(
            EXISTS(
                SELECT true
                  FROM pg_catalog.pg_tablespace
                 WHERE spcname = $1
                   AND pg_tablespace_location(oid) = $2
            ), $3
        );
    ELSE
        RETURN ok(
            EXISTS(
                SELECT true
                  FROM pg_catalog.pg_tablespace
                 WHERE spcname = $1
                   AND spclocation = $2
            ), $3
        );
    END IF;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_tablespace
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_tablespace"(name);
CREATE OR REPLACE FUNCTION "public"."has_tablespace"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_tablespace( $1, 'Tablespace ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_trigger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_trigger"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_trigger"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _trig($1, $2, $3), $4);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_trigger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_trigger"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."has_trigger"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_trigger(
        $1, $2, $3,
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should have trigger ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_trigger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_trigger"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_trigger"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _trig($1, $2), 'Table ' || quote_ident($1) || ' should have trigger ' || quote_ident($2));
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_trigger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_trigger"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_trigger"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _trig($1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_type"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_type"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, $2, NULL ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_type"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_type"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, NULL ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_type"(name);
CREATE OR REPLACE FUNCTION "public"."has_type"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_type( $1, NULL ), ('Type ' || quote_ident($1) || ' should exist')::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_type"(name, name);
CREATE OR REPLACE FUNCTION "public"."has_type"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_type( $1, $2, 'Type ' || quote_ident($1) || '.' || quote_ident($2) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_unique"(text);
CREATE OR REPLACE FUNCTION "public"."has_unique"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_unique( $1, 'Table ' || quote_ident($1) || ' should have a unique constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_unique"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."has_unique"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _hasc( $1, $2, 'u' ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_unique"(text, text);
CREATE OR REPLACE FUNCTION "public"."has_unique"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _hasc( $1, 'u' ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_user
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_user"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_user"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_user($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_user
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_user"(name);
CREATE OR REPLACE FUNCTION "public"."has_user"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _has_user( $1 ), 'User ' || quote_ident($1) || ' should exist');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_view"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."has_view"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'v', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_view"(name);
CREATE OR REPLACE FUNCTION "public"."has_view"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT has_view( $1, 'View ' || quote_ident($1) || ' should exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for has_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."has_view"(name, text);
CREATE OR REPLACE FUNCTION "public"."has_view"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists( 'v', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_cast"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_cast"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok( NOT _cast_exists( $1, $2, $3 ), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_cast"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_cast"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok(
        NOT _cast_exists( $1, $2, $3 ),
        'Cast (' || quote_ident($1) || ' AS ' || quote_ident($2)
        || ') WITH FUNCTION ' || quote_ident($3) || '() should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_cast"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_cast"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok( NOT _cast_exists( $1, $2, $3, $4 ), $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_cast"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_cast"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _cast_exists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_cast"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_cast"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _cast_exists( $1, $2 ),
        'Cast (' || quote_ident($1) || ' AS ' || quote_ident($2)
        || ') should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_cast
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_cast"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_cast"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok(
       NOT _cast_exists( $1, $2, $3, $4 ),
        'Cast (' || quote_ident($1) || ' AS ' || quote_ident($2)
        || ') WITH FUNCTION ' || quote_ident($3)
        || '.' || quote_ident($4) || '() should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_column
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_column"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_column"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_column( $1, $2, 'Column ' || quote_ident($1) || '.' || quote_ident($2) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_column
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_column"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_column"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _cexists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_column
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_column"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_column"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _cexists( $1, $2, $3 ), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_composite
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_composite"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_composite"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'c', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_composite
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_composite"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_composite"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'c', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_composite
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_composite"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_composite"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_composite( $1, 'Composite type ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_domain
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_domain"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_domain"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, ARRAY['d'] ), ('Domain ' || quote_ident($1) || ' should not exist')::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_domain
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_domain"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_domain"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, $2, ARRAY['d'] ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_domain
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_domain"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_domain"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, ARRAY['d'] ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_domain
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_domain"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_domain"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_domain( $1, $2, 'Domain ' || quote_ident($1) || '.' || quote_ident($2) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_enum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_enum"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_enum"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_enum( $1, $2, 'Enum ' || quote_ident($1) || '.' || quote_ident($2) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_enum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_enum"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_enum"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, ARRAY['e'] ), ('Enum ' || quote_ident($1) || ' should not exist')::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_enum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_enum"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_enum"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, ARRAY['e'] ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_enum
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_enum"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_enum"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, $2, ARRAY['e'] ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_extension"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_extension"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _ext_exists( $1 ),
        'Extension ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_extension"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_extension"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _ext_exists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_extension"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_extension"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _ext_exists( $1, $2 ),
        'Extension ' || quote_ident($2)
        || ' should not exist in schema ' || quote_ident($1) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_extension
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_extension"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_extension"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _ext_exists( $1 ), $2)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_fk"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_fk"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_fk( $1, 'Table ' || quote_ident($1) || ' should not have a foreign key constraint' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_fk"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_fk"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _hasc( $1, $2, 'f' ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_fk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_fk"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_fk"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _hasc( $1, 'f' ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_foreign_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_foreign_table"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_foreign_table"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _rexists( 'f', $1, $2 ),
        'Foreign table ' || quote_ident($1) || '.' || quote_ident($2) || ' should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_foreign_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_foreign_table"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_foreign_table"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'f', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_foreign_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_foreign_table"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_foreign_table"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'f', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_foreign_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_foreign_table"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_foreign_table"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_foreign_table( $1, 'Foreign table ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_function"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_function"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _got_func($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_function"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_function"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _got_func($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_function"(name, _name);
CREATE OR REPLACE FUNCTION "public"."hasnt_function"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _got_func($1, $2),
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_function"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_function"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _got_func($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_function"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."hasnt_function"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _got_func($1, $2, $3),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_function"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_function"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _got_func($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_function"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_function"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _got_func($1, $2),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '() should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_function
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_function"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_function"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _got_func($1), 'Function ' || quote_ident($1) || '() should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_group"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_group"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_group($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_group
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_group"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_group"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_group($1), 'Group ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_index"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_index"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _have_index( $1, $2 ),
        'Index ' || quote_ident($2) || ' should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_index"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_index"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _have_index( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_index"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_index"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    RETURN ok( NOT _have_index( $1, $2, $3 ), $4 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_index
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_index"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_index"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _have_index( $1, $2, $3 ),
        'Index ' || quote_ident($3) || ' should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_language
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_language"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_language"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_trusted($1) IS NULL, $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_language
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_language"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_language"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_trusted($1) IS NULL, 'Procedural language ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_materialized_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_materialized_view"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_materialized_view"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'm', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_materialized_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_materialized_view"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_materialized_view"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_materialized_view( $1, 'Materialized view ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_materialized_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_materialized_view"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_materialized_view"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'm', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_opclass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_opclass"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_opclass"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _opc_exists( $1 ), 'Operator class ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_opclass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_opclass"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_opclass"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _opc_exists( $1 ), $2)
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_opclass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_opclass"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_opclass"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _opc_exists( $1, $2 ), 'Operator class ' || quote_ident($1) || '.' || quote_ident($2) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_opclass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_opclass"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_opclass"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _opc_exists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_pk"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_pk"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _hasc( $1, 'p' ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_pk"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_pk"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_pk( $1, 'Table ' || quote_ident($1) || ' should not have a primary key' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_pk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_pk"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_pk"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _hasc( $1, $2, 'p' ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_relation
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_relation"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_relation"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_relation( $1, 'Relation ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_relation
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_relation"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_relation"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _relexists( $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_relation
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_relation"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_relation"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _relexists( $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_role"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_role"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_role($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_role
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_role"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_role"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_role($1), 'Role ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_rule
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_rule"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_rule"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_instead($1, $2) IS NULL, 'Relation ' || quote_ident($1) || ' should not have rule ' || quote_ident($2) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_rule
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_rule"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_rule"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_instead($1, $2, $3) IS NULL, 'Relation ' || quote_ident($1) || '.' || quote_ident($2) || ' should not have rule ' || quote_ident($3) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_rule
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_rule"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_rule"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_instead($1, $2) IS NULL, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_rule
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_rule"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_rule"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _is_instead($1, $2, $3) IS NULL, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_schema
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_schema"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_schema"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_schema( $1, 'Schema ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_schema
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_schema"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_schema"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT EXISTS(
            SELECT true
              FROM pg_catalog.pg_namespace
             WHERE nspname = $1
        ), $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_sequence
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_sequence"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_sequence"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'S', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_sequence
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_sequence"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_sequence"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'S', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_sequence
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_sequence"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_sequence"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_sequence( $1, 'Sequence ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_table"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_table"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_table( $1, 'Table ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_table"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_table"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _rexists( '{r,p}'::char[], $1, $2 ),
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should not exist'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_table"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_table"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( '{r,p}'::char[], $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_table"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_table"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( '{r,p}'::char[], $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_tablespace
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_tablespace"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_tablespace"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT EXISTS(
            SELECT true
              FROM pg_catalog.pg_tablespace
             WHERE spcname = $1
        ), $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_tablespace
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_tablespace"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_tablespace"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_tablespace( $1, 'Tablespace ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_trigger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_trigger"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_trigger"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _trig($1, $2), 'Table ' || quote_ident($1) || ' should not have trigger ' || quote_ident($2));
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_trigger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_trigger"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_trigger"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _trig($1, $2, $3), $4);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_trigger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_trigger"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_trigger"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _trig($1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_trigger
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_trigger"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_trigger"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _trig($1, $2, $3),
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should not have trigger ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_type"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_type"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, $2, NULL ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_type"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_type"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, NULL ), ('Type ' || quote_ident($1) || ' should not exist')::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_type"(name, name);
CREATE OR REPLACE FUNCTION "public"."hasnt_type"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_type( $1, $2, 'Type ' || quote_ident($1) || '.' || quote_ident($2) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_type"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_type"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_type( $1, NULL ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_user
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_user"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_user"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_user($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_user
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_user"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_user"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _has_user( $1 ), 'User ' || quote_ident($1) || ' should not exist');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_view"(name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_view"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'v', $1 ), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_view"(name);
CREATE OR REPLACE FUNCTION "public"."hasnt_view"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT hasnt_view( $1, 'View ' || quote_ident($1) || ' should not exist' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hasnt_view
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hasnt_view"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."hasnt_view"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists( 'v', $1, $2 ), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for hmac
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hmac"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."hmac"(text, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_hmac'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for hmac
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."hmac"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."hmac"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pg_hmac'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for ialike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ialike"(anyelement, text);
CREATE OR REPLACE FUNCTION "public"."ialike"(anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _alike( $1 ~~* $2, $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for ialike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ialike"(anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."ialike"(anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _alike( $1 ~~* $2, $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for imatches
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."imatches"(anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."imatches"(anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _alike( $1 ~* $2, $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for imatches
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."imatches"(anyelement, text);
CREATE OR REPLACE FUNCTION "public"."imatches"(anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _alike( $1 ~* $2, $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for in_todo
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."in_todo"();
CREATE OR REPLACE FUNCTION "public"."in_todo"()
  RETURNS "pg_catalog"."bool" AS $BODY$
DECLARE
    todos integer;
BEGIN
    todos := _get('todo');
    RETURN CASE WHEN todos IS NULL THEN FALSE ELSE TRUE END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_primary
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_primary"(name);
CREATE OR REPLACE FUNCTION "public"."index_is_primary"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisprimary
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_class ct ON ct.oid = x.indrelid
     WHERE ci.relname = $1
       AND pg_catalog.pg_table_is_visible(ct.oid)
      INTO res;

      RETURN ok(
          COALESCE(res, false),
          'Index ' || quote_ident($1) || ' should be on a primary key'
      );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_primary
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_primary"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."index_is_primary"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisprimary
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
     WHERE ct.relname = $2
       AND ci.relname = $3
       AND n.nspname  = $1
      INTO res;

      RETURN ok( COALESCE(res, false), $4 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_primary
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_primary"(name, name);
CREATE OR REPLACE FUNCTION "public"."index_is_primary"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisprimary
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
     WHERE ct.relname = $1
       AND ci.relname = $2
       AND pg_catalog.pg_table_is_visible(ct.oid)
     INTO res;

      RETURN ok(
          COALESCE(res, false),
          'Index ' || quote_ident($2) || ' should be on a primary key'
      );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_primary
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_primary"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."index_is_primary"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT index_is_primary(
        $1, $2, $3,
        'Index ' || quote_ident($3) || ' should be on a primary key'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_type"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."index_is_type"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT index_is_type(
        $1, $2, $3, $4,
        'Index ' || quote_ident($3) || ' should be a ' || quote_ident($4) || ' index'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_type"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."index_is_type"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    aname name;
BEGIN
    SELECT am.amname
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
      JOIN pg_catalog.pg_am am       ON ci.relam = am.oid
     WHERE ct.relname = $2
       AND ci.relname = $3
       AND n.nspname  = $1
      INTO aname;

      return is( aname, $4, $5 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_type"(name, name);
CREATE OR REPLACE FUNCTION "public"."index_is_type"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    aname name;
BEGIN
    SELECT am.amname
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_am am    ON ci.relam = am.oid
     WHERE ci.relname = $1
      INTO aname;

      return is(
          aname, $2,
          'Index ' || quote_ident($1) || ' should be a ' || quote_ident($2) || ' index'
      );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_type
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_type"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."index_is_type"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    aname name;
BEGIN
    SELECT am.amname
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_am am    ON ci.relam = am.oid
     WHERE ct.relname = $1
       AND ci.relname = $2
      INTO aname;

      return is(
          aname, $3,
          'Index ' || quote_ident($2) || ' should be a ' || quote_ident($3) || ' index'
      );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_unique"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."index_is_unique"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT index_is_unique(
        $1, $2, $3,
        'Index ' || quote_ident($3) || ' should be unique'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_unique"(name, name);
CREATE OR REPLACE FUNCTION "public"."index_is_unique"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisunique
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
     WHERE ct.relname = $1
       AND ci.relname = $2
       AND pg_catalog.pg_table_is_visible(ct.oid)
      INTO res;

      RETURN ok(
          COALESCE(res, false),
          'Index ' || quote_ident($2) || ' should be unique'
      );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_unique"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."index_is_unique"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisunique
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
     WHERE ct.relname = $2
       AND ci.relname = $3
       AND n.nspname  = $1
      INTO res;

      RETURN ok( COALESCE(res, false), $4 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_is_unique
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_is_unique"(name);
CREATE OR REPLACE FUNCTION "public"."index_is_unique"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisunique
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_class ct ON ct.oid = x.indrelid
     WHERE ci.relname = $1
       AND pg_catalog.pg_table_is_visible(ct.oid)
      INTO res;

      RETURN ok(
          COALESCE(res, false),
          'Index ' || quote_ident($1) || ' should be unique'
      );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_owner_is"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."index_owner_is"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_index_owner($1, $2, $3);
BEGIN
    -- Make sure the index exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            E'    Index ' || quote_ident($3) || ' ON '
            || quote_ident($1) || '.' || quote_ident($2) || ' not found'
        );
    END IF;

    RETURN is(owner, $4, $5);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_owner_is"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."index_owner_is"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT index_owner_is(
        $1, $2, $3, $4,
        'Index ' || quote_ident($3) || ' ON '
        || quote_ident($1) || '.' || quote_ident($2)
        || ' should be owned by ' || quote_ident($4)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."index_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_index_owner($1, $2);
BEGIN
    -- Make sure the index exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Index ' || quote_ident($2) || ' ON ' || quote_ident($1) || ' not found'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for index_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."index_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."index_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT index_owner_is(
        $1, $2, $3,
        'Index ' || quote_ident($2) || ' ON '
        || quote_ident($1) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for indexes_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."indexes_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."indexes_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT indexes_are( $1, $2, 'Table ' || quote_ident($1) || ' should have the correct indexes' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for indexes_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."indexes_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."indexes_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT indexes_are( $1, $2, $3, 'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should have the correct indexes' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for indexes_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."indexes_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."indexes_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'indexes',
        ARRAY(
            SELECT ci.relname
              FROM pg_catalog.pg_index x
              JOIN pg_catalog.pg_class ct ON ct.oid = x.indrelid
              JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
              JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
             WHERE ct.relname = $1
               AND pg_catalog.pg_table_is_visible(ct.oid)
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
            EXCEPT
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
        ),
        ARRAY(
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT ci.relname
              FROM pg_catalog.pg_index x
              JOIN pg_catalog.pg_class ct ON ct.oid = x.indrelid
              JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
              JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
             WHERE ct.relname = $1
               AND pg_catalog.pg_table_is_visible(ct.oid)
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
        ),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for indexes_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."indexes_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."indexes_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'indexes',
        ARRAY(
            SELECT ci.relname
              FROM pg_catalog.pg_index x
              JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
              JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
              JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
             WHERE ct.relname = $2
               AND n.nspname  = $1
            EXCEPT
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
        ),
        ARRAY(
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
            EXCEPT
            SELECT ci.relname
              FROM pg_catalog.pg_index x
              JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
              JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
              JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
             WHERE ct.relname = $2
               AND n.nspname  = $1
        ),
        $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is"(anyelement, anyelement);
CREATE OR REPLACE FUNCTION "public"."is"(anyelement, anyelement)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is( $1, $2, NULL);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is"(anyelement, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."is"(anyelement, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    result BOOLEAN;
    output TEXT;
BEGIN
    -- Would prefer $1 IS NOT DISTINCT FROM, but that's not supported by 8.1.
    result := NOT $1 IS DISTINCT FROM $2;
    output := ok( result, $3 );
    RETURN output || CASE result WHEN TRUE THEN '' ELSE E'\n' || diag(
           '        have: ' || CASE WHEN $1 IS NULL THEN 'NULL' ELSE $1::text END ||
        E'\n        want: ' || CASE WHEN $2 IS NULL THEN 'NULL' ELSE $2::text END
    ) END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_aggregate"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_aggregate"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, _agg($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_aggregate"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_aggregate"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, _agg($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_aggregate"(name, _name);
CREATE OR REPLACE FUNCTION "public"."is_aggregate"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _agg($1, $2),
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should be an aggregate function'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_aggregate"(name);
CREATE OR REPLACE FUNCTION "public"."is_aggregate"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _agg($1), 'Function ' || quote_ident($1) || '() should be an aggregate function' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_aggregate"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_aggregate"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, _agg($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_aggregate"(name, text);
CREATE OR REPLACE FUNCTION "public"."is_aggregate"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, _agg($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_aggregate"(name, name);
CREATE OR REPLACE FUNCTION "public"."is_aggregate"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _agg($1, $2),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '() should be an aggregate function'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_aggregate"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."is_aggregate"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _agg($1, $2, $3),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should be an aggregate function'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_clustered
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_clustered"(name, name);
CREATE OR REPLACE FUNCTION "public"."is_clustered"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisclustered
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
     WHERE ct.relname = $1
       AND ci.relname = $2
      INTO res;

      RETURN ok(
          COALESCE(res, false),
          'Table ' || quote_ident($1) || ' should be clustered on index ' || quote_ident($2)
      );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_clustered
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_clustered"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."is_clustered"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is_clustered(
        $1, $2, $3,
        'Table ' || quote_ident($1) || '.' || quote_ident($2) ||
        ' should be clustered on index ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_clustered
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_clustered"(name);
CREATE OR REPLACE FUNCTION "public"."is_clustered"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisclustered
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ci ON ci.oid = x.indexrelid
     WHERE ci.relname = $1
      INTO res;

      RETURN ok(
          COALESCE(res, false),
          'Table should be clustered on index ' || quote_ident($1)
      );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_clustered
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_clustered"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_clustered"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res boolean;
BEGIN
    SELECT x.indisclustered
      FROM pg_catalog.pg_index x
      JOIN pg_catalog.pg_class ct    ON ct.oid = x.indrelid
      JOIN pg_catalog.pg_class ci    ON ci.oid = x.indexrelid
      JOIN pg_catalog.pg_namespace n ON n.oid = ct.relnamespace
     WHERE ct.relname = $2
       AND ci.relname = $3
       AND n.nspname  = $1
      INTO res;

      RETURN ok( COALESCE(res, false), $4 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_definer"(name, _name);
CREATE OR REPLACE FUNCTION "public"."is_definer"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _definer($1, $2),
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should be security definer'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_definer"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."is_definer"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _definer($1, $2, $3),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should be security definer'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_definer"(name, name);
CREATE OR REPLACE FUNCTION "public"."is_definer"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _definer($1, $2),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '() should be security definer'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_definer"(name);
CREATE OR REPLACE FUNCTION "public"."is_definer"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _definer($1), 'Function ' || quote_ident($1) || '() should be security definer' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_definer"(name, text);
CREATE OR REPLACE FUNCTION "public"."is_definer"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, _definer($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_definer"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_definer"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, _definer($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_definer"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_definer"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, _definer($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_definer"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_definer"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, _definer($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_empty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_empty"(text, text);
CREATE OR REPLACE FUNCTION "public"."is_empty"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    extras  TEXT[]  := '{}';
    res     BOOLEAN := TRUE;
    msg     TEXT    := '';
    rec     RECORD;
BEGIN
    -- Find extra records.
    FOR rec in EXECUTE _query($1) LOOP
        extras := extras || rec::text;
    END LOOP;

    -- What extra records do we have?
    IF extras[1] IS NOT NULL THEN
        res := FALSE;
        msg := E'\n' || diag(
            E'    Unexpected records:\n        '
            ||  array_to_string( extras, E'\n        ' )
        );
    END IF;

    RETURN ok(res, $2) || msg;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_empty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_empty"(text);
CREATE OR REPLACE FUNCTION "public"."is_empty"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is_empty( $1, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_indexed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_indexed"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_indexed"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok( _is_indexed(NULL, $1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_indexed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_indexed"(name, _name);
CREATE OR REPLACE FUNCTION "public"."is_indexed"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok(
       _is_indexed(NULL, $1, $2),
       'Should have an index on ' ||  quote_ident($1) || '(' || array_to_string( $2, ', ' ) || ')'
   );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_indexed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_indexed"(name, name);
CREATE OR REPLACE FUNCTION "public"."is_indexed"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok ( _is_indexed( NULL, $1, ARRAY[$2]::NAME[]) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_indexed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_indexed"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."is_indexed"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT CASE WHEN _is_schema( $1 ) THEN
                -- Looking for schema.table index.
                is_indexed( $1, $2, ARRAY[$3]::NAME[] )
           ELSE
                -- Looking for particular columns.
                is_indexed( $1, ARRAY[$2]::NAME[], $3 )
           END;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_indexed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_indexed"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_indexed"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok( _is_indexed($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_indexed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_indexed"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_indexed"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok ( _is_indexed( $1, $2, ARRAY[$3]::NAME[]), $4);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_indexed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_indexed"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."is_indexed"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
   SELECT ok(
       _is_indexed($1, $2, $3),
       'Should have an index on ' ||  quote_ident($1) || '.' || quote_ident($2) || '(' || array_to_string( $3, ', ' ) || ')'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_member_of
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_member_of"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_member_of"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    missing text[];
BEGIN
    IF NOT _has_role($1) THEN
        RETURN fail( $3 ) || E'\n' || diag (
            '    Role ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    SELECT ARRAY(
        SELECT quote_ident($2[i])
          FROM generate_series(1, array_upper($2, 1)) s(i)
          LEFT JOIN pg_catalog.pg_roles r ON rolname = $2[i]
         WHERE r.oid IS NULL
            OR NOT r.oid = ANY ( _grolist($1) )
         ORDER BY s.i
    ) INTO missing;
    IF missing[1] IS NULL THEN
        RETURN ok( true, $3 );
    END IF;
    RETURN ok( false, $3 ) || E'\n' || diag(
        '    Members missing from the ' || quote_ident($1) || E' role:\n        ' ||
        array_to_string( missing, E'\n        ')
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_member_of
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_member_of"(name, _name);
CREATE OR REPLACE FUNCTION "public"."is_member_of"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is_member_of( $1, $2, 'Should have members of role ' || quote_ident($1) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_member_of
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_member_of"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_member_of"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is_member_of( $1, ARRAY[$2], $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_member_of
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_member_of"(name, name);
CREATE OR REPLACE FUNCTION "public"."is_member_of"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is_member_of( $1, ARRAY[$2] );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_partition_of
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_partition_of"(name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_partition_of"(name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _partof($1, $2, $3, $4), $5);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_partition_of
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_partition_of"(name, name);
CREATE OR REPLACE FUNCTION "public"."is_partition_of"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _partof($1, $2),
        'Table ' || quote_ident($1) || ' should be a partition of ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_partition_of
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_partition_of"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_partition_of"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _partof($1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_partition_of
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_partition_of"(name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."is_partition_of"(name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _partof($1, $2, $3, $4),
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should be a partition of '
        || quote_ident($3) || '.' || quote_ident($4)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_partitioned
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_partitioned"(name, name);
CREATE OR REPLACE FUNCTION "public"."is_partitioned"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _rexists('p', $1, $2),
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should be partitioned'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_partitioned
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_partitioned"(name, text);
CREATE OR REPLACE FUNCTION "public"."is_partitioned"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists('p', $1), $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_partitioned
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_partitioned"(name);
CREATE OR REPLACE FUNCTION "public"."is_partitioned"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _rexists('p', $1),
        'Table ' || quote_ident($1) || ' should be partitioned'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_partitioned
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_partitioned"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_partitioned"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _rexists('p', $1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_strict"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_strict"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, _strict($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_strict"(name, text);
CREATE OR REPLACE FUNCTION "public"."is_strict"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, _strict($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_strict"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."is_strict"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, _strict($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_strict"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."is_strict"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, _strict($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_strict"(name);
CREATE OR REPLACE FUNCTION "public"."is_strict"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( _strict($1), 'Function ' || quote_ident($1) || '() should be strict' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_strict"(name, _name);
CREATE OR REPLACE FUNCTION "public"."is_strict"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _strict($1, $2),
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should be strict'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_strict"(name, name);
CREATE OR REPLACE FUNCTION "public"."is_strict"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _strict($1, $2),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '() should be strict'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_strict"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."is_strict"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        _strict($1, $2, $3),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should be strict'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_superuser
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_superuser"(name);
CREATE OR REPLACE FUNCTION "public"."is_superuser"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT is_superuser( $1, 'User ' || quote_ident($1) || ' should be a super user' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for is_superuser
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."is_superuser"(name, text);
CREATE OR REPLACE FUNCTION "public"."is_superuser"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    is_super boolean := _is_super($1);
BEGIN
    IF is_super IS NULL THEN
        RETURN fail( $2 ) || E'\n' || diag( '    User ' || quote_ident($1) || ' does not exist') ;
    END IF;
    RETURN ok( is_super, $2 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isa_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isa_ok"(anyelement, regtype, text);
CREATE OR REPLACE FUNCTION "public"."isa_ok"(anyelement, regtype, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    typeof regtype := pg_typeof($1);
BEGIN
    IF typeof = $2 THEN RETURN ok(true, $3 || ' isa ' || $2 ); END IF;
    RETURN ok(false, $3 || ' isa ' || $2 ) || E'\n' ||
        diag('    ' || $3 || ' isn''t a "' || $2 || '" it''s a "' || typeof || '"');
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isa_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isa_ok"(anyelement, regtype);
CREATE OR REPLACE FUNCTION "public"."isa_ok"(anyelement, regtype)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT isa_ok($1, $2, 'the value');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt"(anyelement, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."isnt"(anyelement, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    result BOOLEAN;
    output TEXT;
BEGIN
    result := $1 IS DISTINCT FROM $2;
    output := ok( result, $3 );
    RETURN output || CASE result WHEN TRUE THEN '' ELSE E'\n' || diag(
           '        have: ' || COALESCE( $1::text, 'NULL' ) ||
        E'\n        want: anything else'
    ) END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt"(anyelement, anyelement);
CREATE OR REPLACE FUNCTION "public"."isnt"(anyelement, anyelement)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT isnt( $1, $2, NULL);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_aggregate"(name);
CREATE OR REPLACE FUNCTION "public"."isnt_aggregate"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _agg($1), 'Function ' || quote_ident($1) || '() should not be an aggregate function' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_aggregate"(name, name);
CREATE OR REPLACE FUNCTION "public"."isnt_aggregate"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _agg($1, $2),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '() should not be an aggregate function'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_aggregate"(name, _name);
CREATE OR REPLACE FUNCTION "public"."isnt_aggregate"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _agg($1, $2),
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should not be an aggregate function'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_aggregate"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."isnt_aggregate"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _agg($1, $2, $3),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should not be an aggregate function'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_aggregate"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_aggregate"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, NOT _agg($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_aggregate"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_aggregate"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, NOT _agg($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_aggregate"(name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_aggregate"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, NOT _agg($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_aggregate
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_aggregate"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_aggregate"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, NOT _agg($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_definer"(name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_definer"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, NOT _definer($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_definer"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_definer"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, NOT _definer($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_definer"(name, _name);
CREATE OR REPLACE FUNCTION "public"."isnt_definer"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _definer($1, $2),
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should not be security definer'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_definer"(name);
CREATE OR REPLACE FUNCTION "public"."isnt_definer"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _definer($1), 'Function ' || quote_ident($1) || '() should not be security definer' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_definer"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."isnt_definer"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _definer($1, $2, $3),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should not be security definer'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_definer"(name, name);
CREATE OR REPLACE FUNCTION "public"."isnt_definer"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _definer($1, $2),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '() should not be security definer'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_definer"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_definer"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, NOT _definer($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_definer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_definer"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_definer"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, NOT _definer($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_empty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_empty"(text);
CREATE OR REPLACE FUNCTION "public"."isnt_empty"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT isnt_empty( $1, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_empty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_empty"(text, text);
CREATE OR REPLACE FUNCTION "public"."isnt_empty"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    res  BOOLEAN := FALSE;
    rec  RECORD;
BEGIN
    -- Find extra records.
    FOR rec in EXECUTE _query($1) LOOP
        res := TRUE;
        EXIT;
    END LOOP;

    RETURN ok(res, $2);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_partitioned
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_partitioned"(name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_partitioned"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists('p', $1), $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_partitioned
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_partitioned"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_partitioned"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _rexists('p', $1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_partitioned
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_partitioned"(name);
CREATE OR REPLACE FUNCTION "public"."isnt_partitioned"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _rexists('p', $1),
        'Table ' || quote_ident($1) || ' should not be partitioned'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_partitioned
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_partitioned"(name, name);
CREATE OR REPLACE FUNCTION "public"."isnt_partitioned"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _rexists('p', $1, $2),
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should not be partitioned'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_strict"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_strict"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, NOT _strict($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_strict"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."isnt_strict"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _strict($1, $2, $3),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should not be strict'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_strict"(name, name);
CREATE OR REPLACE FUNCTION "public"."isnt_strict"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _strict($1, $2),
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '() should not be strict'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_strict"(name, _name);
CREATE OR REPLACE FUNCTION "public"."isnt_strict"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok(
        NOT _strict($1, $2),
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should not be strict'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_strict"(name);
CREATE OR REPLACE FUNCTION "public"."isnt_strict"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( NOT _strict($1), 'Function ' || quote_ident($1) || '() should not be strict' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_strict"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_strict"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, NOT _strict($1, $2, $3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_strict"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_strict"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, NOT _strict($1, $2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_strict
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_strict"(name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_strict"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, NOT _strict($1), $2 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_superuser
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_superuser"(name);
CREATE OR REPLACE FUNCTION "public"."isnt_superuser"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT isnt_superuser( $1, 'User ' || quote_ident($1) || ' should not be a super user' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for isnt_superuser
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."isnt_superuser"(name, text);
CREATE OR REPLACE FUNCTION "public"."isnt_superuser"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    is_super boolean := _is_super($1);
BEGIN
    IF is_super IS NULL THEN
        RETURN fail( $2 ) || E'\n' || diag( '    User ' || quote_ident($1) || ' does not exist') ;
    END IF;
    RETURN ok( NOT is_super, $2 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for language_is_trusted
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."language_is_trusted"(name);
CREATE OR REPLACE FUNCTION "public"."language_is_trusted"(name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT language_is_trusted($1, 'Procedural language ' || quote_ident($1) || ' should be trusted' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for language_is_trusted
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."language_is_trusted"(name, text);
CREATE OR REPLACE FUNCTION "public"."language_is_trusted"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    is_trusted boolean := _is_trusted($1);
BEGIN
    IF is_trusted IS NULL THEN
        RETURN fail( $2 ) || E'\n' || diag( '    Procedural language ' || quote_ident($1) || ' does not exist') ;
    END IF;
    RETURN ok( is_trusted, $2 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for language_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."language_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."language_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_language_owner($1);
BEGIN
    -- Make sure the language exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Language ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for language_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."language_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."language_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT language_owner_is(
        $1, $2,
        'Language ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for language_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."language_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."language_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT language_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on language ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for language_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."language_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."language_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_lang_privs( $2, quote_ident($1) );
BEGIN
    IF grants[1] = 'undefined_language' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Language ' || quote_ident($1) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for languages_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."languages_are"(_name);
CREATE OR REPLACE FUNCTION "public"."languages_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT languages_are( $1, 'There should be the correct procedural languages' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for languages_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."languages_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."languages_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'languages',
        ARRAY(
            SELECT lanname
              FROM pg_catalog.pg_language
             WHERE lanispl
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT lanname
              FROM pg_catalog.pg_language
             WHERE lanispl
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for lives_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lives_ok"(text);
CREATE OR REPLACE FUNCTION "public"."lives_ok"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT lives_ok( $1, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for lives_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."lives_ok"(text, text);
CREATE OR REPLACE FUNCTION "public"."lives_ok"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    code  TEXT := _query($1);
    descr ALIAS FOR $2;
    detail  text;
    hint    text;
    context text;
    schname text;
    tabname text;
    colname text;
    chkname text;
    typname text;
BEGIN
    EXECUTE code;
    RETURN ok( TRUE, descr );
EXCEPTION WHEN OTHERS OR ASSERT_FAILURE THEN
    -- There should have been no exception.
    GET STACKED DIAGNOSTICS
        detail  = PG_EXCEPTION_DETAIL,
        hint    = PG_EXCEPTION_HINT,
        context = PG_EXCEPTION_CONTEXT,
        schname = SCHEMA_NAME,
        tabname = TABLE_NAME,
        colname = COLUMN_NAME,
        chkname = CONSTRAINT_NAME,
        typname = PG_DATATYPE_NAME;
    RETURN ok( FALSE, descr ) || E'\n' || diag(
           '    died: ' || _error_diag(SQLSTATE, SQLERRM, detail, hint, context, schname, tabname, colname, chkname, typname)
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for matches
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."matches"(anyelement, text);
CREATE OR REPLACE FUNCTION "public"."matches"(anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _alike( $1 ~ $2, $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for matches
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."matches"(anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."matches"(anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _alike( $1 ~ $2, $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for materialized_view_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."materialized_view_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."materialized_view_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT materialized_view_owner_is(
        $1, $2,
        'Materialized view ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for materialized_view_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."materialized_view_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."materialized_view_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('m'::char, $1, $2);
BEGIN
    -- Make sure the materialized view exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Materialized view ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for materialized_view_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."materialized_view_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."materialized_view_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT materialized_view_owner_is(
        $1, $2, $3,
        'Materialized view ' || quote_ident($1) || '.' || quote_ident($2) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for materialized_view_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."materialized_view_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."materialized_view_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('m'::char, $1);
BEGIN
    -- Make sure the materialized view exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Materialized view ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for materialized_views_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."materialized_views_are"(_name);
CREATE OR REPLACE FUNCTION "public"."materialized_views_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'Materialized views', _extras('m', $1), _missing('m', $1),
        'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct materialized views'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for materialized_views_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."materialized_views_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."materialized_views_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'Materialized views', _extras('m', $1, $2), _missing('m', $1, $2),
        'Schema ' || quote_ident($1) || ' should have the correct materialized views'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for materialized_views_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."materialized_views_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."materialized_views_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'Materialized views', _extras('m', $1), _missing('m', $1), $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for materialized_views_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."materialized_views_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."materialized_views_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'Materialized views', _extras('m', $1, $2), _missing('m', $1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for no_plan
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."no_plan"();
CREATE OR REPLACE FUNCTION "public"."no_plan"()
  RETURNS SETOF "pg_catalog"."bool" AS $BODY$
BEGIN
    PERFORM plan(0);
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE STRICT
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for num_failed
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."num_failed"();
CREATE OR REPLACE FUNCTION "public"."num_failed"()
  RETURNS "pg_catalog"."int4" AS $BODY$
    SELECT _get('failed');
$BODY$
  LANGUAGE sql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ok"(bool);
CREATE OR REPLACE FUNCTION "public"."ok"(bool)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( $1, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."ok"(bool, text);
CREATE OR REPLACE FUNCTION "public"."ok"(bool, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
   aok      ALIAS FOR $1;
   descr    text := $2;
   test_num INTEGER;
   todo_why TEXT;
   ok       BOOL;
BEGIN
   todo_why := _todo();
   ok       := CASE
       WHEN aok = TRUE THEN aok
       WHEN todo_why IS NULL THEN COALESCE(aok, false)
       ELSE TRUE
    END;
    IF _get('plan') IS NULL THEN
        RAISE EXCEPTION 'You tried to run a test without a plan! Gotta have a plan';
    END IF;

    test_num := add_result(
        ok,
        COALESCE(aok, false),
        descr,
        CASE WHEN todo_why IS NULL THEN '' ELSE 'todo' END,
        COALESCE(todo_why, '')
    );

    RETURN (CASE aok WHEN TRUE THEN '' ELSE 'not ' END)
           || 'ok ' || _set( 'curr_test', test_num )
           || CASE descr WHEN '' THEN '' ELSE COALESCE( ' - ' || substr(diag( descr ), 3), '' ) END
           || COALESCE( ' ' || diag( 'TODO ' || todo_why ), '')
           || CASE aok WHEN TRUE THEN '' ELSE E'\n' ||
                diag('Failed ' ||
                CASE WHEN todo_why IS NULL THEN '' ELSE '(TODO) ' END ||
                'test ' || test_num ||
                CASE descr WHEN '' THEN '' ELSE COALESCE(': "' || descr || '"', '') END ) ||
                CASE WHEN aok IS NULL THEN E'\n' || diag('    (test result was NULL)') ELSE '' END
           END;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for opclass_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."opclass_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."opclass_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_opclass_owner($1, $2);
BEGIN
    -- Make sure the opclass exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Operator class ' || quote_ident($1) || '.' || quote_ident($2)
            || ' not found'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for opclass_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."opclass_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."opclass_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_opclass_owner($1);
BEGIN
    -- Make sure the opclass exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Operator class ' || quote_ident($1) || ' not found'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for opclass_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."opclass_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."opclass_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT opclass_owner_is(
        $1, $2,
        'Operator class ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for opclass_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."opclass_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."opclass_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT opclass_owner_is(
        $1, $2, $3,
        'Operator class ' || quote_ident($1) || '.' || quote_ident($2) ||
        ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for opclasses_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."opclasses_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."opclasses_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'operator classes',
        ARRAY(
            SELECT oc.opcname
              FROM pg_catalog.pg_opclass oc
              JOIN pg_catalog.pg_namespace n ON oc.opcnamespace = n.oid
             WHERE n.nspname  = $1
            EXCEPT
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
        ),
        ARRAY(
            SELECT $2[i]
               FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT oc.opcname
              FROM pg_catalog.pg_opclass oc
              JOIN pg_catalog.pg_namespace n ON oc.opcnamespace = n.oid
             WHERE n.nspname  = $1
        ),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for opclasses_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."opclasses_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."opclasses_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'operator classes',
        ARRAY(
            SELECT oc.opcname
              FROM pg_catalog.pg_opclass oc
              JOIN pg_catalog.pg_namespace n ON oc.opcnamespace = n.oid
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND pg_catalog.pg_opclass_is_visible(oc.oid)
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
               FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT oc.opcname
              FROM pg_catalog.pg_opclass oc
              JOIN pg_catalog.pg_namespace n ON oc.opcnamespace = n.oid
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND pg_catalog.pg_opclass_is_visible(oc.oid)
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for opclasses_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."opclasses_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."opclasses_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT opclasses_are( $1, $2, 'Schema ' || quote_ident($1) || ' should have the correct operator classes' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for opclasses_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."opclasses_are"(_name);
CREATE OR REPLACE FUNCTION "public"."opclasses_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT opclasses_are( $1, 'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct operator classes' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for operators_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."operators_are"(_text);
CREATE OR REPLACE FUNCTION "public"."operators_are"(_text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT operators_are($1, 'There should be the correct operators')
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for operators_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."operators_are"(_text, text);
CREATE OR REPLACE FUNCTION "public"."operators_are"(_text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _areni(
        'operators',
        ARRAY(
            SELECT display_oper(o.oprname, o.oid) || ' RETURNS ' || o.oprresult::regtype
              FROM pg_catalog.pg_operator o
              JOIN pg_catalog.pg_namespace n ON o.oprnamespace = n.oid
             WHERE pg_catalog.pg_operator_is_visible(o.oid)
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT display_oper(o.oprname, o.oid) || ' RETURNS ' || o.oprresult::regtype
              FROM pg_catalog.pg_operator o
              JOIN pg_catalog.pg_namespace n ON o.oprnamespace = n.oid
             WHERE pg_catalog.pg_operator_is_visible(o.oid)
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for operators_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."operators_are"(name, _text);
CREATE OR REPLACE FUNCTION "public"."operators_are"(name, _text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT operators_are($1, $2, 'Schema ' || quote_ident($1) || ' should have the correct operators' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for operators_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."operators_are"(name, _text, text);
CREATE OR REPLACE FUNCTION "public"."operators_are"(name, _text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _areni(
        'operators',
        ARRAY(
            SELECT display_oper(o.oprname, o.oid) || ' RETURNS ' || o.oprresult::regtype
              FROM pg_catalog.pg_operator o
              JOIN pg_catalog.pg_namespace n ON o.oprnamespace = n.oid
             WHERE n.nspname = $1
            EXCEPT
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
        ),
        ARRAY(
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT display_oper(o.oprname, o.oid) || ' RETURNS ' || o.oprresult::regtype
              FROM pg_catalog.pg_operator o
              JOIN pg_catalog.pg_namespace n ON o.oprnamespace = n.oid
             WHERE n.nspname = $1
        ),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for os_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."os_name"();
CREATE OR REPLACE FUNCTION "public"."os_name"()
  RETURNS "pg_catalog"."text" AS $BODY$SELECT 'darwin'::text;$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for partitions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."partitions_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."partitions_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT partitions_are(
        $1, $2, $3,
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should have the correct partitions'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for partitions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."partitions_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."partitions_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'partitions',
        ARRAY(SELECT _parts($1) EXCEPT SELECT unnest($2)),
        ARRAY(SELECT unnest($2) EXCEPT SELECT _parts($1)),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for partitions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."partitions_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."partitions_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT partitions_are(
        $1, $2,
        'Table ' || quote_ident($1) || ' should have the correct partitions'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for partitions_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."partitions_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."partitions_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'partitions',
        ARRAY(SELECT _parts($1, $2) EXCEPT SELECT unnest($3)),
        ARRAY(SELECT unnest($3) EXCEPT SELECT _parts($1, $2)),
        $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for pass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pass"(text);
CREATE OR REPLACE FUNCTION "public"."pass"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( TRUE, $1 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for pass
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pass"();
CREATE OR REPLACE FUNCTION "public"."pass"()
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( TRUE, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for performs_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."performs_ok"(text, numeric);
CREATE OR REPLACE FUNCTION "public"."performs_ok"(text, numeric)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT performs_ok(
        $1, $2, 'Should run in less than ' || $2 || ' ms'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for performs_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."performs_ok"(text, numeric, text);
CREATE OR REPLACE FUNCTION "public"."performs_ok"(text, numeric, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    query     TEXT := _query($1);
    max_time  ALIAS FOR $2;
    descr     ALIAS FOR $3;
    starts_at TEXT;
    act_time  NUMERIC;
BEGIN
    starts_at := timeofday();
    EXECUTE query;
    act_time := extract( millisecond from timeofday()::timestamptz - starts_at::timestamptz);
    IF act_time < max_time THEN RETURN ok(TRUE, descr); END IF;
    RETURN ok( FALSE, descr ) || E'\n' || diag(
           '      runtime: ' || act_time || ' ms' ||
        E'\n      exceeds: ' || max_time || ' ms'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for performs_within
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."performs_within"(text, numeric, numeric, text);
CREATE OR REPLACE FUNCTION "public"."performs_within"(text, numeric, numeric, text)
  RETURNS "pg_catalog"."text" AS $BODY$
SELECT performs_within(
          $1, $2, $3, 10, $4
        );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for performs_within
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."performs_within"(text, numeric, numeric);
CREATE OR REPLACE FUNCTION "public"."performs_within"(text, numeric, numeric)
  RETURNS "pg_catalog"."text" AS $BODY$
SELECT performs_within(
          $1, $2, $3, 10,
          'Should run within ' || $2 || ' +/- ' || $3 || ' ms');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for performs_within
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."performs_within"(text, numeric, numeric, int4);
CREATE OR REPLACE FUNCTION "public"."performs_within"(text, numeric, numeric, int4)
  RETURNS "pg_catalog"."text" AS $BODY$
SELECT performs_within(
          $1, $2, $3, $4,
          'Should run within ' || $2 || ' +/- ' || $3 || ' ms');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for performs_within
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."performs_within"(text, numeric, numeric, int4, text);
CREATE OR REPLACE FUNCTION "public"."performs_within"(text, numeric, numeric, int4, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    query          TEXT := _query($1);
    expected_avg   ALIAS FOR $2;
    within         ALIAS FOR $3;
    iterations     ALIAS FOR $4;
    descr          ALIAS FOR $5;
    avg_time       NUMERIC;
BEGIN
  SELECT avg(a_time) FROM _time_trials(query, iterations, 0.8) t1 INTO avg_time;
  IF abs(avg_time - expected_avg) < within THEN RETURN ok(TRUE, descr); END IF;
  RETURN ok(FALSE, descr) || E'\n' || diag(' average runtime: ' || avg_time || ' ms'
     || E'\n desired average: ' || expected_avg || ' +/- ' || within || ' ms'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for pg_version
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pg_version"();
CREATE OR REPLACE FUNCTION "public"."pg_version"()
  RETURNS "pg_catalog"."text" AS $BODY$SELECT current_setting('server_version')$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for pg_version_num
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pg_version_num"();
CREATE OR REPLACE FUNCTION "public"."pg_version_num"()
  RETURNS "pg_catalog"."int4" AS $BODY$
    SELECT substring(s.a[1] FROM '[[:digit:]]+')::int * 10000
           + COALESCE(substring(s.a[2] FROM '[[:digit:]]+')::int, 0) * 100
           + COALESCE(substring(s.a[3] FROM '[[:digit:]]+')::int, 0)
      FROM (
          SELECT string_to_array(current_setting('server_version'), '.') AS a
      ) AS s;
$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for pgp_armor_headers
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_armor_headers"(IN text, OUT "key" text, OUT "value" text);
CREATE OR REPLACE FUNCTION "public"."pgp_armor_headers"(IN text, OUT "key" text, OUT "value" text)
  RETURNS SETOF "pg_catalog"."record" AS '$libdir/pgcrypto', 'pgp_armor_headers'
  LANGUAGE c IMMUTABLE STRICT
  COST 1
  ROWS 1000;

-- ----------------------------
-- Function structure for pgp_key_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_key_id"(bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_key_id"(bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_key_id_w'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt"(bytea, bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt"(bytea, bytea)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_decrypt_bytea"(bytea, bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_decrypt_bytea"(bytea, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt"(text, bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_encrypt"(text, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt"(text, bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_encrypt"(text, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt_bytea"(bytea, bytea);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_encrypt_bytea"(bytea, bytea)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_pub_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_pub_encrypt_bytea"(bytea, bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_pub_encrypt_bytea"(bytea, bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_pub_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt"(bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_decrypt"(bytea, text, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt"(bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_decrypt"(bytea, text)
  RETURNS "pg_catalog"."text" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_text'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt_bytea"(bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_decrypt_bytea"(bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_decrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_decrypt_bytea"(bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_decrypt_bytea"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_decrypt_bytea'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_encrypt"(text, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt"(text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_encrypt"(text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_text'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt_bytea"(bytea, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_encrypt_bytea"(bytea, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgp_sym_encrypt_bytea
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgp_sym_encrypt_bytea"(bytea, text, text);
CREATE OR REPLACE FUNCTION "public"."pgp_sym_encrypt_bytea"(bytea, text, text)
  RETURNS "pg_catalog"."bytea" AS '$libdir/pgcrypto', 'pgp_sym_encrypt_bytea'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for pgtap_version
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pgtap_version"();
CREATE OR REPLACE FUNCTION "public"."pgtap_version"()
  RETURNS "pg_catalog"."numeric" AS $BODY$SELECT 0.98;$BODY$
  LANGUAGE sql IMMUTABLE
  COST 100;

-- ----------------------------
-- Function structure for plan
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."plan"(int4);
CREATE OR REPLACE FUNCTION "public"."plan"(int4)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    rcount INTEGER;
BEGIN
    BEGIN
        EXECUTE '
            CREATE TEMP SEQUENCE __tcache___id_seq;
            CREATE TEMP TABLE __tcache__ (
                id    INTEGER NOT NULL DEFAULT nextval(''__tcache___id_seq''),
                label TEXT    NOT NULL,
                value INTEGER NOT NULL,
                note  TEXT    NOT NULL DEFAULT ''''
            );
            CREATE UNIQUE INDEX __tcache___key ON __tcache__(id);
            GRANT ALL ON TABLE __tcache__ TO PUBLIC;
            GRANT ALL ON TABLE __tcache___id_seq TO PUBLIC;

            CREATE TEMP SEQUENCE __tresults___numb_seq;
            GRANT ALL ON TABLE __tresults___numb_seq TO PUBLIC;
        ';

    EXCEPTION WHEN duplicate_table THEN
        -- Raise an exception if there's already a plan.
        EXECUTE 'SELECT TRUE FROM __tcache__ WHERE label = ''plan''';
      GET DIAGNOSTICS rcount = ROW_COUNT;
        IF rcount > 0 THEN
           RAISE EXCEPTION 'You tried to plan twice!';
        END IF;
    END;

    -- Save the plan and return.
    PERFORM _set('plan', $1 );
    PERFORM _set('failed', 0 );
    RETURN '1..' || $1;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE STRICT
  COST 100;

-- ----------------------------
-- Function structure for relation_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."relation_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."relation_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner($1);
BEGIN
    -- Make sure the relation exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Relation ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for relation_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."relation_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."relation_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT relation_owner_is(
        $1, $2,
        'Relation ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for relation_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."relation_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."relation_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner($1, $2);
BEGIN
    -- Make sure the relation exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Relation ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for relation_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."relation_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."relation_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT relation_owner_is(
        $1, $2, $3,
        'Relation ' || quote_ident($1) || '.' || quote_ident($2) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(text, anyarray);
CREATE OR REPLACE FUNCTION "public"."results_eq"(text, anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_eq( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(text, refcursor);
CREATE OR REPLACE FUNCTION "public"."results_eq"(text, refcursor)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_eq( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(refcursor, text);
CREATE OR REPLACE FUNCTION "public"."results_eq"(refcursor, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_eq( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(refcursor, anyarray, text);
CREATE OR REPLACE FUNCTION "public"."results_eq"(refcursor, anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    want REFCURSOR;
    res  TEXT;
BEGIN
    OPEN want FOR SELECT $2[i]
    FROM generate_series(array_lower($2, 1), array_upper($2, 1)) s(i);
    res := results_eq($1, want, $3);
    CLOSE want;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(refcursor, text, text);
CREATE OR REPLACE FUNCTION "public"."results_eq"(refcursor, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    want REFCURSOR;
    res  TEXT;
BEGIN
    OPEN want FOR EXECUTE _query($2);
    res := results_eq($1, want, $3);
    CLOSE want;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(refcursor, refcursor, text);
CREATE OR REPLACE FUNCTION "public"."results_eq"(refcursor, refcursor, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have       ALIAS FOR $1;
    want       ALIAS FOR $2;
    have_rec   RECORD;
    want_rec   RECORD;
    have_found BOOLEAN;
    want_found BOOLEAN;
    rownum     INTEGER := 1;
BEGIN
    FETCH have INTO have_rec;
    have_found := FOUND;
    FETCH want INTO want_rec;
    want_found := FOUND;
    WHILE have_found OR want_found LOOP
        IF have_rec IS DISTINCT FROM want_rec OR have_found <> want_found THEN
            RETURN ok( false, $3 ) || E'\n' || diag(
                '    Results differ beginning at row ' || rownum || E':\n' ||
                '        have: ' || CASE WHEN have_found THEN have_rec::text ELSE 'NULL' END || E'\n' ||
                '        want: ' || CASE WHEN want_found THEN want_rec::text ELSE 'NULL' END
            );
        END IF;
        rownum = rownum + 1;
        FETCH have INTO have_rec;
        have_found := FOUND;
        FETCH want INTO want_rec;
        want_found := FOUND;
    END LOOP;

    RETURN ok( true, $3 );
EXCEPTION
    WHEN datatype_mismatch THEN
        RETURN ok( false, $3 ) || E'\n' || diag(
            E'    Number of columns or their types differ between the queries' ||
            CASE WHEN have_rec::TEXT = want_rec::text THEN '' ELSE E':\n' ||
                '        have: ' || CASE WHEN have_found THEN have_rec::text ELSE 'NULL' END || E'\n' ||
                '        want: ' || CASE WHEN want_found THEN want_rec::text ELSE 'NULL' END
            END
        );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(refcursor, refcursor);
CREATE OR REPLACE FUNCTION "public"."results_eq"(refcursor, refcursor)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_eq( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(text, refcursor, text);
CREATE OR REPLACE FUNCTION "public"."results_eq"(text, refcursor, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have REFCURSOR;
    res  TEXT;
BEGIN
    OPEN have FOR EXECUTE _query($1);
    res := results_eq(have, $2, $3);
    CLOSE have;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."results_eq"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have REFCURSOR;
    want REFCURSOR;
    res  TEXT;
BEGIN
    OPEN have FOR EXECUTE _query($1);
    OPEN want FOR EXECUTE _query($2);
    res := results_eq(have, want, $3);
    CLOSE have;
    CLOSE want;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(text, text);
CREATE OR REPLACE FUNCTION "public"."results_eq"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_eq( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(text, anyarray, text);
CREATE OR REPLACE FUNCTION "public"."results_eq"(text, anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have REFCURSOR;
    want REFCURSOR;
    res  TEXT;
BEGIN
    OPEN have FOR EXECUTE _query($1);
    OPEN want FOR SELECT $2[i]
    FROM generate_series(array_lower($2, 1), array_upper($2, 1)) s(i);
    res := results_eq(have, want, $3);
    CLOSE have;
    CLOSE want;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_eq"(refcursor, anyarray);
CREATE OR REPLACE FUNCTION "public"."results_eq"(refcursor, anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_eq( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(refcursor, text, text);
CREATE OR REPLACE FUNCTION "public"."results_ne"(refcursor, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    want REFCURSOR;
    res  TEXT;
BEGIN
    OPEN want FOR EXECUTE _query($2);
    res := results_ne($1, want, $3);
    CLOSE want;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(text, refcursor, text);
CREATE OR REPLACE FUNCTION "public"."results_ne"(text, refcursor, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have REFCURSOR;
    res  TEXT;
BEGIN
    OPEN have FOR EXECUTE _query($1);
    res := results_ne(have, $2, $3);
    CLOSE have;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(text, anyarray);
CREATE OR REPLACE FUNCTION "public"."results_ne"(text, anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_ne( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."results_ne"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have REFCURSOR;
    want REFCURSOR;
    res  TEXT;
BEGIN
    OPEN have FOR EXECUTE _query($1);
    OPEN want FOR EXECUTE _query($2);
    res := results_ne(have, want, $3);
    CLOSE have;
    CLOSE want;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(refcursor, refcursor, text);
CREATE OR REPLACE FUNCTION "public"."results_ne"(refcursor, refcursor, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have       ALIAS FOR $1;
    want       ALIAS FOR $2;
    have_rec   RECORD;
    want_rec   RECORD;
    have_found BOOLEAN;
    want_found BOOLEAN;
BEGIN
    FETCH have INTO have_rec;
    have_found := FOUND;
    FETCH want INTO want_rec;
    want_found := FOUND;
    WHILE have_found OR want_found LOOP
        IF have_rec IS DISTINCT FROM want_rec OR have_found <> want_found THEN
            RETURN ok( true, $3 );
        ELSE
            FETCH have INTO have_rec;
            have_found := FOUND;
            FETCH want INTO want_rec;
            want_found := FOUND;
        END IF;
    END LOOP;
    RETURN ok( false, $3 );
EXCEPTION
    WHEN datatype_mismatch THEN
        RETURN ok( false, $3 ) || E'\n' || diag(
            E'    Columns differ between queries:\n' ||
            '        have: ' || CASE WHEN have_found THEN have_rec::text ELSE 'NULL' END || E'\n' ||
            '        want: ' || CASE WHEN want_found THEN want_rec::text ELSE 'NULL' END
        );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(text, refcursor);
CREATE OR REPLACE FUNCTION "public"."results_ne"(text, refcursor)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_ne( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(refcursor, text);
CREATE OR REPLACE FUNCTION "public"."results_ne"(refcursor, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_ne( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(text, text);
CREATE OR REPLACE FUNCTION "public"."results_ne"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_ne( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(refcursor, refcursor);
CREATE OR REPLACE FUNCTION "public"."results_ne"(refcursor, refcursor)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_ne( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(text, anyarray, text);
CREATE OR REPLACE FUNCTION "public"."results_ne"(text, anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    have REFCURSOR;
    want REFCURSOR;
    res  TEXT;
BEGIN
    OPEN have FOR EXECUTE _query($1);
    OPEN want FOR SELECT $2[i]
    FROM generate_series(array_lower($2, 1), array_upper($2, 1)) s(i);
    res := results_ne(have, want, $3);
    CLOSE have;
    CLOSE want;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(refcursor, anyarray, text);
CREATE OR REPLACE FUNCTION "public"."results_ne"(refcursor, anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    want REFCURSOR;
    res  TEXT;
BEGIN
    OPEN want FOR SELECT $2[i]
    FROM generate_series(array_lower($2, 1), array_upper($2, 1)) s(i);
    res := results_ne($1, want, $3);
    CLOSE want;
    RETURN res;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for results_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."results_ne"(refcursor, anyarray);
CREATE OR REPLACE FUNCTION "public"."results_ne"(refcursor, anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT results_ne( $1, $2, NULL::text );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for roles_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."roles_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."roles_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'roles',
        ARRAY(
            SELECT rolname
              FROM pg_catalog.pg_roles
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT rolname
              FROM pg_catalog.pg_roles
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for roles_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."roles_are"(_name);
CREATE OR REPLACE FUNCTION "public"."roles_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT roles_are( $1, 'There should be the correct roles' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for row_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."row_eq"(text, anyelement);
CREATE OR REPLACE FUNCTION "public"."row_eq"(text, anyelement)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT row_eq($1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for row_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."row_eq"(text, anyelement, text);
CREATE OR REPLACE FUNCTION "public"."row_eq"(text, anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    rec    RECORD;
BEGIN
    EXECUTE _query($1) INTO rec;
    IF NOT rec IS DISTINCT FROM $2 THEN RETURN ok(true, $3); END IF;
    RETURN ok(false, $3 ) || E'\n' || diag(
           '        have: ' || CASE WHEN rec IS NULL THEN 'NULL' ELSE rec::text END ||
        E'\n        want: ' || CASE WHEN $2  IS NULL THEN 'NULL' ELSE $2::text  END
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rule_is_instead
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rule_is_instead"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."rule_is_instead"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    is_it boolean := _is_instead($1, $2, $3);
BEGIN
    IF is_it IS NOT NULL THEN RETURN ok( is_it, $4 ); END IF;
    RETURN ok( FALSE, $4 ) || E'\n' || diag(
        '    Rule ' || quote_ident($3) || ' does not exist'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rule_is_instead
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rule_is_instead"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."rule_is_instead"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    is_it boolean := _is_instead($1, $2);
BEGIN
    IF is_it IS NOT NULL THEN RETURN ok( is_it, $3 ); END IF;
    RETURN ok( FALSE, $3 ) || E'\n' || diag(
        '    Rule ' || quote_ident($2) || ' does not exist'
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rule_is_instead
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rule_is_instead"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."rule_is_instead"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT rule_is_instead( $1, $2, $3, 'Rule ' || quote_ident($3) || ' on relation ' || quote_ident($1) || '.' || quote_ident($2) || ' should be an INSTEAD rule' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rule_is_instead
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rule_is_instead"(name, name);
CREATE OR REPLACE FUNCTION "public"."rule_is_instead"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT rule_is_instead($1, $2, 'Rule ' || quote_ident($2) || ' on relation ' || quote_ident($1) || ' should be an INSTEAD rule' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rule_is_on
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rule_is_on"(name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."rule_is_on"(name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    want char := _contract_on($3);
    have char := _rule_on($1, $2);
BEGIN
    IF have IS NOT NULL THEN
        RETURN is( _expand_on(have), _expand_on(want), $4 );
    END IF;

    RETURN ok( false, $4 ) || E'\n' || diag(
        '    Rule ' || quote_ident($2) || ' does not exist on '
        || quote_ident($1)
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rule_is_on
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rule_is_on"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."rule_is_on"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT rule_is_on(
        $1, $2, $3,
        'Rule ' || quote_ident($2) || ' should be on '
        || _expand_on(_contract_on($3)::char) || ' to ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rule_is_on
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rule_is_on"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."rule_is_on"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT rule_is_on(
        $1, $2, $3, $4,
        'Rule ' || quote_ident($3) || ' should be on ' || _expand_on(_contract_on($4)::char)
        || ' to ' || quote_ident($1) || '.' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rule_is_on
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rule_is_on"(name, name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."rule_is_on"(name, name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    want char := _contract_on($4);
    have char := _rule_on($1, $2, $3);
BEGIN
    IF have IS NOT NULL THEN
        RETURN is( _expand_on(have), _expand_on(want), $5 );
    END IF;

    RETURN ok( false, $5 ) || E'\n' || diag(
        '    Rule ' || quote_ident($3) || ' does not exist on '
        || quote_ident($1) || '.' || quote_ident($2)
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rules_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rules_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."rules_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT rules_are( $1, $2, 'Relation ' || quote_ident($1) || ' should have the correct rules' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rules_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rules_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."rules_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'rules',
        ARRAY(
            SELECT r.rulename
              FROM pg_catalog.pg_rewrite r
              JOIN pg_catalog.pg_class c     ON c.oid = r.ev_class
              JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid
             WHERE c.relname = $2
               AND n.nspname = $1
            EXCEPT
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
        ),
        ARRAY(
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
            EXCEPT
            SELECT r.rulename
              FROM pg_catalog.pg_rewrite r
              JOIN pg_catalog.pg_class c     ON c.oid = r.ev_class
              JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid
             WHERE c.relname = $2
               AND n.nspname = $1
        ),
        $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rules_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rules_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."rules_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT rules_are( $1, $2, $3, 'Relation ' || quote_ident($1) || '.' || quote_ident($2) || ' should have the correct rules' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for rules_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rules_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."rules_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'rules',
        ARRAY(
            SELECT r.rulename
              FROM pg_catalog.pg_rewrite r
              JOIN pg_catalog.pg_class c     ON c.oid = r.ev_class
              JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid
             WHERE c.relname = $1
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND pg_catalog.pg_table_is_visible(c.oid)
            EXCEPT
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
        ),
        ARRAY(
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT r.rulename
              FROM pg_catalog.pg_rewrite r
              JOIN pg_catalog.pg_class c     ON c.oid = r.ev_class
              JOIN pg_catalog.pg_namespace n ON c.relnamespace = n.oid
               AND c.relname = $1
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND pg_catalog.pg_table_is_visible(c.oid)
        ),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for runtests
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."runtests"(name, text);
CREATE OR REPLACE FUNCTION "public"."runtests"(name, text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM _runner(
        findfuncs( $1, '^startup' ),
        findfuncs( $1, '^shutdown' ),
        findfuncs( $1, '^setup' ),
        findfuncs( $1, '^teardown' ),
        findfuncs( $1, $2, '^(startup|shutdown|setup|teardown)' )
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for runtests
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."runtests"(text);
CREATE OR REPLACE FUNCTION "public"."runtests"(text)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM _runner(
        findfuncs( '^startup' ),
        findfuncs( '^shutdown' ),
        findfuncs( '^setup' ),
        findfuncs( '^teardown' ),
        findfuncs( $1, '^(startup|shutdown|setup|teardown)' )
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for runtests
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."runtests"();
CREATE OR REPLACE FUNCTION "public"."runtests"()
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM runtests( '^test' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for runtests
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."runtests"(name);
CREATE OR REPLACE FUNCTION "public"."runtests"(name)
  RETURNS SETOF "pg_catalog"."text" AS $BODY$
    SELECT * FROM runtests( $1, '^test' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for schema_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."schema_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."schema_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT schema_owner_is(
        $1, $2,
        'Schema ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for schema_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."schema_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."schema_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_schema_owner($1);
BEGIN
    -- Make sure the schema exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Schema ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for schema_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."schema_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."schema_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_schema_privs( $2, $1::TEXT );
BEGIN
    IF grants[1] = 'invalid_schema_name' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Schema ' || quote_ident($1) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for schema_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."schema_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."schema_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT schema_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on schema ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for schemas_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."schemas_are"(_name);
CREATE OR REPLACE FUNCTION "public"."schemas_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT schemas_are( $1, 'There should be the correct schemas' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for schemas_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."schemas_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."schemas_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'schemas',
        ARRAY(
            SELECT nspname
              FROM pg_catalog.pg_namespace
             WHERE nspname NOT LIKE 'pg_%'
               AND nspname <> 'information_schema'
             EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT nspname
              FROM pg_catalog.pg_namespace
             WHERE nspname NOT LIKE 'pg_%'
               AND nspname <> 'information_schema'
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequence_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequence_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."sequence_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT sequence_owner_is(
        $1, $2, $3,
        'Sequence ' || quote_ident($1) || '.' || quote_ident($2) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequence_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequence_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."sequence_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('S'::char, $1, $2);
BEGIN
    -- Make sure the sequence exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Sequence ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequence_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequence_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."sequence_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('S'::char, $1);
BEGIN
    -- Make sure the sequence exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Sequence ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequence_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequence_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."sequence_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT sequence_owner_is(
        $1, $2,
        'Sequence ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequence_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequence_privs_are"(name, name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."sequence_privs_are"(name, name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_sequence_privs( $3, quote_ident($1) || '.' || quote_ident($2) );
BEGIN
    IF grants[1] = 'undefined_table' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Sequence ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Role ' || quote_ident($3) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $4, $5);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequence_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequence_privs_are"(name, name, name, _name);
CREATE OR REPLACE FUNCTION "public"."sequence_privs_are"(name, name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT sequence_privs_are(
        $1, $2, $3, $4,
        'Role ' || quote_ident($3) || ' should be granted '
            || CASE WHEN $4[1] IS NULL THEN 'no privileges' ELSE array_to_string($4, ', ') END
            || ' on sequence '|| quote_ident($1) || '.' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequence_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequence_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."sequence_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT sequence_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on sequence ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequence_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequence_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."sequence_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_sequence_privs( $2, quote_ident($1) );
BEGIN
    IF grants[1] = 'undefined_table' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Sequence ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequences_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequences_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."sequences_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'sequences', _extras('S', $1, $2), _missing('S', $1, $2),
        'Schema ' || quote_ident($1) || ' should have the correct sequences'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequences_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequences_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."sequences_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'sequences', _extras('S', $1), _missing('S', $1), $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequences_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequences_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."sequences_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'sequences', _extras('S', $1, $2), _missing('S', $1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sequences_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sequences_are"(_name);
CREATE OR REPLACE FUNCTION "public"."sequences_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'sequences', _extras('S', $1), _missing('S', $1),
        'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct sequences'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for server_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."server_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."server_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_server_privs( $2, $1::TEXT );
BEGIN
    IF grants[1] = 'undefined_server' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Server ' || quote_ident($1) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for server_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."server_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."server_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT server_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on server ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_eq"(text, anyarray, text);
CREATE OR REPLACE FUNCTION "public"."set_eq"(text, anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, $3, '' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_eq"(text, anyarray);
CREATE OR REPLACE FUNCTION "public"."set_eq"(text, anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, NULL::text, '' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_eq"(text, text);
CREATE OR REPLACE FUNCTION "public"."set_eq"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, NULL::text, '' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_eq
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_eq"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."set_eq"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, $3, '' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_has
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_has"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."set_has"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, $3, 'EXCEPT', 'Missing' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_has
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_has"(text, text);
CREATE OR REPLACE FUNCTION "public"."set_has"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, NULL::TEXT, 'EXCEPT', 'Missing' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_hasnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_hasnt"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."set_hasnt"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, $3, 'INTERSECT', 'Extra' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_hasnt
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_hasnt"(text, text);
CREATE OR REPLACE FUNCTION "public"."set_hasnt"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relcomp( $1, $2, NULL::TEXT, 'INTERSECT', 'Extra' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_ne"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."set_ne"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relne( $1, $2, $3, '' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_ne"(text, text);
CREATE OR REPLACE FUNCTION "public"."set_ne"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relne( $1, $2, NULL::text, '' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_ne"(text, anyarray);
CREATE OR REPLACE FUNCTION "public"."set_ne"(text, anyarray)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relne( $1, $2, NULL::text, '' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for set_ne
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_ne"(text, anyarray, text);
CREATE OR REPLACE FUNCTION "public"."set_ne"(text, anyarray, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _relne( $1, $2, $3, '' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for sign
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."sign"("payload" json, "secret" text, "algorithm" text='HS256'::text);
CREATE OR REPLACE FUNCTION "public"."sign"("payload" json, "secret" text, "algorithm" text='HS256'::text)
  RETURNS "pg_catalog"."text" AS $BODY$
WITH
  header AS (
    SELECT public.url_encode(convert_to('{"alg":"' || algorithm || '","typ":"JWT"}', 'utf8')) AS data
    ),
  payload AS (
    SELECT public.url_encode(convert_to(payload::text, 'utf8')) AS data
    ),
  signables AS (
    SELECT header.data || '.' || payload.data AS data FROM header, payload
    )
SELECT
    signables.data || '.' ||
    public.algorithm_sign(signables.data, secret, algorithm) FROM signables;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for skip
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."skip"("why" text, "how_many" int4);
CREATE OR REPLACE FUNCTION "public"."skip"("why" text, "how_many" int4)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    output TEXT[];
BEGIN
    output := '{}';
    FOR i IN 1..how_many LOOP
        output = array_append(
            output,
            ok( TRUE ) || ' ' || diag( 'SKIP' || COALESCE( ' ' || why, '') )
        );
    END LOOP;
    RETURN array_to_string(output, E'\n');
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for skip
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."skip"(int4);
CREATE OR REPLACE FUNCTION "public"."skip"(int4)
  RETURNS "pg_catalog"."text" AS $BODY$SELECT skip(NULL, $1)$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for skip
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."skip"(text);
CREATE OR REPLACE FUNCTION "public"."skip"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT ok( TRUE ) || ' ' || diag( 'SKIP' || COALESCE(' ' || $1, '') );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for skip
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."skip"(int4, text);
CREATE OR REPLACE FUNCTION "public"."skip"(int4, text)
  RETURNS "pg_catalog"."text" AS $BODY$SELECT skip($2, $1)$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for table_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."table_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."table_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('{r,p}'::char[], $1);
BEGIN
    -- Make sure the table exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Table ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for table_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."table_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."table_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT table_owner_is(
        $1, $2, $3,
        'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for table_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."table_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."table_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('{r,p}'::char[], $1, $2);
BEGIN
    -- Make sure the table exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Table ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for table_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."table_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."table_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT table_owner_is(
        $1, $2,
        'Table ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for table_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."table_privs_are"(name, name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."table_privs_are"(name, name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_table_privs( $3, quote_ident($1) || '.' || quote_ident($2) );
BEGIN
    IF grants[1] = 'undefined_table' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Table ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $5) || E'\n' || diag(
            '    Role ' || quote_ident($3) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $4, $5);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for table_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."table_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."table_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT table_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on table ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for table_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."table_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."table_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_table_privs( $2, quote_ident($1) );
BEGIN
    IF grants[1] = 'undefined_table' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Table ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for table_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."table_privs_are"(name, name, name, _name);
CREATE OR REPLACE FUNCTION "public"."table_privs_are"(name, name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT table_privs_are(
        $1, $2, $3, $4,
        'Role ' || quote_ident($3) || ' should be granted '
            || CASE WHEN $4[1] IS NULL THEN 'no privileges' ELSE array_to_string($4, ', ') END
            || ' on table ' || quote_ident($1) || '.' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tables_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tables_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."tables_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'tables', _extras('{r,p}'::char[], $1, $2), _missing('{r,p}'::char[], $1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tables_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tables_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."tables_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'tables', _extras('{r,p}'::char[], $1), _missing('{r,p}'::char[], $1), $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tables_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tables_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."tables_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'tables', _extras('{r,p}'::char[], $1, $2), _missing('{r,p}'::char[], $1, $2),
        'Schema ' || quote_ident($1) || ' should have the correct tables'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tables_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tables_are"(_name);
CREATE OR REPLACE FUNCTION "public"."tables_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'tables', _extras('{r,p}'::char[], $1), _missing('{r,p}'::char[], $1),
        'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct tables'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tablespace_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tablespace_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."tablespace_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_tablespace_owner($1);
BEGIN
    -- Make sure the tablespace exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Tablespace ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tablespace_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tablespace_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."tablespace_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT tablespace_owner_is(
        $1, $2,
        'Tablespace ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tablespace_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tablespace_privs_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."tablespace_privs_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    grants TEXT[] := _get_tablespaceprivs( $2, $1::TEXT );
BEGIN
    IF grants[1] = 'undefined_tablespace' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Tablespace ' || quote_ident($1) || ' does not exist'
        );
    ELSIF grants[1] = 'undefined_role' THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            '    Role ' || quote_ident($2) || ' does not exist'
        );
    END IF;
    RETURN _assets_are('privileges', grants, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tablespace_privs_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tablespace_privs_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."tablespace_privs_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT tablespace_privs_are(
        $1, $2, $3,
        'Role ' || quote_ident($2) || ' should be granted '
            || CASE WHEN $3[1] IS NULL THEN 'no privileges' ELSE array_to_string($3, ', ') END
            || ' on tablespace ' || quote_ident($1)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tablespaces_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tablespaces_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."tablespaces_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'tablespaces',
        ARRAY(
            SELECT spcname
              FROM pg_catalog.pg_tablespace
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
               FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT spcname
              FROM pg_catalog.pg_tablespace
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for tablespaces_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."tablespaces_are"(_name);
CREATE OR REPLACE FUNCTION "public"."tablespaces_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT tablespaces_are( $1, 'There should be the correct tablespaces' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ilike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ilike"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."throws_ilike"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    EXECUTE _query($1);
    RETURN ok( FALSE, $3 ) || E'\n' || diag( '    no exception thrown' );
EXCEPTION WHEN OTHERS THEN
    return _tlike( SQLERRM ~~* $2, SQLERRM, $2, $3 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ilike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ilike"(text, text);
CREATE OR REPLACE FUNCTION "public"."throws_ilike"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT throws_ilike($1, $2, 'Should throw exception like ' || quote_literal($2) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_imatching
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_imatching"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."throws_imatching"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    EXECUTE _query($1);
    RETURN ok( FALSE, $3 ) || E'\n' || diag( '    no exception thrown' );
EXCEPTION WHEN OTHERS THEN
    return _tlike( SQLERRM ~* $2, SQLERRM, $2, $3 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_imatching
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_imatching"(text, text);
CREATE OR REPLACE FUNCTION "public"."throws_imatching"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT throws_imatching($1, $2, 'Should throw exception matching ' || quote_literal($2) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_like
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_like"(text, text);
CREATE OR REPLACE FUNCTION "public"."throws_like"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT throws_like($1, $2, 'Should throw exception like ' || quote_literal($2) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_like
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_like"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."throws_like"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    EXECUTE _query($1);
    RETURN ok( FALSE, $3 ) || E'\n' || diag( '    no exception thrown' );
EXCEPTION WHEN OTHERS THEN
    return _tlike( SQLERRM ~~ $2, SQLERRM, $2, $3 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_matching
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_matching"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."throws_matching"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    EXECUTE _query($1);
    RETURN ok( FALSE, $3 ) || E'\n' || diag( '    no exception thrown' );
EXCEPTION WHEN OTHERS THEN
    return _tlike( SQLERRM ~ $2, SQLERRM, $2, $3 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_matching
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_matching"(text, text);
CREATE OR REPLACE FUNCTION "public"."throws_matching"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT throws_matching($1, $2, 'Should throw exception matching ' || quote_literal($2) );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ok"(text, text);
CREATE OR REPLACE FUNCTION "public"."throws_ok"(text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF octet_length($2) = 5 THEN
        RETURN throws_ok( $1, $2::char(5), NULL, NULL );
    ELSE
        RETURN throws_ok( $1, NULL, $2, NULL );
    END IF;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ok"(text, bpchar, text, text);
CREATE OR REPLACE FUNCTION "public"."throws_ok"(text, bpchar, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    query     TEXT := _query($1);
    errcode   ALIAS FOR $2;
    errmsg    ALIAS FOR $3;
    desctext  ALIAS FOR $4;
    descr     TEXT;
BEGIN
    descr := COALESCE(
          desctext,
          'threw ' || errcode || ': ' || errmsg,
          'threw ' || errcode,
          'threw ' || errmsg,
          'threw an exception'
    );
    EXECUTE query;
    RETURN ok( FALSE, descr ) || E'\n' || diag(
           '      caught: no exception' ||
        E'\n      wanted: ' || COALESCE( errcode, 'an exception' )
    );
EXCEPTION WHEN OTHERS OR ASSERT_FAILURE THEN
    IF (errcode IS NULL OR SQLSTATE = errcode)
        AND ( errmsg IS NULL OR SQLERRM = errmsg)
    THEN
        -- The expected errcode and/or message was thrown.
        RETURN ok( TRUE, descr );
    ELSE
        -- This was not the expected errcode or errmsg.
        RETURN ok( FALSE, descr ) || E'\n' || diag(
               '      caught: ' || SQLSTATE || ': ' || SQLERRM ||
            E'\n      wanted: ' || COALESCE( errcode, 'an exception' ) ||
            COALESCE( ': ' || errmsg, '')
        );
    END IF;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ok"(text, text, text);
CREATE OR REPLACE FUNCTION "public"."throws_ok"(text, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
BEGIN
    IF octet_length($2) = 5 THEN
        RETURN throws_ok( $1, $2::char(5), $3, NULL );
    ELSE
        RETURN throws_ok( $1, NULL, $2, $3 );
    END IF;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ok"(text);
CREATE OR REPLACE FUNCTION "public"."throws_ok"(text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT throws_ok( $1, NULL, NULL, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ok"(text, int4);
CREATE OR REPLACE FUNCTION "public"."throws_ok"(text, int4)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT throws_ok( $1, $2::char(5), NULL, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ok"(text, int4, text);
CREATE OR REPLACE FUNCTION "public"."throws_ok"(text, int4, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT throws_ok( $1, $2::char(5), $3, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for throws_ok
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."throws_ok"(text, int4, text, text);
CREATE OR REPLACE FUNCTION "public"."throws_ok"(text, int4, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT throws_ok( $1, $2::char(5), $3, $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for todo
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."todo"("why" text, "how_many" int4);
CREATE OR REPLACE FUNCTION "public"."todo"("why" text, "how_many" int4)
  RETURNS SETOF "pg_catalog"."bool" AS $BODY$
BEGIN
    PERFORM _add('todo', COALESCE(how_many, 1), COALESCE(why, ''));
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for todo
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."todo"("how_many" int4);
CREATE OR REPLACE FUNCTION "public"."todo"("how_many" int4)
  RETURNS SETOF "pg_catalog"."bool" AS $BODY$
BEGIN
    PERFORM _add('todo', COALESCE(how_many, 1), '');
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for todo
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."todo"("why" text);
CREATE OR REPLACE FUNCTION "public"."todo"("why" text)
  RETURNS SETOF "pg_catalog"."bool" AS $BODY$
BEGIN
    PERFORM _add('todo', 1, COALESCE(why, ''));
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for todo
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."todo"("how_many" int4, "why" text);
CREATE OR REPLACE FUNCTION "public"."todo"("how_many" int4, "why" text)
  RETURNS SETOF "pg_catalog"."bool" AS $BODY$
BEGIN
    PERFORM _add('todo', COALESCE(how_many, 1), COALESCE(why, ''));
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for todo_end
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."todo_end"();
CREATE OR REPLACE FUNCTION "public"."todo_end"()
  RETURNS SETOF "pg_catalog"."bool" AS $BODY$
DECLARE
    id integer;
BEGIN
    id := _get_latest( 'todo', -1 );
    IF id IS NULL THEN
        RAISE EXCEPTION 'todo_end() called without todo_start()';
    END IF;
    EXECUTE 'DELETE FROM __tcache__ WHERE id = ' || id;
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for todo_start
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."todo_start"();
CREATE OR REPLACE FUNCTION "public"."todo_start"()
  RETURNS SETOF "pg_catalog"."bool" AS $BODY$
BEGIN
    PERFORM _add('todo', -1, '');
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for todo_start
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."todo_start"(text);
CREATE OR REPLACE FUNCTION "public"."todo_start"(text)
  RETURNS SETOF "pg_catalog"."bool" AS $BODY$
BEGIN
    PERFORM _add('todo', -1, COALESCE($1, ''));
    RETURN;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for trigger_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trigger_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."trigger_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    pname text;
BEGIN
    SELECT p.proname
      FROM pg_catalog.pg_trigger t
      JOIN pg_catalog.pg_class ct ON ct.oid = t.tgrelid
      JOIN pg_catalog.pg_proc p   ON p.oid = t.tgfoid
     WHERE ct.relname = $1
       AND t.tgname   = $2
       AND pg_catalog.pg_table_is_visible(ct.oid)
      INTO pname;

    RETURN is( pname, $3::text, $4 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for trigger_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trigger_is"(name, name, name, name, name);
CREATE OR REPLACE FUNCTION "public"."trigger_is"(name, name, name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT trigger_is(
        $1, $2, $3, $4, $5,
        'Trigger ' || quote_ident($3) || ' should call ' || quote_ident($4) || '.' || quote_ident($5) || '()'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for trigger_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trigger_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."trigger_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT trigger_is(
        $1, $2, $3,
        'Trigger ' || quote_ident($2) || ' should call ' || quote_ident($3) || '()'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for trigger_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trigger_is"(name, name, name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."trigger_is"(name, name, name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    pname text;
BEGIN
    SELECT quote_ident(ni.nspname) || '.' || quote_ident(p.proname)
      FROM pg_catalog.pg_trigger t
      JOIN pg_catalog.pg_class ct     ON ct.oid = t.tgrelid
      JOIN pg_catalog.pg_namespace nt ON nt.oid = ct.relnamespace
      JOIN pg_catalog.pg_proc p       ON p.oid = t.tgfoid
      JOIN pg_catalog.pg_namespace ni ON ni.oid = p.pronamespace
     WHERE nt.nspname = $1
       AND ct.relname = $2
       AND t.tgname   = $3
      INTO pname;

    RETURN is( pname, quote_ident($4) || '.' || quote_ident($5), $6 );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for triggers_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."triggers_are"(name, name, _name);
CREATE OR REPLACE FUNCTION "public"."triggers_are"(name, name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT triggers_are( $1, $2, $3, 'Table ' || quote_ident($1) || '.' || quote_ident($2) || ' should have the correct triggers' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for triggers_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."triggers_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."triggers_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'triggers',
        ARRAY(
            SELECT t.tgname
              FROM pg_catalog.pg_trigger t
              JOIN pg_catalog.pg_class c ON c.oid = t.tgrelid
              JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
             WHERE c.relname = $1
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND NOT t.tgisinternal
            EXCEPT
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
        ),
        ARRAY(
            SELECT $2[i]
              FROM generate_series(1, array_upper($2, 1)) s(i)
            EXCEPT
            SELECT t.tgname
              FROM pg_catalog.pg_trigger t
              JOIN pg_catalog.pg_class c ON c.oid = t.tgrelid
              JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
               AND n.nspname NOT IN ('pg_catalog', 'information_schema')
               AND NOT t.tgisinternal
        ),
        $3
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for triggers_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."triggers_are"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."triggers_are"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'triggers',
        ARRAY(
            SELECT t.tgname
              FROM pg_catalog.pg_trigger t
              JOIN pg_catalog.pg_class c     ON c.oid = t.tgrelid
              JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
             WHERE n.nspname = $1
               AND c.relname = $2
               AND NOT t.tgisinternal
            EXCEPT
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
        ),
        ARRAY(
            SELECT $3[i]
              FROM generate_series(1, array_upper($3, 1)) s(i)
            EXCEPT
            SELECT t.tgname
              FROM pg_catalog.pg_trigger t
              JOIN pg_catalog.pg_class c     ON c.oid = t.tgrelid
              JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
             WHERE n.nspname = $1
               AND c.relname = $2
               AND NOT t.tgisinternal
        ),
        $4
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for triggers_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."triggers_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."triggers_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT triggers_are( $1, $2, 'Table ' || quote_ident($1) || ' should have the correct triggers' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for type_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."type_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."type_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_type_owner($1);
BEGIN
    -- Make sure the type exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    Type ' || quote_ident($1) || ' not found'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for type_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."type_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."type_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT type_owner_is(
        $1, $2,
        'Type ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for type_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."type_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."type_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT type_owner_is(
        $1, $2, $3,
        'Type ' || quote_ident($1) || '.' || quote_ident($2) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for type_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."type_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."type_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_type_owner($1, $2);
BEGIN
    -- Make sure the type exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    Type ' || quote_ident($1) || '.' || quote_ident($2) || ' not found'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for types_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."types_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."types_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, 'Schema ' || quote_ident($1) || ' should have the correct types', NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for types_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."types_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."types_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, $3, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for types_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."types_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."types_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for types_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."types_are"(_name);
CREATE OR REPLACE FUNCTION "public"."types_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _types_are( $1, 'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct types', NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for unalike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unalike"(anyelement, text);
CREATE OR REPLACE FUNCTION "public"."unalike"(anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _unalike( $1 !~~ $2, $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for unalike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unalike"(anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."unalike"(anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _unalike( $1 !~~ $2, $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for unialike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unialike"(anyelement, text);
CREATE OR REPLACE FUNCTION "public"."unialike"(anyelement, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _unalike( $1 !~~* $2, $1, $2, NULL );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for unialike
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unialike"(anyelement, text, text);
CREATE OR REPLACE FUNCTION "public"."unialike"(anyelement, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _unalike( $1 !~~* $2, $1, $2, $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for url_decode
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."url_decode"("data" text);
CREATE OR REPLACE FUNCTION "public"."url_decode"("data" text)
  RETURNS "pg_catalog"."bytea" AS $BODY$
WITH t AS (SELECT translate(data, '-_', '+/') AS trans),
     rem AS (SELECT length(t.trans) % 4 AS remainder FROM t) -- compute padding size
    SELECT decode(
        t.trans ||
        CASE WHEN rem.remainder > 0
           THEN repeat('=', (4 - rem.remainder))
           ELSE '' END,
    'base64') FROM t, rem;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for url_encode
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."url_encode"("data" bytea);
CREATE OR REPLACE FUNCTION "public"."url_encode"("data" bytea)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT translate(encode(data, 'base64'), E'+/=\n', '-_');
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for users_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."users_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."users_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'users',
        ARRAY(
            SELECT usename
              FROM pg_catalog.pg_user
            EXCEPT
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
        ),
        ARRAY(
            SELECT $1[i]
              FROM generate_series(1, array_upper($1, 1)) s(i)
            EXCEPT
            SELECT usename
              FROM pg_catalog.pg_user
        ),
        $2
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for users_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."users_are"(_name);
CREATE OR REPLACE FUNCTION "public"."users_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT users_are( $1, 'There should be the correct users' );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for uuid_generate_v1
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v1mc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1mc"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1mc"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1mc'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v3
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v3"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v3"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v3'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v4"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v4"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v4'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v5
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v5"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v5"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v5'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_nil
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_nil"();
CREATE OR REPLACE FUNCTION "public"."uuid_nil"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_nil'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_dns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_dns"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_dns"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_dns'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_oid"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_oid"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_url
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_url"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_url"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_url'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_x500
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_x500"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_x500"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_x500'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for verify
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."verify"("token" text, "secret" text, "algorithm" text);
CREATE OR REPLACE FUNCTION "public"."verify"("token" text, "secret" text, "algorithm" text)
  RETURNS TABLE("header" json, "payload" json, "valid" bool) AS $BODY$
  SELECT
    convert_from(public.url_decode(r[1]), 'utf8')::json AS header,
    convert_from(public.url_decode(r[2]), 'utf8')::json AS payload,
    r[3] = public.algorithm_sign(r[1] || '.' || r[2], secret, algorithm) AS valid
  FROM regexp_split_to_array(token, '\.') r;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for view_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."view_owner_is"(name, name, name);
CREATE OR REPLACE FUNCTION "public"."view_owner_is"(name, name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT view_owner_is(
        $1, $2, $3,
        'View ' || quote_ident($1) || '.' || quote_ident($2) || ' should be owned by ' || quote_ident($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for view_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."view_owner_is"(name, name, name, text);
CREATE OR REPLACE FUNCTION "public"."view_owner_is"(name, name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('v'::char, $1, $2);
BEGIN
    -- Make sure the view exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $4) || E'\n' || diag(
            E'    View ' || quote_ident($1) || '.' || quote_ident($2) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $3, $4);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for view_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."view_owner_is"(name, name);
CREATE OR REPLACE FUNCTION "public"."view_owner_is"(name, name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT view_owner_is(
        $1, $2,
        'View ' || quote_ident($1) || ' should be owned by ' || quote_ident($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for view_owner_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."view_owner_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."view_owner_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
DECLARE
    owner NAME := _get_rel_owner('v'::char, $1);
BEGIN
    -- Make sure the view exists.
    IF owner IS NULL THEN
        RETURN ok(FALSE, $3) || E'\n' || diag(
            E'    View ' || quote_ident($1) || ' does not exist'
        );
    END IF;

    RETURN is(owner, $2, $3);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for views_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."views_are"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."views_are"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'views', _extras('v', $1, $2), _missing('v', $1, $2), $3);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for views_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."views_are"(_name, text);
CREATE OR REPLACE FUNCTION "public"."views_are"(_name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are( 'views', _extras('v', $1), _missing('v', $1), $2);
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for views_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."views_are"(name, _name);
CREATE OR REPLACE FUNCTION "public"."views_are"(name, _name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'views', _extras('v', $1, $2), _missing('v', $1, $2),
        'Schema ' || quote_ident($1) || ' should have the correct views'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for views_are
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."views_are"(_name);
CREATE OR REPLACE FUNCTION "public"."views_are"(_name)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _are(
        'views', _extras('v', $1), _missing('v', $1),
        'Search path ' || pg_catalog.current_setting('search_path') || ' should have the correct views'
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for volatility_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."volatility_is"(name, text);
CREATE OR REPLACE FUNCTION "public"."volatility_is"(name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT volatility_is(
        $1, $2,
        'Function ' || quote_ident($1) || '() should be ' || _refine_vol($2)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for volatility_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."volatility_is"(name, name, text);
CREATE OR REPLACE FUNCTION "public"."volatility_is"(name, name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT volatility_is(
        $1, $2, $3,
        'Function ' || quote_ident($1) || '.' || quote_ident($2)
        || '() should be ' || _refine_vol($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for volatility_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."volatility_is"(name, _name, text, text);
CREATE OR REPLACE FUNCTION "public"."volatility_is"(name, _name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, $2, _vol($1, $2), _refine_vol($3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for volatility_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."volatility_is"(name, _name, text);
CREATE OR REPLACE FUNCTION "public"."volatility_is"(name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT volatility_is(
        $1, $2, $3,
        'Function ' || quote_ident($1) || '(' ||
        array_to_string($2, ', ') || ') should be ' || _refine_vol($3)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for volatility_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."volatility_is"(name, text, text);
CREATE OR REPLACE FUNCTION "public"."volatility_is"(name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare(NULL, $1, _vol($1), _refine_vol($2), $3 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for volatility_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."volatility_is"(name, name, _name, text);
CREATE OR REPLACE FUNCTION "public"."volatility_is"(name, name, _name, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT volatility_is(
        $1, $2, $3, $4,
        'Function ' || quote_ident($1) || '.' || quote_ident($2) || '(' ||
        array_to_string($3, ', ') || ') should be ' || _refine_vol($4)
    );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for volatility_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."volatility_is"(name, name, _name, text, text);
CREATE OR REPLACE FUNCTION "public"."volatility_is"(name, name, _name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, $3, _vol($1, $2, $3), _refine_vol($4), $5 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for volatility_is
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."volatility_is"(name, name, text, text);
CREATE OR REPLACE FUNCTION "public"."volatility_is"(name, name, text, text)
  RETURNS "pg_catalog"."text" AS $BODY$
    SELECT _func_compare($1, $2, _vol($1, $2), _refine_vol($3), $4 );
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;

-- ----------------------------
-- View structure for tap_funky
-- ----------------------------
DROP VIEW IF EXISTS "public"."tap_funky";
CREATE VIEW "public"."tap_funky" AS  SELECT p.oid,
    n.nspname AS schema,
    p.proname AS name,
    pg_get_userbyid(p.proowner) AS owner,
    array_to_string((p.proargtypes)::regtype[], ','::text) AS args,
    (
        CASE p.proretset
            WHEN true THEN 'setof '::text
            ELSE ''::text
        END || (p.prorettype)::regtype) AS returns,
    p.prolang AS langoid,
    p.proisstrict AS is_strict,
    p.proisagg AS is_agg,
    p.prosecdef AS is_definer,
    p.proretset AS returns_set,
    (p.provolatile)::character(1) AS volatility,
    pg_function_is_visible(p.oid) AS is_visible
   FROM (pg_proc p
     JOIN pg_namespace n ON ((p.pronamespace = n.oid)));

-- ----------------------------
-- View structure for pg_all_foreign_keys
-- ----------------------------
DROP VIEW IF EXISTS "public"."pg_all_foreign_keys";
CREATE VIEW "public"."pg_all_foreign_keys" AS  SELECT n1.nspname AS fk_schema_name,
    c1.relname AS fk_table_name,
    k1.conname AS fk_constraint_name,
    c1.oid AS fk_table_oid,
    _pg_sv_column_array(k1.conrelid, k1.conkey) AS fk_columns,
    n2.nspname AS pk_schema_name,
    c2.relname AS pk_table_name,
    k2.conname AS pk_constraint_name,
    c2.oid AS pk_table_oid,
    ci.relname AS pk_index_name,
    _pg_sv_column_array(k1.confrelid, k1.confkey) AS pk_columns,
        CASE k1.confmatchtype
            WHEN 'f'::"char" THEN 'FULL'::text
            WHEN 'p'::"char" THEN 'PARTIAL'::text
            WHEN 'u'::"char" THEN 'NONE'::text
            ELSE NULL::text
        END AS match_type,
        CASE k1.confdeltype
            WHEN 'a'::"char" THEN 'NO ACTION'::text
            WHEN 'c'::"char" THEN 'CASCADE'::text
            WHEN 'd'::"char" THEN 'SET DEFAULT'::text
            WHEN 'n'::"char" THEN 'SET NULL'::text
            WHEN 'r'::"char" THEN 'RESTRICT'::text
            ELSE NULL::text
        END AS on_delete,
        CASE k1.confupdtype
            WHEN 'a'::"char" THEN 'NO ACTION'::text
            WHEN 'c'::"char" THEN 'CASCADE'::text
            WHEN 'd'::"char" THEN 'SET DEFAULT'::text
            WHEN 'n'::"char" THEN 'SET NULL'::text
            WHEN 'r'::"char" THEN 'RESTRICT'::text
            ELSE NULL::text
        END AS on_update,
    k1.condeferrable AS is_deferrable,
    k1.condeferred AS is_deferred
   FROM ((((((((pg_constraint k1
     JOIN pg_namespace n1 ON ((n1.oid = k1.connamespace)))
     JOIN pg_class c1 ON ((c1.oid = k1.conrelid)))
     JOIN pg_class c2 ON ((c2.oid = k1.confrelid)))
     JOIN pg_namespace n2 ON ((n2.oid = c2.relnamespace)))
     JOIN pg_depend d ON (((d.classid = ('pg_constraint'::regclass)::oid) AND (d.objid = k1.oid) AND (d.objsubid = 0) AND (d.deptype = 'n'::"char") AND (d.refclassid = ('pg_class'::regclass)::oid) AND (d.refobjsubid = 0))))
     JOIN pg_class ci ON (((ci.oid = d.refobjid) AND (ci.relkind = 'i'::"char"))))
     LEFT JOIN pg_depend d2 ON (((d2.classid = ('pg_class'::regclass)::oid) AND (d2.objid = ci.oid) AND (d2.objsubid = 0) AND (d2.deptype = 'i'::"char") AND (d2.refclassid = ('pg_constraint'::regclass)::oid) AND (d2.refobjsubid = 0))))
     LEFT JOIN pg_constraint k2 ON (((k2.oid = d2.refobjid) AND (k2.contype = ANY (ARRAY['p'::"char", 'u'::"char"])))))
  WHERE ((k1.conrelid <> (0)::oid) AND (k1.confrelid <> (0)::oid) AND (k1.contype = 'f'::"char") AND _pg_sv_table_accessible(n1.oid, c1.oid));

-- ----------------------------
-- Primary Key structure for table city
-- ----------------------------
ALTER TABLE "public"."city" ADD CONSTRAINT "city_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table country
-- ----------------------------
ALTER TABLE "public"."country" ADD CONSTRAINT "country_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table state
-- ----------------------------
ALTER TABLE "public"."state" ADD CONSTRAINT "state_pkey" PRIMARY KEY ("id");
