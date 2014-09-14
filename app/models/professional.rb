class Professional < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode, if: ->(obj){ obj.full_address_changed? }

  validates :civility, :first_name, :last_name, :specialty, :address, :zip_code, :city, :country, presence: true

  CIVILITIES = %i(mr mrs)

  def full_address
    "#{address}, #{zip_code} #{city}, #{country}"
  end

  def full_address_changed?
    address_changed? || zip_code_changed? || city_changed? || country_changed?
  end
end
