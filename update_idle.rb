# -*- coding: utf-8 -*-

## デレステSSRデータベース登録用スクリプト

require 'open-uri'
require 'nokogiri'
require './idle.rb'

# SSR更新
url = 'http://imascg-slstage-wiki.gamerch.com/SSR'
rarelity = "SSR"

charset = nil

html = open(url) do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML.parse(html,nil,charset)

# 表の抽出
list = doc.css("section#js_async_main_column_text > table")[2].css("tbody > tr")

# 行の抽出
list.each do |line|
  name   =  line.css("span").at(0).content
  life   = line.css("span").at(1).content.to_i
  vocal  = line.css("span").at(2).content.delete(",").to_i
  dance  = line.css("span").at(3).content.delete(",").to_i
  visual = line.css("span").at(4).content.delete(",").to_i
  total  = line.css("span").at(5).content.delete(",").to_i
  type   = line.css("span").at(6).content

  if vocal == 0
    next
  end

  IdleManage::Idle.where(name: name).first_or_create do |idle|
    idle.name = name
    idle.life = life
    idle.vocal= vocal
    idle.dance = dance
    idle.visual = visual
    idle.total = total
    idle.idle_type = type
    idle.rarelity = rarelity
  end
end

# SR更新
url = 'http://imascg-slstage-wiki.gamerch.com/SR'
rarelity = "SR"

charset = nil

html = open(url) do |f|
  charset = f.charset
  f.read
end

doc = Nokogiri::HTML.parse(html,nil,charset)

# 表の抽出
list = doc.css("section#js_async_main_column_text > table")[2].css("tbody > tr")

# 行の抽出
list.each do |line|
  name   =  line.css("span").at(0).content
  life   = line.css("span").at(1).content.to_i
  vocal  = line.css("span").at(2).content.delete(",").to_i
  dance  = line.css("span").at(3).content.delete(",").to_i
  visual = line.css("span").at(4).content.delete(",").to_i
  total  = line.css("span").at(5).content.delete(",").to_i
  type   = line.css("span").at(6).content
  
  if vocal == 0
    next
  end

  IdleManage::Idle.where(name: name).first_or_create do |idle|
    idle.name = name
    idle.life = life
    idle.vocal= vocal
    idle.dance = dance
    idle.visual = visual
    idle.total = total
    idle.idle_type = type
    idle.rarelity = rarelity
  end
end
