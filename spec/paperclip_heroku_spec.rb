require 'spec_helper'

describe Paperclip::Heroku do
	describe '#has_attached_file :heroku => true in development' do
    before(:each) do
      # setup an active record object using has_attached_file(:avatar, :heroku => true)
      #
      # @object = something
      #
      # Also need to force Rails to use development environment      
    end  
    
    # Check options using @object.avatar.options[:storage], etc
		it 'should set :storage to :filesystem' do
			# todo
		end
		
		it 'should set :path to public/:attachment/:id/:style.:extension' do
      # todo
		end
		
		it 'should set :url to /:attachment/:id/:style.:extension' do
      # todo
		end
		
		it 'should set :bucket to ENV["S3_KEY"]' do
      # todo
		end
		
		it 'should set :s3_credentials[:access_key_id] to ENV["S3_KEY"]' do
      # todo
		end
		
		it 'should set :s3_credentials[:secret_access_key] to ENV["S3_SECRET"]' do
      # todo
		end
	end
	
	describe '#has_attached_file :heroku => true in production' do
    before(:each) do      
      # setup an active record object using has_attached_file(:avatar, :heroku => true)
      #
      # @object = something
      #
      # Also need to force Rails to use production environment
    end  
    
    # Check options using @object.avatar.options[:storage], etc
		it 'should set :storage to :s3' do
			# todo
		end
		
		it 'should set :path to /:attachment/:id/:style.:extension' do
      # todo
		end		
	end	
end