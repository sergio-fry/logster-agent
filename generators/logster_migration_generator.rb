class LogsterMigrationGenerator
  def manifest 
    record do |m| 
      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "logster_migration"
    end
  end
end
