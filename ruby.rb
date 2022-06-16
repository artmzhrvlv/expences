require "rexml/document"
require "date"

current_path = File.dirname(__FILE__)
file_name = current_path + "/ex1.xml"

file = File.new(file_name)

doc = REXML::Document.new(file)

h = []
f = []

doc.elements.each("expences/expence") do |item|
  loss_sum = item.attributes["amount"].to_i
  loss_date = Date.parse(item.attributes["date"])

  h.unshift(loss_sum)
  f.unshift(item.attributes)
end
p " heeloo"
file.close
#komment
<<<<<<< HEAD
=======
zebraz
zebraz
zebrazz
z
z
z
z
z
>>>>>>> ficha
