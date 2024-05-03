#/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied, please give the name of the class you'd like to create"
	exit
fi


className=$1

touch "$className.cpp"
touch "$className.hpp"

echo "#pragma once

class $className {
	private:

	protected:

	public:
		$className();
		~$className();
		$className(const $className& other);
		$className&	operator=(const $className& other);
};" > "$className.hpp"


echo "#include \"$className.hpp\"
#include <iostream>

$className::$className(void){
	std::cout << \"Default constructor called\" << std::endl;
	/*
		set default values
	*/
}

$className::~$className(void){
	std::cout << \"Destructor called\" << std::endl;
}

$className::$className(const $className& ref){
	std::cout << \"Copy constructor called\" << std::endl;
	*this = ref;
}

$className& $className::operator=(const $className& ref){
	std::cout << \"Copy assignment operator called\" << std::endl;
	if (this != &ref)
	{
		/*
		specify instructions here
		*/
	}
	return *this;
}" > "$className.cpp"

echo "\n\ncreating orthodox canonical form for class: $className"