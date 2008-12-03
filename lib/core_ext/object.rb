class Object
  def cdebug(*attrs)
    logger.info "--------------------------------------------------------------------------------".green

    attrs.each do |attr|
      logger.info attr.inspect.red
    end

    result = yield if block_given?

    logger.info "--------------------------------------------------------------------------------".green

    result
  end
end
