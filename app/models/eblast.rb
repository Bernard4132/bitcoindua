class Eblast < ApplicationRecord

def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		Eblast.create! row.to_hash
	end
end

end
