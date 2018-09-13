def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def like_food(person, food)
  person[:favourites][:snacks].each { |snack|
    if snack == food
      return true
    end
  }
  return false
end

def add_friend(person, name)
  person[:friends].push(name)
  return person[:friends].length
end

def unfriend(person, name)
  person[:friends].delete(name)
  return person[:friends].length
end

def total_cash(people)
  total = 0

  for each_person in people
    total += each_person[:monies]
  end

  return total
end


def loan(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end


def everyones_food(people)
  foods = []

    for snack in people
      foods += snack[:favourites][:snacks]
    end
    return foods
end
