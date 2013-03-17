require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

animals=['Dog','Cat','Penguin','Jaguar']
animals.each do | animal|
	template=ERB.new "I am a <%=animal%>"
	puts template.result(binding)
end

	men=['first name','last name','age']
	    men.each do |detail|
		template=ERB.new "what is your <%=detail%>?"
         puts template.result(binding) 

end

os='linux Ubuntu'
version=10.1
template = ERB.new "my <%=os%> version is: #{version}"
puts template.result(binding)