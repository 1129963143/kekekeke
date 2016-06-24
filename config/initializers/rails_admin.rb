RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  #config.authenticate_with :cancan
  #由于有一定可能与cancancan的ability发生冲突，所以此处需要设置第二个参数，否则可以使用默认的ability
   config.authorize_with :cancan, Ability

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end

  #静态导航子栏
  config.navigation_static_links = {
      'Google' => 'http://www.google.com',
      '百度' => 'https://www.baidu.com'
  }
  #静态导航主栏
  config.navigation_static_label = "我的链接"

  #主标题与副标题
  #config.main_app_name = ["Cool app", "BackOffice"]

  config.model 'User' do
    navigation_icon 'icon-user'     #显示在模型名称前的icon

    #visible false            #隐藏此模型类的显示

    #navigation_label '用户'    #设置标签栏名称，与上面的navigation_static_label类似

    #weight 1      #排序


    #字段昵称话
    configure :email do
      # label "邮箱"
      #全局隐藏此字段
      # hide

    end

    edit do
      group :default do
        show   # show or hide ,执行此动作时隐藏还是显示
        label "用户"
        help '这是帮助信息吗？'
      end
    end

    list do
      #列表状态下显示那些字段
      # field :email
      # field :created_at

      #配置：在列表状态下隐藏此字段
      # configure :email do
      #   hide
      # end
    end
  end




end
