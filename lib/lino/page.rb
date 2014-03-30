
module Lino
	class Page

		def initialize(title, longtitle = nil)
			@title = title
			@longtitle = longtitle
		end

		def render
			if @longtitle 
				title = @longtitle
			else 
				title = @title
			end
			page = <<-PAGEHDR
---
layout: page
title: "#{title}"
date: #{Time.now}
tags: page
---
your page content goes here...
PAGEHDR
		end

		def name
			@title
		end
	end
end