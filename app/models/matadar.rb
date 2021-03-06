class Matadar < ActiveRecord::Base
  
  def self.search(search)
    wildcard_search = "%#{search}%"
    if search
      where("name LIKE ? OR list_index LIKE ?", wildcard_search, wildcard_search)
    else
      all
    end
  end

end
