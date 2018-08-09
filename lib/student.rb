class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    @name= student_hash[:name]
    @location= student_hash[:location]
    @profile_url= student_hash[:profile_url]
    @@all << self
  end

  def self.create_from_collection(students_array)

      students_array.each { |chr|
           Student.new(chr)
           }
  end

  def add_student_attributes(attributes_hash)
               attributes_hash.each{|k,v|
                 binding.pry
                               self.send(k.to_s+"=",v)
                  # @twitter=  v if k.to_s == "twitter"
                  #
                  # @linkedin= v if k.to_s == "linkedin"
                  # @github= v if k.to_s == "github"
                  # @blog=v if k.to_s == "blog"
                  # @profile_quote= v if k.to_s == "profile_quote"
                  # @bio= chr[:bio]
               }
  end

  def self.all
    @@all
  end
end
