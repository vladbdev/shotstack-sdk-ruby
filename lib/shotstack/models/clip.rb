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
  # A clip is a container for a specific type of asset, i.e. a title, image, video, audio or html. You use a Clip to define when an asset will display on the timeline, how long it will play for and transitions, filters and effects to apply to it.
  class Clip
    # The type of asset to display for the duration of this Clip. Value must be one of:   <ul>     <li><a href=\"#tocs_videoasset\">VideoAsset</a></li>     <li><a href=\"#tocs_imageasset\">ImageAsset</a></li>     <li><a href=\"#tocs_titleasset\">TitleAsset</a></li>     <li><a href=\"#tocs_htmlasset\">HtmlAsset</a></li>     <li><a href=\"#tocs_audioasset\">AudioAsset</a></li>     <li><a href=\"#tocs_lumaasset\">LumaAsset</a></li>   </ul>
    attr_accessor :asset

    # The start position of the Clip on the timeline, in seconds.
    attr_accessor :start

    # The length, in seconds, the Clip should play for.
    attr_accessor :length

    # Set how the asset should be scaled to fit the viewport using one of the following options:    <ul>     <li>`cover` - stretch the asset to fill the viewport without maintaining the aspect ratio.</li>     <li>`contain` - fit the entire asset within the viewport while maintaining the original aspect ratio.</li>     <li>`crop` - scale the asset to fill the viewport while maintaining the aspect ratio. The asset will be cropped if it exceeds the bounds of the viewport.</li>     <li>`none` - preserves the original asset dimensions and does not apply any scaling.</li>   </ul>
    attr_accessor :fit

    # Scale the asset to a fraction of the viewport size - i.e. setting the scale to 0.5 will scale asset to half the size of the viewport. This is useful for picture-in-picture video and  scaling images such as logos and watermarks.
    attr_accessor :scale

    # Place the asset in one of nine predefined positions of the viewport. This is most effective for when the asset is scaled and you want to position the element to a specific position. <ul>   <li>`top` - top (center)</li>   <li>`topRight` - top right</li>   <li>`right` - right (center)</li>   <li>`bottomRight` - bottom right</li>   <li>`bottom` - bottom (center)</li>   <li>`bottomLeft` - bottom left</li>   <li>`left` - left (center)</li>   <li>`topLeft` - top left</li>   <li>`center` - center</li> </ul>
    attr_accessor :position

    attr_accessor :offset

    attr_accessor :transition

    # A motion effect to apply to the Clip. <ul>   <li>`zoomIn` - slow zoom in</li>   <li>`zoomOut` - slow zoom out</li>   <li>`slideLeft` - slow slide (pan) left</li>   <li>`slideRight` - slow slide (pan) right</li>   <li>`slideUp` - slow slide (pan) up</li>   <li>`slideDown` - slow slide (pan) down</li> </ul>
    attr_accessor :effect

    # A filter effect to apply to the Clip. <ul>   <li>`boost` - boost contrast and saturation</li>   <li>`contrast` - increase contrast</li>   <li>`darken` - darken the scene</li>   <li>`greyscale` - remove colour</li>   <li>`lighten` - lighten the scene</li>   <li>`muted` - reduce saturation and contrast</li>   <li>`invert` - invert colors</li> </ul>
    attr_accessor :filter

    # Sets the opacity of the Clip where 1 is opaque and 0 is transparent.
    attr_accessor :opacity

    attr_accessor :transform

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
        :'asset' => :'asset',
        :'start' => :'start',
        :'length' => :'length',
        :'fit' => :'fit',
        :'scale' => :'scale',
        :'position' => :'position',
        :'offset' => :'offset',
        :'transition' => :'transition',
        :'effect' => :'effect',
        :'filter' => :'filter',
        :'opacity' => :'opacity',
        :'transform' => :'transform'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'asset' => :'Asset',
        :'start' => :'Float',
        :'length' => :'Float',
        :'fit' => :'String',
        :'scale' => :'Float',
        :'position' => :'String',
        :'offset' => :'Offset',
        :'transition' => :'Transition',
        :'effect' => :'String',
        :'filter' => :'String',
        :'opacity' => :'Float',
        :'transform' => :'Transformation'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Shotstack::Clip` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Shotstack::Clip`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'asset')
        self.asset = attributes[:'asset']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'length')
        self.length = attributes[:'length']
      end

      if attributes.key?(:'fit')
        self.fit = attributes[:'fit']
      else
        self.fit = 'crop'
      end

      if attributes.key?(:'scale')
        self.scale = attributes[:'scale']
      end

      if attributes.key?(:'position')
        self.position = attributes[:'position']
      else
        self.position = 'center'
      end

      if attributes.key?(:'offset')
        self.offset = attributes[:'offset']
      end

      if attributes.key?(:'transition')
        self.transition = attributes[:'transition']
      end

      if attributes.key?(:'effect')
        self.effect = attributes[:'effect']
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'opacity')
        self.opacity = attributes[:'opacity']
      else
        self.opacity = 1
      end

      if attributes.key?(:'transform')
        self.transform = attributes[:'transform']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @asset.nil?
        invalid_properties.push('invalid value for "asset", asset cannot be nil.')
      end

      if @start.nil?
        invalid_properties.push('invalid value for "start", start cannot be nil.')
      end

      if @length.nil?
        invalid_properties.push('invalid value for "length", length cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @asset.nil?
      return false if @start.nil?
      return false if @length.nil?
      fit_validator = EnumAttributeValidator.new('String', ["cover", "contain", "crop", "none"])
      return false unless fit_validator.valid?(@fit)
      position_validator = EnumAttributeValidator.new('String', ["top", "topRight", "right", "bottomRight", "bottom", "bottomLeft", "left", "topLeft", "center"])
      return false unless position_validator.valid?(@position)
      effect_validator = EnumAttributeValidator.new('String', ["zoomIn", "zoomOut", "slideLeft", "slideRight", "slideUp", "slideDown"])
      return false unless effect_validator.valid?(@effect)
      filter_validator = EnumAttributeValidator.new('String', ["boost", "contrast", "darken", "greyscale", "lighten", "muted", "negative"])
      return false unless filter_validator.valid?(@filter)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fit Object to be assigned
    def fit=(fit)
      validator = EnumAttributeValidator.new('String', ["cover", "contain", "crop", "none"])
      unless validator.valid?(fit)
        fail ArgumentError, "invalid value for \"fit\", must be one of #{validator.allowable_values}."
      end
      @fit = fit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] position Object to be assigned
    def position=(position)
      validator = EnumAttributeValidator.new('String', ["top", "topRight", "right", "bottomRight", "bottom", "bottomLeft", "left", "topLeft", "center"])
      unless validator.valid?(position)
        fail ArgumentError, "invalid value for \"position\", must be one of #{validator.allowable_values}."
      end
      @position = position
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] effect Object to be assigned
    def effect=(effect)
      validator = EnumAttributeValidator.new('String', ["zoomIn", "zoomOut", "slideLeft", "slideRight", "slideUp", "slideDown"])
      unless validator.valid?(effect)
        fail ArgumentError, "invalid value for \"effect\", must be one of #{validator.allowable_values}."
      end
      @effect = effect
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] filter Object to be assigned
    def filter=(filter)
      validator = EnumAttributeValidator.new('String', ["boost", "contrast", "darken", "greyscale", "lighten", "muted", "negative"])
      unless validator.valid?(filter)
        fail ArgumentError, "invalid value for \"filter\", must be one of #{validator.allowable_values}."
      end
      @filter = filter
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          asset == o.asset &&
          start == o.start &&
          length == o.length &&
          fit == o.fit &&
          scale == o.scale &&
          position == o.position &&
          offset == o.offset &&
          transition == o.transition &&
          effect == o.effect &&
          filter == o.filter &&
          opacity == o.opacity &&
          transform == o.transform
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [asset, start, length, fit, scale, position, offset, transition, effect, filter, opacity, transform].hash
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
