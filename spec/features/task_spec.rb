require 'spec_helper'

feature 'Creating a task' do
  scenario 'adding a task with the new task button' do
    visit '/tasks'
    click_link 'New Task'
    fill_in 'Name', :with => 'wash car'
    click_button 'Add Task'
    expect(page).to have_content 'Wash car'
  end
end

feature 'Validating name on new task' do
  scenario 'leave the name blank and get name validation errors' do
    visit '/tasks'
    click_link 'New Task'
    fill_in 'Name', :with => 'wash car'
    click_button 'Add Task'
    expect(page).to have_content ''
  end
end
