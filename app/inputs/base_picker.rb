class BasePicker < SimpleForm::Inputs::DateTimeInput

  def input
    timestamp = input_html_options[:value]
    if timestamp.blank?
      method_value = object.try(attribute_name)
      timestamp = template.l(method_value) if method_value # default value
    end

    #create the input

    datetime_input = @builder.text_field(attribute_name, { data: { format: @picker_format }, value: timestamp }.merge(input_html_options))

    # add calendar button

    calendar_icon = template.content_tag(:i, nil, {  class: "icon-calendar", data: { :"time-icon" => "icon-time", :"date-icon" => "icon-calendar"} })
    calendar_button = template.content_tag(:span, calendar_icon, { class: "add-on" })

    # add 'NOW' button to the input

    # now_icon = template.content_tag(:i, nil, { class: "icon-check" })
    # now_button = template.content_tag(:a, now_icon+"now", { class: "btn btn-now", data: { behaviour: "now-button"} })

    template.content_tag(:div, datetime_input + calendar_button, data: { behaviour: @picker_name }, class: "input-append date")
  end

end
