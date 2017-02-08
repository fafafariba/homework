class House < ActiveRecord::Base
  validates :address, :presence => true
  validates :address, :uniquness => true

  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'

  has_many :jobs,
    through: :people, #name of association in this class
    source: :jobs

  #for jobs
    has_one :house,
      through: :person,
      source: :house #name of ASSOCIAtION method

  # def jobs #each person living in the house has a jobs
  #   jobs = []
  #   self.people.each do |person|
  #     jobs += person.job
  #   end
  #   jobs
  # end


end
