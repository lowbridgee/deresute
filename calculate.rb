# -*- coding: utf-8 -*-

require "./search_idle.rb"

module IdleManage
  class Calculate
    def initialize(idles)
      @idles = idles
    end

    def total
      power = 0
      @idles.each do |idle|
        power += idle.total
      end
      power
    end
  end
end


