#!/usr/bin/env bash
set -euo pipefail

ROS_DISTRO="${ROS_DISTRO:-melodic}"
source "/opt/ros/${ROS_DISTRO}/setup.bash"

dpkg -s "ros-${ROS_DISTRO}-scout-msgs" >/dev/null
test "$(rospack find scout_msgs)" = "/opt/ros/${ROS_DISTRO}/share/scout_msgs"
test -f "/opt/ros/${ROS_DISTRO}/share/scout_msgs/msg/ScoutStatus.msg"
test -f "/opt/ros/${ROS_DISTRO}/share/scout_msgs/msg/ScoutMotorState.msg"
test -f "/opt/ros/${ROS_DISTRO}/include/scout_msgs/ScoutStatus.h"

echo "Installed package check passed"
