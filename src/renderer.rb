require_relative 'renderer_default'
require_relative 'renderer_cool'
def renderer_named(id)
  id=='cool' ? CoolRenderer.new : DefaultRenderer.new 
end
# def register_renderer(renderer)
#   @renderers.push(renderer)
# end

# # def renderer
# #   @instance 
# # end

# def install_renderer(id)
#   found = @renderers.find {|r|r.id==id}
#   if found
#     @instance = found
#   else
#     throw "#{id} renderer not found"
#   end
# end

# @renderers = []
# @instance=CoolRenderer.new
# def init_renderers
  # register_renderer(@instance)
  # register_renderer(CoolRenderer.new)
# end
# init_renderers