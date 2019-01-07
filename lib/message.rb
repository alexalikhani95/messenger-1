require 'data_mapper'

class Message

  #attr_reader :content, :time, :id

  #def initialize(content, id = nil)
  #@content = content
  #@time = Time.now
  #@id = id
  #end

  include DataMapper::Resource

  property :id,         Serial    # An auto-increment integer key
  property :content,       Text      # A text block, for longer string data.
  property :created_at, DateTime  # A DateTime, for any date you might like.


end
