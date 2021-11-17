class Corrector
  def correct_name(name)
    get_name = name.strip.capitalize

    if get_name.length > 10
      get_name[0, 10]
    else
      get_name
    end
  end
end
