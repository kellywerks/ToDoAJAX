require 'spec_helper'

feature 'Creating a task' do
  scenario 'adding a task with the new task button' do
    visit '/tasks/new'
    fill_in 'Name', :with => 'wash car'
    click_button 'Add Task'
    expect(page).to have_content 'wash car'
  end
end
