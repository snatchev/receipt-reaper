When /^I fill "([^"]*)" into the "([^"]*)" text box$/ do |text, text_box_name|
  fill_in(text_box_name, :with => text)
end

Then /^the following row should exist in the grid$/ do |table|
  table.hashes.each do |row_hash|
    row_hash.keys.each do |key|
      with_scope(".table .#{key}") do
        assert page.has_content?(row_hash[key])
      end
    end
  end
end


