class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def print_details
        freebie_dev = Dev.find(self.dev_id).name
        freebie_name = self.item_name
        freebie_company = Company.find(self.company_id).name
        "#{freebie_dev} owns a #{freebie_name} from #{freebie_company}"
    end
end


