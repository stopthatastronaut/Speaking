


# one stack, based on a module

module "myfirststack" {
	source = "modules/submodule1"
	input1 = "somevalue"
	input2 = "someothervalue"
}

module "mysecondstack" {
	source = "modules/submodule1"
	input1 = "somevalue"
	input2 = "someothervalue"
}

# OK, now you want to make a module change, but you ONLY want it applied to one stack.
# How do you do this?
# Sure, you could add a variable, and turn it on for one stack, and handle the variance in your code
# or you could just move the module to a separate git repo and version it properly