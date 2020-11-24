class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memeberships
    Membership.all.select{|mem| mem.lifter == self}
  end

  def self.average_lift
    @@all.map{|lifter| lifter.lift_total}.xum / @@all.length
  end

  def mem_cost
    self.memberships.map{|mem| mem.cost}.sum
  end

  def sign_up(gym, cost)
    Membership.new(gym, self, cost)
  end
end
