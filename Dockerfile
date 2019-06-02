FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\

COPY playbooks /opt/apb/actions
COPY . /opt/ansible/roles/ansible-role-dotfiles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb