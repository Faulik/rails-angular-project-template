# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  price        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
  paginates_per 20
end
