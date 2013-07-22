module Jekyll

  class Excerpt < Liquid::Block
    def render(context)
      id = context["page"]["id"]
      posts = context.registers[:site].posts
      post = posts [posts.index {|post| post.id == id}]

      post.data["excerpt_tag"] = super
    end
  end

end

Liquid::Template.register_tag('excerpt', Jekyll::Excerpt)
