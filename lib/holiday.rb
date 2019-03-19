require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
   holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_hash[:winter][:christmas]<<"Balloons"
   holiday_hash[:winter][:new_years]<<"Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day]<< supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season , holiday_supplies|
    puts "#{season.capitalize}:"
    holiday_with_supplies.each do |holiday, supplies|
      holiday_name = holiday.to_s.split("_")
      holiday_name.each do |word|
        word.capitalize!
      end
      new_holiday = holiday_name.join(" ")
      puts "  #{new_holiday}: #{supplies.join(", ")}"
    end
  end
  end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
    holiday_hash.each do |season, holiday_supplies_hash|
      holiday_supplies_hash.each do |holiday, supplies|
        if supplies.include?("BBQ")
          bbq_array << holiday
        end
      end
    end
  bbq_array
end
