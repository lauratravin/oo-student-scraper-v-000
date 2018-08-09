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
               attributes_hash.each{|chr|
                  @twitter=  chr[twitter:] 
                  @linkedin= chr[:linkedin] if chr[:linkedin]
                  @github= chr[:github] if chr[:github]
                  @blog= chr[:blog] if chr[:blog]
                  @profile_quote= chr[:profile_quote]
                  @bio= chr[:bio]
               }
  end

  def self.all
    @@all
  end
end
