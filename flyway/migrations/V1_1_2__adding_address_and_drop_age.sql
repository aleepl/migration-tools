-- Script generated by Redgate Compare v1.28.0.25641
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Dropping flyway.person.age...';END$$;
ALTER TABLE flyway.person DROP COLUMN age;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating flyway.person.address...';END$$;
ALTER TABLE flyway.person ADD COLUMN address integer NOT NULL DEFAULT 0;

SET check_function_bodies = true;
