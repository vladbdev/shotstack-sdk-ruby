=begin
#Shotstack

#Shotstack is a video, image and audio editing service that allows for the automated generation of videos, images and audio using JSON and a RESTful API.  You arrange and configure an edit and POST it to the API which will render your media and provide a file  location when complete.  For more details visit [shotstack.io](https://shotstack.io) or checkout our [getting started](https://shotstack.gitbook.io/docs/guides/getting-started) documentation. There are two main API's, one for editing and generating assets (Edit API) and one for managing hosted assets (Serve API).  The Edit API base URL is: <b>https://api.shotstack.io/{version}</b>  The Serve API base URL is: <b>https://api.shotstack.io/serve/{version}</b>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

# Common files
require 'shotstack/api_client'
require 'shotstack/api_error'
require 'shotstack/version'
require 'shotstack/configuration'

# Models
require 'shotstack/models/asset_render_response'
require 'shotstack/models/asset_response'
require 'shotstack/models/asset_response_attributes'
require 'shotstack/models/asset_response_data'
require 'shotstack/models/audio_asset'
require 'shotstack/models/clip'
require 'shotstack/models/crop'
require 'shotstack/models/edit'
require 'shotstack/models/font'
require 'shotstack/models/html_asset'
require 'shotstack/models/image_asset'
require 'shotstack/models/luma_asset'
require 'shotstack/models/offset'
require 'shotstack/models/output'
require 'shotstack/models/poster'
require 'shotstack/models/queued_response'
require 'shotstack/models/queued_response_data'
require 'shotstack/models/range'
require 'shotstack/models/render_response'
require 'shotstack/models/render_response_data'
require 'shotstack/models/shotstack_destination'
require 'shotstack/models/size'
require 'shotstack/models/soundtrack'
require 'shotstack/models/thumbnail'
require 'shotstack/models/timeline'
require 'shotstack/models/title_asset'
require 'shotstack/models/track'
require 'shotstack/models/transition'
require 'shotstack/models/video_asset'

# APIs
require 'shotstack/api/edit_api'
require 'shotstack/api/endpoints_api'
require 'shotstack/api/serve_api'

module Shotstack
  class << self
    # Customize default settings for the SDK using block.
    #   Shotstack.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
