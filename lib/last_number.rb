require 'aws'
require 'pry'
require 'json'
require 'last_number/version'
require 'last_number/store'
require 'last_number/store/s3'
require 'last_number/store/memory'
require 'last_number/store/file_system'
require 'last_number/ask_for'
require 'last_number/wrangler'

module AWS
  def self.s3
    AWS::S3
  end
end
