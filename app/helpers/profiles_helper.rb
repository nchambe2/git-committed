module ProfilesHelper
  def separate_with_commas(object_array)
    object_array.pluck('name').join(', ')
  end
end

