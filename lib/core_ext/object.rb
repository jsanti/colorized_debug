class Object
  def cdebug(*attrs)
    RAILS_DEFAULT_LOGGER.info "--------------------------------------------------------------------------------".green

    attrs.each do |attr|
      RAILS_DEFAULT_LOGGER.info attr.inspect.red
    end

    result = yield if block_given?

    RAILS_DEFAULT_LOGGER.info "--------------------------------------------------------------------------------".green

    result
  end
end
