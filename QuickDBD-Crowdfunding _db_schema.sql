-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/5rdrnm
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CONTACTS" (
    "contact_id" INTEGER   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_CONTACTS" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "CATEGORY" (
    "category_id" VARCHAR(50)   NOT NULL,
    "category" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_CATEGORY" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "SUBCATEGORY" (
    "subcategory_id" VARCHAR(50)   NOT NULL,
    "subcategory" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_SUBCATEGORY" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "CAMPAING" (
    "cf-id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company" VARCHAR(50)   NOT NULL,
    "description" VARCHAR(225)   NOT NULL,
    "goal" INTEGER   NOT NULL,
    "pledged" INTEGER   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(50)   NOT NULL,
    "currency" VARCHAR(50)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(50)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_CAMPAING" PRIMARY KEY (
        "cf-id"
     )
);

ALTER TABLE "CAMPAING" ADD CONSTRAINT "fk_CAMPAING_contact_id" FOREIGN KEY("contact_id")
REFERENCES "CONTACTS" ("contact_id");

ALTER TABLE "CAMPAING" ADD CONSTRAINT "fk_CAMPAING_category_id" FOREIGN KEY("category_id")
REFERENCES "CATEGORY" ("category_id");

ALTER TABLE "CAMPAING" ADD CONSTRAINT "fk_CAMPAING_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "SUBCATEGORY" ("subcategory_id");

