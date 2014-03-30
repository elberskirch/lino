require 'rubygems'
require 'thor'
require 'thor/actions'
require 'lino/page'

module Lino
	class CLI < Thor
      include Thor::Actions
		method_option :title, :type => :string
		desc 'page "pagename/index.md" [--title="longer page name"]', "create a new page"
		def page(pagename)
			if File.basename(pagename) =~ /index.*/
				default_name = File.dirname(pagename)
			else 
				default_name = File.basename(pagename, File.extname(pagename))
			end 

			page = Page.new(default_name, options[:title])
			create_file pagename, page.render
		end 
	end
end
