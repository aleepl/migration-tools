set-up-flyway:
	./flyway/setup.sh

.PHONY: flyway

flyway:
	@flyway diff -source=development -target=schemaModel
	@read -p "Enter description: " desc; \
	flyway generate -types=versioned,undo -description="$$desc"; \
	flyway model; \
	flyway migrate -skipExecutingMigrations="true"; \
	flyway snapshot -filename=./snapshot/first_snapshot.json
