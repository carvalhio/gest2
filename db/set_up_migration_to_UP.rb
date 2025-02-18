Open the Rails Console: Start by opening the Rails console in your terminal:
bash
Copy code
rails c
Check the Migration Versions: You can directly query the schema_migrations table to see which migrations have been applied. Use the following command:

ruby
Copy code
ActiveRecord::Base.connection.execute("SELECT * FROM schema_migrations").map { |row| row['version'] }
This will return an array of all the migration versions that have been applied.

Manually Add the Migration: If you find that the migration for High_School_subjects is missing from the list but the table exists in the database, you can manually add it to the schema_migrations table. For example, if your migration file is named 20230101010101_create_high_school_subjects.rb, you can do the following:

ruby
Copy code
ActiveRecord::Base.connection.execute("INSERT INTO schema_migrations (version) VALUES ('20230101010101')")
Make sure to replace '20230101010101' with the actual timestamp of your migration.

Verify the Change: After adding the migration version, you can verify that it has been added by running the query again:

ruby
Copy code
ActiveRecord::Base.connection.execute("SELECT * FROM schema_migrations").map { |row| row['version'] }
Exit the Console: Once you have made the changes, you can exit the Rails console:

ruby
Copy code
exit
Check Migration Status Again: After exiting the console, you can check the migration status again in your terminal:

bash
Copy code
rails db:migrate:status
Start the Rails Server: Finally, try starting your Rails server again:

bash
Copy code
rails server
Important Notes
Backup Your Database: Before making manual changes to the database, it's a good idea to back up your database to avoid any accidental data loss.
Be Cautious: Manually modifying the migration status can lead to inconsistencies if not done carefully. Ensure that the migration you are marking as "up" has indeed been executed and that the corresponding table exists in the database.