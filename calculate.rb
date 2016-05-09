# -*- coding: utf-8 -*-

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


