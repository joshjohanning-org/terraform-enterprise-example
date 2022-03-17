# install terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install terraform

# install pre-commit
pip install pre-commit

# tf sec
go install github.com/aquasecurity/tfsec/cmd/tfsec@latest

# tf docs
go install github.com/terraform-docs/terraform-docs@v0.16.0

# tflint
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
tflint --init

# run the above with: pre-commit run -a
