class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    @all<<self
    return self
  end

  def self.new_by_name(name)
    @name=name
    save
    return self
  end

  def self.find_by_name(name)
    @@all.each do |s|
      if s.name==name
        return s
      end
    end
    return nil
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name)==nil
      return create_by_name(name)
    else
      return find_by_name(name)
    end
  end

end
