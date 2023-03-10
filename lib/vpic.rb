# frozen_string_literal: true

require 'active_support/core_ext/string/inflections'
require 'json'
require 'net/http'
require 'uri'

module VPIC
  API_URL = 'https://vpic.nhtsa.dot.gov/api/'

  class << self
    def decode_vin(vin)
      uri = URI.parse File.join(API_URL, 'vehicles/decodevin', vin)
      uri.query = URI.encode_www_form format: :json
      response = Net::HTTP.get_response uri
      parse_decode_vin_response response
    end

    private

    def parse_decode_vin_response(response)
      {}.tap do |data|
        JSON.parse(response.body)['Results'].each do |value_set|
          data[normalize_key(value_set['Variable'])] = value_set['Value']
        end
      end
    end

    def normalize_key(key)
      key.gsub(/[^A-z0-9]/, '_')
         .squeeze('_')
         .gsub(/(^_+|_+$)/, '')
         .underscore
         .to_sym
    end
  end
end
