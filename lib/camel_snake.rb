require "camel_snake/version"

# Mix-in for String to convert CamelCase and snake_case.
module CamelSnake

  # @return [String] PascalStyle string
  def to_pascal
    gsub(/(?:\b|_)([a-z])/) { $1.upcase }
  end

  # @param firstletter [Symbol] flag to capitalize first letter or not
  # @return [String] CamelCase or camelCase string
  def to_camel firstletter=:capital
    if firstletter == :capital
      to_pascal
    else
      gsub(/_([a-z])/) { $1.upcase }
    end
  end

  # @return [String] snake_case string
  def to_snake
    gsub(/\b([A-Z]+)/) { $1.downcase }.gsub(/(.)([A-Z]+)/, '\1_\2').downcase
  end
end
