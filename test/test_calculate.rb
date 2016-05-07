require '~/Documents/ruby/deresute/search_idle.rb'
require '~/Documents/ruby/deresute/calculate.rb'

# TODO
# ユニット保存できるようにしたい

idle1 = IdleManage::Idle.find_by(id: 28)
idle2 = IdleManage::Idle.find_by(id: 18)
idle3 = IdleManage::Idle.find_by(id: 8)
idle4 = IdleManage::Idle.find_by(id: 32)
idle5 = IdleManage::Idle.find_by(id: 3)

idles = Array.new([idle1,idle2,idle3,idle4,idle5])

calculator = IdleManage::Calculate.new(idles)

p calculator.total
