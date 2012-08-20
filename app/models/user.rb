class User < ActiveRecord::Base

  include Mongoid::Document

  field :user, :type => String



end
