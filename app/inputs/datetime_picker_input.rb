class DatetimePickerInput < BasePicker
  def input
    @picker_name = 'datetime_picker'
    @picker_format = "yyyy-MM-dd hh:mm"
    super
  end
end
