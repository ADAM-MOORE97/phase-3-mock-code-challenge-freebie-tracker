class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        Freebie.find_by_dev_id(self.id).item_name == item_name
    end
    def give_away(dev, freebie)
        freebie.update(dev: dev) unless freebie.dev != self
            
        end
    end
end
