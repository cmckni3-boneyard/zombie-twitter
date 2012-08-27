module ApplicationHelper
  
  def flash_type_helper(name)
    case name
       when :notice
         "success"
       when :error
         "error"
       else
         "warning"
     end
  end
end
