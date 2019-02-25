require './env'

module Setup
  extend self

  def create_extension
    DB.run("create extension pgcrypto;")
  end

  def create_table
    sql = <<~SQL
    CREATE TABLE counters(
      id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
      counter integer not null default(0)
    );
    SQL

    DB.run(sql)
  end
  
end
