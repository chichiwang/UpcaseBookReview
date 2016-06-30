module WebpackHelper
  ASSETS_DIR = "/assets"
  SCRIPTS_DIR = "#{ASSETS_DIR}/scripts"
  STYLES_DIR = "#{ASSETS_DIR}/styles"

  def webpack_script_tag(bundle_name)
    uri = "#{SCRIPTS_DIR}/#{bundle_name}.js"
    "<script type=\"text/javascript\" src=#{uri} async></script>".html_safe
  end

  def webpack_stylesheet_tag(bundle_name)
    if Rails.env.production?
      uri = "#{STYLES_DIR}/#{bundle_name}.css"
      "<link href=\"#{uri}\" rel=\"stylesheet\" type=\"text/css\" />".html_safe
    else
      "".html_safe
    end
  end
end
