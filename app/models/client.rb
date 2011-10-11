# == Schema Information
#
# Table name: clients
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  client_type :string(255)
#  program     :string(255)
#  location    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#


class Client < ActiveRecord::Base
end



