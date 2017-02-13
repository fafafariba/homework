class Cat < ActiveRecord::Base
  #macro 'belongs_to' does the same as below
  belongs_to :house, {
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'House' #symbol or string
  }
  #args      name of method, name of col on other table, name of col in
  # this table, Cat table, that points to

  # def house
  #   House.find(self.house_id)
  # end
end
