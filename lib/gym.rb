class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|mem| mem.gym == self}
  end

  def lifters
    self.memberships.map{|mem| mem.lifter}
  end

  def lifter_names
    self.lifters.map{|lifter| lifter.name}
  end

  def all_lift_total
    self.memberships.map{|mem| mem.lift_total}.sum
  end
end
