# -*- coding: utf-8 -*-

module IdleManage
  require "sqlite3"
  require "active_record"

  ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database"=> "./idle.db"
  )

  class Center < ActiveRecord::Base
  end
end
