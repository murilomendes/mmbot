class Hashtag < ActiveRecord::Base
  validates_presence_of :name
  has_many :faq_hashstags
  has_many :faqs, through: :faq_hashstags
end