-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "campaign" (
    "cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float NOT NULL,
    "pledged" float NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "staff_pick" varchar   NOT NULL,
    "spotlight" varchar   NOT NULL,
    "category & sub-category" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL
);

CREATE TABLE "category" (
    "category_id" varchar PRIMARY KEY NOT NULL,
    "category" varchar   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int PRIMARY KEY NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar PRIMARY KEY NOT NULL,
    "subcategory" varchar   NOT NULL
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

-- verify creation of campaign table
SELECT * FROM campaign;

-- verify creation of category table
SELECT * FROM category;

-- verify creation of subcategory table
SELECT * FROM subcategory;

-- verify creation of contacts table
SELECT * FROM contacts;
