# https://stackoverflow.com/questions/39561398/is-it-possible-to-install-a-package-only-in-current-project-with-pip

# install
pip install virtualenv
# alternatively
pacman -S python-virtualenv

#usage
cd your_project_folder
virtualenv .myprojectvenv

source .myprojectvenv/bin/activate

deactivate