class House < ActiveRecord::Base
  validates :address, presence: true, uniquness:  true
  validates :ca_only

  def ca_only
    unless self.address.include?("CA")
      self.errors[:address] << "Address must be in CA" #array of errors
    end
  end

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
