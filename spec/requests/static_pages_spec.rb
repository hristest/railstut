require 'spec_helper'

describe 'StaticPages' do
	
	describe 'HomePage'	do

		it 'should have the content "Home"' do
			visit '/static_pages/home'
			page.should have_content('Home')
		end

		it 'should have title "Home"' do
			visit '/static_pages/home'
			page.should have_selector('title', :text => 'Rails Tut | Home')
		end
	end

	describe 'HelpPage' do

		it 'should have the content "Help"' do
			visit '/static_pages/help'
			page.should have_content('Help')
		end

		it 'should have title "Help"' do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Rails Tut | Help')
		end
	end

	describe 'AboutPage' do

		it 'should have the content "About Us"' do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end

		it 'should have title "About Us"' do
			visit '/static_pages/about'
			page.should have_selector('title', :text => 'Rails Tut | About Us')
		end
	end

end