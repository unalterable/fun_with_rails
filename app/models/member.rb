class Member < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      member_hash = row.to_hash
      member = Member.where(id: member_hash["id"]).or(Member.where(email: member_hash["email"]))

      if member.count == 1
        member.first.update_attributes(member_hash)
      else
        Member.create!(member_hash)
      end

    end
  end
end
