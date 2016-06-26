class TitleStyle
  attr_accessor :title_image_url, :title_content, :class_style

  def initialize(title_content, class_style='', image_url='')
    @title_image_url = image_url.presence || "http://img.blog.163.com/photo/zcxiDUbwjNbeKuvtpTAczQ==/1442559255642204898.jpg"
    @title_content = title_content
    @class_style = class_style.presence || ''
  end
end