module ApplicationHelper
  def current_class?(test_path)
    return 'navbar__link--link--active' if request.path == test_path
    ''
  end
end
