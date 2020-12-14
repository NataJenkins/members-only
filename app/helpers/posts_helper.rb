module PostsHelper
  def check
      @posts.each do |post|
        concat content_tag(:tr,content_tag(:td,post.post) + content_tag(:td,(post.user.email if user_signed_in? )) + content_tag(:td,(link_to 'Show', post)) + content_tag(:td,(content_tag(:td,(link_to 'Show', post)))) + content_tag(:td,(link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }))
)
      end
  end
end
