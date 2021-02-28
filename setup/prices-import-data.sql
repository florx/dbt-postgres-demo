\COPY "house_price_data"."prices" (transaction_id, price, date_of_transfer, postcode, property_type, old_or_new, duration, paon, saon, street, locality, town_or_city, district, county, ppd_category_type, record_status) FROM 'setup/prices-data-2020.csv'  DELIMITER ',' QUOTE '"' CSV;


