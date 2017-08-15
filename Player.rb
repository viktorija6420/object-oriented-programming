# Create a class called Player.
# Every player should have four attributes: gold_coins, health_points, and lives.
# lives should start at 5.
# gold_coins should start at 0.
# health_points should start at 10.
class Player
    def initialize (gold_coins, health_points, lives)
      @gold_coins = 0
      @health_points = 10
      @lives = 5
    end
# Your class should have an instance method called level_up that increases
# lives by one.
    def level_up
     @level_up = @lives +1
    end
# Your class should have an instance method called collect_treasure that increases
 # gold_coins by one. If gold_coins is a multiple of ten (eg,
# 10, 20, 30, and so on) then the collect_treasure method should run the level_up
# method.
    def collect_treasure(gold_coins)
    @collect_treasure = gold_coins + 1
      if @gold_coins % 10 == 0
        self.level_up
      end
    end
# Your class should have an instance method called do_battle that accepts one damage
# argument and subtracts it from the player's health_points. If health_points falls
# below one, subtract one from lives and reset health_points to ten. If you have
# run out of lives, this method should run another method called restart (see below).
    def do_battle(damage)
      @health_points -= damage
      if @health_points < 1 && @lives > 0
        @lives -= 1
        @health_points = 10
      elsif @health_points < 1 && @lives == 0
        restart
      end
      puts "#{@health_points} health and #{@lives} lives"
    end
# The restart instance
# method should set all attributes back to their starting values (5, 0, and 10).
    def restart
      @gold_coins = 0
      @health_points = 10
      @lives = 5
    end
end

p check_if_it_is_working=Player.new(2,3,6)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
check_if_it_is_working.do_battle(8)
p check_if_it_is_working.collect_treasure(2)
p check_if_it_is_working.restart
p check_if_it_is_working.level_up
