#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-

class Monsterize
  attr_accessor :monsters
  attr_accessor :monsterize


  def initialize(monsters=1)
    @monsters = monsters
    self.send('generate')
  end
 
#decides on a sentence to 'draw' from the 'deck' XD
    def deal()
        hand = @monsterize.pop(1)
        p hand
        if @monsterize.length() <= 5
           self.send('generate')
        end
        return hand.join(" ")
  end

  def generate()
    @monsterize = Array.new()
    @monsters.times { |i|
      ['Scylla http://monstergirlencyclopedia.wikia.com/wiki/Scylla?file=Scylla.PNG', 'Zombie http://monstergirlencyclopedia.wikia.com/wiki/Zombie?file=Zombie.PNG', 'Vampire','Charybdis http://monstergirlencyclopedia.wikia.com/wiki/Charybdis?file=Charybdis.jpg', 'Goblin http://monstergirlencyclopedia.wikia.com/wiki/Goblin?file=Goblin.jpg', 'Centaur http://monstergirlencyclopedia.wikia.com/wiki/Centaur?file=Centaur.PNG', 'Werewolf http://monstergirlencyclopedia.wikia.com/wiki/Werewolf?file=Werewolf.png'].each do |monsterize|
          @monsterize << "#{monsterize}"
      end
    }
    @monsterize.shuffle!
    p @monsterize
  end
end