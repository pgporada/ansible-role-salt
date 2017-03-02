#!/usr/bin/env bats

# You should clean these up.
# Test driven development works as follows:
# 1) Write a test for the feature you will be implementing
# 2) Run: bundle exec kitchen verify
# 3) The verify step will fail on your new test because the code to make the test work does not yet exist
# 4) Write the ansible code that will make your new test pass
# 5) Run: bundle exec kitchen verify
# 6) You will see your previously failing test pass
# 7) Rinse and repeat until the role is done

@test "Ensure wget is installed" {
    run rpm -q wget
    [ "$status" -eq 0 ]
}

@test "Ensure a command has specific output"
    set -o pipefail
    run bash -c "grep 127.0.0.1 /etc/hosts | grep -o localhost"
    set +o pipefail
    [ "$status" -eq 0 ]
    [[ "$output" =~ "localhost" ]]
}

@test "Ensure a complex command returns successfully" {
    set -o pipefail
    run bash -c "ps aux | grep root | grep -v kworker"
    set +o pipefail
    [ "$status" -eq 0 ]
}

@test "Ensure THING can run" {
    systemctl start THING
    run systemctl is-active THING
    [ "$status" -eq 0 ]
}

@test "Failing test" {
    false
}

@test "Skipped test" {
    skip
}
