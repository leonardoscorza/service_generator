class <%= service_name %>Service
  def initialize(<%= 'params' if params.present? %>)
  <% params.each do |p| -%>
  <%= "@#{p} = #{p}" %>
  <% end -%>
end

  def perform
  end
end
