require 'paperclip'

module Paperclip
  module Heroku
    module ClassMethods
      # Adds a :heroku option to Paperclip's +has_attached_file+ method.
      #
      # Setting +:heroku => true+ configures Paperclip to use Amazon S3 on Heroku
      # and the filesystem in development/testing. S3 storage settings can be set
      # on the command line using +heroku config:add+ -- Paperclip needs to know
      # your S3_BUCKET, S3_KEY, and S3_SECRET.
      #
      # @example
      #   class User
      #     has_attached_file :avatar, :heroku => true
      #   end
      #    
      # +:heroku => true+ will also set the Paperclip :path and :url options if 
      # you haven't provided values for them. The gem also assumes that Heroku
      # runs in your Rails production environment.
  	  def has_attached_file(name, options = {})
  	    if options[:heroku] == true
  	      # Set per-environment options for Heroku/development
  	      #
  	      # :storage is a given. Other options are only set
  	      # if the user hasn't provided values for them.
  	      options[:storage]  = heroku_storage
  	      options[:path]   ||= heroku_path
  	      options[:url]    ||= heroku_url
  	      options[:bucket] ||= ENV['S3_BUCKET']
  	      options[:s3_credentials] ||= {
            :access_key_id      => ENV['S3_KEY'],
            :secret_access_key  => ENV['S3_SECRET']
  	      }
  	    end
	    
  	    super
  	  end
	  
  	  private
  	  def heroku_storage
        Rails.env.production? ? :s3 : :filesystem	   
  	  end
	  
  	  def heroku_path(base = heroku_url)
        Rails.env.production? ?  base : ['public', base].join
  	  end
	  
  	  def heroku_url
        '/:attachment/:id/:style.:extension'	   
  	  end
    end
  end
  
	module ClassMethods
	  include Paperclip::Heroku::ClassMethods
	end
end