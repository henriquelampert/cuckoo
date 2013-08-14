class Task < ActiveRecord::Base
  default_scope { order(:name) }

  before_destroy :check_associations_are_empty

  has_many :time_entries

  validates_presence_of :name
  validates_uniqueness_of :name

  def check_associations_are_empty
    !time_entries.any?
  end

end