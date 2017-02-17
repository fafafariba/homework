module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
  end

  def receive_toy(toy_name)
    Toy.find_or_create_by(name: toy_name) do |toy|
      self.toys << toy
    end
  end

end
