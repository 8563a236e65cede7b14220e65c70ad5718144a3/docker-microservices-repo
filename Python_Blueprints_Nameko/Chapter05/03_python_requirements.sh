# Install pip-tools
pip install pip-tools

# Create requirements folder
mkdir requirements

# Create base.in and test.in
echo nameko > requirements/base.in
echo pytest > requirements/test.in

# Compile requirements
pip-compile requirements/base.in
pip-compile requirements/test.in

# Install nameko
pip install nameko
