#Write a program that loads some text messages from a YAML file. 
#YAML::load_file 

require 'yaml'
MESSAGES = YAML.load_file('calculator_message.yml')

#Psych class contains methods that are useful for working with YAML files 