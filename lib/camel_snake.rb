require "camel_snake/version"

module CamelSnake
  def to_pascal
    gsub(/(?:\b|_)([a-z])/) { $1.upcase }
  end

  def to_camel firstletter=:capital
    if firstletter == :capital
      to_pascalcase
    else
      gsub(/_([a-z])/) { $1.upcase }
    end
  end

  def to_snake
    gsub(/\b([A-Z]+)/) { $1.downcase }.gsub(/(.)([A-Z]+)/, '\1_\2').downcase
  end
end
