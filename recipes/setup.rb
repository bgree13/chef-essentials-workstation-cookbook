package 'tree' do 
end

file '/etc/motd' do
	content "Property of ... \n"
	mode	'0777'
	owner 	'root'
	group	'root'	
end

