
CREATE SCHEMA "raw";
CREATE TABLE "raw"."prices" (
    transaction_id text PRIMARY KEY,
    price text,
    date_of_transfer text,
    postcode text,
    property_type text,
    old_or_new text,
    duration text,
    paon text,
    saon text,
    street text,
    locality text,
    town_or_city text,
    district text,
    county text,
    ppd_category_type text,
    record_status text
);
