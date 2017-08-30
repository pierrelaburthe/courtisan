module ApplicationHelper
# 3 méthodes ajoutés afin de rendre possible le fb login sur la home
# https://stackoverflow.com/questions/27428085/devise-resource-and-resource-name-helpers-in-custom-controller
# http://www.rubydoc.info/github/plataformatec/devise/DeviseController%3Aresource_class

  def resource_name
    :user
  end
  def resource
    @user ||= User.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  def resource_class
    devise_mapping.to
  end

  def emojify(content)
    puts "TOTO IS GOOD"
    h(content).to_str.gsub(/:([\w+-]+):/) do |match|
      if emoji = Emoji.find_by_alias($1)
        #%(<img alt="#$1" src="#{image_path("emoji/#{emoji.image_filename}")}" style="vertical-align:middle" width="20" height="20" />)
        mypath = "/images/emoji/" + emoji.image_filename
        %(<img alt="#$1" src="#{mypath}" style="vertical-align:middle" width="20" height="20" />)
      else
        match
      end
    end.html_safe if content.present?
  end
end
