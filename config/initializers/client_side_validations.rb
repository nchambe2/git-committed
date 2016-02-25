# ClientSideValidations Initializer

# Disabled validators. The uniqueness validator is disabled by default for security issues. Enable it on your own responsibility!
# ClientSideValidations::Config.disabled_validators = [:uniqueness]

# Uncomment to validate number format with current I18n locale
# ClientSideValidations::Config.number_format_with_locale = true

# Uncomment the following block if you want each input field to have the validation messages attached.
#
# Note: client_side_validation requires the error to be encapsulated within
# <label for="#{instance.send(:tag_id)}" class="message"></label>
#
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  unless html_tag =~ /^<label/
    %{<div class="field_with_errors input-group">#{html_tag}<label for="#{instance.send(:tag_id)}" class="error_message">#{instance.error_message.first}</label></div>}.html_safe
  else
    %{#{html_tag}<div class="field_with_errors input-group"></div>}.html_safe
  end
end
