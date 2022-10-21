Dir[Rails.root.join('lib/*.rb')].sort.each do |file|
    require file
end