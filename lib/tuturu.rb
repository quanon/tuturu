require 'tuturu/version'

module Tuturu
  module Extension
    def tuturu
      true
    end

    alias_method(:to_true, :tuturu)
  end
end

class BasicObject
  include(::Tuturu::Extension)
end

module Kernel
  def Tuturu(_)
    tuturu
  end
end
