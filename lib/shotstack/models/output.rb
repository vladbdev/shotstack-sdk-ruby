=begin
#Shotstack

#Shotstack is a video, image and audio editing service that allows for the automated generation of videos, images and audio using JSON and a RESTful API.  You arrange and configure an edit and POST it to the API which will render your media and provide a file  location when complete.  For more details visit [shotstack.io](https://shotstack.io) or checkout our [getting started](https://shotstack.gitbook.io/docs/guides/getting-started) documentation. There are two main API's, one for editing and generating assets (Edit API) and one for managing hosted assets (Serve API).  The Edit API base URL is: <b>https://api.shotstack.io/{version}</b>  The Serve API base URL is: <b>https://api.shotstack.io/serve/{version}</b>

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'date'
require 'time'

module Shotstack
  # The output format, render range and type of media to generate.
  class Output
    # The output format and type of media file to generate. <ul>   <li>`mp4` - mp4 video file</li>   <li>`gif` - animated gif</li>   <li>`jpg` - jpg image file</li>   <li>`png` - png image file</li>   <li>`bmp` - bmp image file</li>   <li>`mp3` - mp3 audio file (audio only)</li> </ul>
    attr_accessor :format

    # The output resolution of the video or image. <ul>   <li>`preview` - 512px x 288px @ 15fps</li>   <li>`mobile` - 640px x 360px @ 25fps</li>   <li>`sd` - 1024px x 576px @ 25fps</li>   <li>`hd` - 1280px x 720px @ 25fps</li>   <li>`1080` - 1920px x 1080px @ 25fps</li> </ul>
    attr_accessor :resolution

    # The aspect ratio (shape) of the video or image. Useful for social media output formats. Options are: <ul>   <li>`16:9` - regular landscape/horizontal aspect ratio (default)</li>   <li>`9:16` - vertical/portrait aspect ratio</li>   <li>`1:1` - square aspect ratio</li>   <li>`4:5` - short vertical/portrait aspect ratio</li>   <li>`4:3` - legacy TV aspect ratio</li> </ul>
    attr_accessor :aspect_ratio

    attr_accessor :size

    # Override the default frames per second. Useful for when the source footage is recorded at 30fps, i.e. on  mobile devices. Lower frame rates can be used to add cinematic quality (24fps) or to create smaller file size/faster render times or animated gifs (12 or 15fps). Default is 25fps. <ul>   <li>`12` - 12fps</li>   <li>`15` - 15fps</li>   <li>`24` - 24fps</li>   <li>`25` - 25fps</li>   <li>`30` - 30fps</li> </ul>
    attr_accessor :fps

    # Override the resolution and scale the video or image to render at a different size. When using scaleTo the asset should be edited at the resolution dimensions, i.e. use font sizes that look best at HD, then use scaleTo to output the file at SD and the text will be scaled to the correct size. This is useful if you want to create multiple asset sizes. <ul>   <li>`preview` - 512px x 288px @ 15fps</li>   <li>`mobile` - 640px x 360px @ 25fps</li>   <li>`sd` - 1024px x 576px @25fps</li>   <li>`hd` - 1280px x 720px @25fps</li>   <li>`1080` - 1920px x 1080px @25fps</li> </ul>
    attr_accessor :scale_to

    # Adjust the output quality of the video, image or audio. Adjusting quality affects  render speed, download speeds and storage requirements due to file size. The default `medium` provides the most optimized choice for all three  factors. <ul>   <li>`low` - slightly reduced quality, smaller file size</li>   <li>`medium` - optimized quality, render speeds and file size</li>   <li>`high` - slightly increased quality, larger file size</li> </ul>
    attr_accessor :quality

    # Loop settings for gif files. Set to `true` to loop, `false` to play only once.
    attr_accessor :repeat

    attr_accessor :range

    attr_accessor :poster

    attr_accessor :thumbnail

    # A destination is a location where output files can be sent to for serving or hosting. By default all rendered assets are automatically sent to the Shotstack hosting destination. [DestinationShotstack](/#tocs_shotstackdestination) is currently the only option with plans to add more in the future such as S3, YouTube, Vimeo and Mux. If you do not require hosting you can opt-out using the  `exclude` property.
    attr_accessor :destinations

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'format' => :'format',
        :'resolution' => :'resolution',
        :'aspect_ratio' => :'aspectRatio',
        :'size' => :'size',
        :'fps' => :'fps',
        :'scale_to' => :'scaleTo',
        :'quality' => :'quality',
        :'repeat' => :'repeat',
        :'range' => :'range',
        :'poster' => :'poster',
        :'thumbnail' => :'thumbnail',
        :'destinations' => :'destinations'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'format' => :'String',
        :'resolution' => :'String',
        :'aspect_ratio' => :'String',
        :'size' => :'Size',
        :'fps' => :'Integer',
        :'scale_to' => :'String',
        :'quality' => :'String',
        :'repeat' => :'Boolean',
        :'range' => :'Range',
        :'poster' => :'Poster',
        :'thumbnail' => :'Thumbnail',
        :'destinations' => :'Array<Destinations>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Shotstack::Output` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Shotstack::Output`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'format')
        self.format = attributes[:'format']
      end

      if attributes.key?(:'resolution')
        self.resolution = attributes[:'resolution']
      end

      if attributes.key?(:'aspect_ratio')
        self.aspect_ratio = attributes[:'aspect_ratio']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'fps')
        self.fps = attributes[:'fps']
      else
        self.fps = 25
      end

      if attributes.key?(:'scale_to')
        self.scale_to = attributes[:'scale_to']
      end

      if attributes.key?(:'quality')
        self.quality = attributes[:'quality']
      else
        self.quality = 'medium'
      end

      if attributes.key?(:'repeat')
        self.repeat = attributes[:'repeat']
      else
        self.repeat = true
      end

      if attributes.key?(:'range')
        self.range = attributes[:'range']
      end

      if attributes.key?(:'poster')
        self.poster = attributes[:'poster']
      end

      if attributes.key?(:'thumbnail')
        self.thumbnail = attributes[:'thumbnail']
      end

      if attributes.key?(:'destinations')
        if (value = attributes[:'destinations']).is_a?(Array)
          self.destinations = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @format.nil?
        invalid_properties.push('invalid value for "format", format cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @format.nil?
      format_validator = EnumAttributeValidator.new('String', ["mp4", "gif", "mp3", "jpg", "png", "bmp"])
      return false unless format_validator.valid?(@format)
      resolution_validator = EnumAttributeValidator.new('String', ["preview", "mobile", "sd", "hd", "1080"])
      return false unless resolution_validator.valid?(@resolution)
      aspect_ratio_validator = EnumAttributeValidator.new('String', ["16:9", "9:16", "1:1", "4:5", "4:3"])
      return false unless aspect_ratio_validator.valid?(@aspect_ratio)
      fps_validator = EnumAttributeValidator.new('Integer', [12, 15, 24, 25, 30])
      return false unless fps_validator.valid?(@fps)
      scale_to_validator = EnumAttributeValidator.new('String', ["preview", "mobile", "sd", "hd", "1080"])
      return false unless scale_to_validator.valid?(@scale_to)
      quality_validator = EnumAttributeValidator.new('String', ["low", "medium", "high"])
      return false unless quality_validator.valid?(@quality)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format Object to be assigned
    def format=(format)
      validator = EnumAttributeValidator.new('String', ["mp4", "gif", "mp3", "jpg", "png", "bmp"])
      unless validator.valid?(format)
        fail ArgumentError, "invalid value for \"format\", must be one of #{validator.allowable_values}."
      end
      @format = format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resolution Object to be assigned
    def resolution=(resolution)
      validator = EnumAttributeValidator.new('String', ["preview", "mobile", "sd", "hd", "1080"])
      unless validator.valid?(resolution)
        fail ArgumentError, "invalid value for \"resolution\", must be one of #{validator.allowable_values}."
      end
      @resolution = resolution
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aspect_ratio Object to be assigned
    def aspect_ratio=(aspect_ratio)
      validator = EnumAttributeValidator.new('String', ["16:9", "9:16", "1:1", "4:5", "4:3"])
      unless validator.valid?(aspect_ratio)
        fail ArgumentError, "invalid value for \"aspect_ratio\", must be one of #{validator.allowable_values}."
      end
      @aspect_ratio = aspect_ratio
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fps Object to be assigned
    def fps=(fps)
      validator = EnumAttributeValidator.new('Integer', [12, 15, 24, 25, 30])
      unless validator.valid?(fps)
        fail ArgumentError, "invalid value for \"fps\", must be one of #{validator.allowable_values}."
      end
      @fps = fps
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] scale_to Object to be assigned
    def scale_to=(scale_to)
      validator = EnumAttributeValidator.new('String', ["preview", "mobile", "sd", "hd", "1080"])
      unless validator.valid?(scale_to)
        fail ArgumentError, "invalid value for \"scale_to\", must be one of #{validator.allowable_values}."
      end
      @scale_to = scale_to
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quality Object to be assigned
    def quality=(quality)
      validator = EnumAttributeValidator.new('String', ["low", "medium", "high"])
      unless validator.valid?(quality)
        fail ArgumentError, "invalid value for \"quality\", must be one of #{validator.allowable_values}."
      end
      @quality = quality
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          format == o.format &&
          resolution == o.resolution &&
          aspect_ratio == o.aspect_ratio &&
          size == o.size &&
          fps == o.fps &&
          scale_to == o.scale_to &&
          quality == o.quality &&
          repeat == o.repeat &&
          range == o.range &&
          poster == o.poster &&
          thumbnail == o.thumbnail &&
          destinations == o.destinations
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [format, resolution, aspect_ratio, size, fps, scale_to, quality, repeat, range, poster, thumbnail, destinations].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Shotstack.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
