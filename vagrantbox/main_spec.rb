require_relative 'spec_helper'

plugins_list = [
  'ruby-runtime              ruby-runtime                         0.12',
  'antisamy-markup-formatter OWASP Markup Formatter Plugin        1.1 (1.3)',
  'github-api                GitHub API Plugin                    1.59',
  'ansicolor                 AnsiColor                            0.4.0 (0.4.1)',
  'external-monitor-job      External Monitor Job Type Plugin     1.4',
  'build-with-parameters     Build With Parameters                1.3',
  'pam-auth                  PAM Authentication plugin            1.1 (1.2)',
  'delivery-pipeline-plugin  Delivery Pipeline Plugin             0.8.7 (0.8.8)',
  'mailer                    Mailer Plugin                        1.11 (1.12)',
  'junit                     JUnit Plugin                         1.2-beta-4 (1.3)',
  'locks-and-latches         Hudson Locks and Latches plugin      0.6',
  'cvs                       CVS Plug-in                          2.11 (2.12)',
  'github                    GitHub plugin                        1.10',
  'ldap                      LDAP Plugin                          1.6 (1.11)',
  'jquery                    jQuery plugin                        1.7.2-1',
  'windows-slaves            Windows Slaves Plugin                1.0',
  'timestamper               Timestamper                          1.5.14',
  'mapdb-api                 MapDB API Plugin                     1.0.6.0',
  'config-autorefresh-plugin Config AutoRefresh Plugin            1.0',
  'ant                       Ant Plugin                           1.2',
  'publish-over-ssh          Publish Over SSH                     1.12',
  'scm-api                   SCM API Plugin                       0.2',
  'multiple-scms             Multiple SCMs plugin                 0.3',
  'buildgraph-view           buildgraph-view                      1.1.1',
  'ssh-credentials           SSH Credentials Plugin               1.10',
  'log-parser                Log Parser Plugin                    1.0.8',
  'show-build-parameters     Show Build Parameters plugin         1.0',
  'ci-game                   Continuous Integration game          1.20',
  'naginator                 Naginator                            1.13',
  'jobConfigHistory          Job Configuration History Plugin     2.10',
  'javadoc                   Javadoc Plugin                       1.1 (1.3)',
  'throttle-concurrents      Throttle Concurrent Builds Plug-in   1.8.4',
  'build-flow-plugin         CloudBees Build Flow plugin          0.17',
  'copyartifact              Copy Artifact Plugin                 1.32.1',
  'mask-passwords            Mask Passwords Plugin                2.7.2',
  'token-macro               Token Macro Plugin                   1.10',
  'envinject                 Environment Injector Plugin          1.90',
  'analysis-core             Static Analysis Utilities            1.65',
  'flexible-publish          Flexible Publish Plugin              0.13',
  'greenballs                Green Balls                          1.14',
  'build-pipeline-plugin     Build Pipeline Plugin                1.4.5',
  'maven-plugin              Maven Integration plugin             2.7.1 (2.8)',
  'ssh-slaves                SSH Slaves plugin                    1.9',
  'matrix-project            Matrix Project Plugin                1.3 (1.4)',
  'git                       GIT plugin                           2.3.1',
  'git-client                GIT client plugin                    1.12.0',
  'credentials               Credentials Plugin                   1.18',
  'gitlab-hook               Gitlab Hook Plugin                   1.1.0',
  'matrix-auth               Matrix Authorization Strategy Plugin 1.1 (1.2)',
  'run-condition             Run Condition Plugin                 1.0',
  'ssh-agent                 SSH Agent Plugin                     1.5',
  'github-oauth              Github Authentication plugin         0.20',
  'rebuild                   Rebuilder                            1.22',
  'configurationslicing      Configuration Slicing plugin         1.40',
  'parameterized-trigger     Parameterized Trigger plugin         2.25',
  'build-timeout             build timeout plugin                 1.14',
  'job-dsl                   Job DSL                              1.26 (1.27)',
  'subversion                Subversion Plug-in                   1.54 (2.4.5)',
  'job-log-logger-plugin     Job Log Logger Plugin                1.0',
  'translation               Translation Assistance plugin        1.10 (1.12)'
]

describe command('sudo java -jar /opt/jenkins/jenkins-cli.jar -s http://127.0.0.1:8080/ list-plugins') do
  plugins_list.each do |plugin|
    its(:stdout) { should include plugin }
  end
end

