class Property < ApplicationRecord
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :reject_both_blank

   def reject_both_blank(attributes)
     if attributes[:id]
        attributes.merge!(_destroy: "1") if attributes[:name].blank? and attributes[:railway].blank? and attributes[:walk_minute].blank?
        !attributes[:name].blank? and attributes[:railway].blank? and attributes[:walk_minute].blank?
     else
        attributes[:name].blank? and attributes[:railway].blank? and attributes[:walk_minute].blank?
     end
   end
  
end
