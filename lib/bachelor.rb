def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      contestant_hash["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants_array|
    contestants_array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants_array|
    contestants_array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

# def get_occupation(data, hometown)
#   occupations_from_town = []
#   data.each do |season, contestants_array|
#     contestants_array.each do |contestant_hash|
#       if contestant_hash["hometown"] == hometown
#         occupations_from_town << contestant_hash["occupation"]
#       end
#     end
#   end
#   occupations_from_town[0]
# end


def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestants_count = 0.0
  age_sum = 0.0
  data[season].each do |contestant_hash|
    contestants_count += 1
    age_sum += contestant_hash["age"].to_f
  end
  (age_sum / contestants_count).round
end
