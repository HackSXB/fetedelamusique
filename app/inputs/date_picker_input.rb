class DatePickerInput < BasePicker
  def input
    @picker_name = 'date_picker'
    @picker_format = "yyyy-MM-dd"
    super
  end
end
