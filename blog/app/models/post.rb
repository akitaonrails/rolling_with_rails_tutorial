class Post < ActiveRecord::Base
  has_many :comments

  named_scope :empty_body, :conditions => "(body = '' or body is null)"
  named_scope :this_week, :conditions => ["created_at > ?", 1.week.ago.to_s(:db)]
  named_scope :recent, lambda { |*args| {:conditions => 
	  ["created_at > ?", (args.first || 2.weeks.ago).to_s(:db)]} }
end
