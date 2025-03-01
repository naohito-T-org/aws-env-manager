#!/usr/bin/env bash


Describe 'envtools test'

  Describe 'Variable Test'
    Include env-tools

    It "Variable Default value Test"

      The variable OUTPUT_ENV_PATH should equal "$(pwd)"

      The variable ENV_FILE_PATH should equal "$(pwd)"

      The variable SAMPLE_FILE_PATH should equal "$(pwd)"

      The variable ENV_FILE_NAME should equal "/.env.local"

      The variable SAMPLE_FILE_NAME should equal "/.env.sample"

    End
  End


  Describe 'Option Test'
    It "Not -p option failure test"
      When run source ./env-tools -n a

      The output should include "-pオプションは必須オプションです。"
      The status should be failure
    End

    It "-h option test"
      When run source ./env-tools -h

      The output should include "[OPTION]..."
      The status should be failure
    End
  End

  # Describe 'Option Test'
  #   Include env-tools

  #   It "-o option test"
      
  #     preserve() { %preserve OUTPUT_ENV_PATH; }
  #     AfterRun preserve

  #     When run source ./env-tools -o ".env.test"
      

  #     The variable OUTPUT_ENV_PATH should equal ".env.test"
  #     The output should include "-pオプションは必須オプションです。"
  #     The status should be failure
  #   End
  # End


  Describe 'Prepare check Test'
    Include env-tools

    It "jqコマンドがインストールされている"
      When run prepare_check
      The status should be success
    End
  End

End
