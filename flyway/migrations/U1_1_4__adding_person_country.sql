-- Script generated by Redgate Compare v1.28.0.25641
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping flyway.person.country...';END$$;
ALTER TABLE flyway.person DROP COLUMN country;

SET check_function_bodies = true;
