# Install jinja2
pip install jinja2

# Generate new base.in file with jinja2
echo jinja2 >> requirements/base.in
pip-compile requirements/base.in
pip-compile requirements/test.in