def get_first_name_of_season_winner(data, desired_season)
  data.each do |season, contestants|
    if season == desired_season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
      contestants.each do |contestant|
        if contestant["occupation"] == occupation
          return contestant["name"]
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  townies = 0
  data.each do |season, contestants|
      contestants.each do |contestant|
        townies += 1 if contestant["hometown"] == hometown
        end
  end
  townies
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          return contestant["occupation"]
        end
      end
  end
end

def get_average_age_for_season(data, desired_season)
  data.each do |season, contestants|
    if season == desired_season
      ages = contestants.collect { |contestant| contestant["age"].to_f }
      sum = 0.0
      ages.each { |age| sum += age}
      return (sum.to_f/(ages.length).to_f).round
    end
  end
end
