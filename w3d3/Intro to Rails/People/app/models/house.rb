class House < ActiveRecord::Base
  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'

  has_many :jobs,
    through: :people, #name of association in this class
    source: :jobs


  # def jobs #each person living in the house has a jobs
  #   jobs = []
  #   self.people.each do |person|
  #     jobs += person.job
  #   end
  #   jobs
  # end


end
