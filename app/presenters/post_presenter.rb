class PostPresenter
  attr_reader :posts

  def initialize(posts)
    @posts = posts
  end

  def available_posts
    results = []
    posts.each do |post|
      if available_post(post)
        results << {
          title: post['title'],
          body: post['body'],
          number: post['number']
        }
      end
    end
    results
  end

  private

  def available_post(post)
    post['labels'].any? {|lb| lb['name'] == 'Blog'} && post['locked'] == false
  end
end
