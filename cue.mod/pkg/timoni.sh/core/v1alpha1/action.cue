// Copyright 2023 Stefan Prodan
// SPDX-License-Identifier: Apache-2.0

package v1alpha1

Action: {
	Force: { "action.timoni.sh/force": ActionStatus.Enabled }
	Oneoff: { "action.timoni.sh/one-off": ActionStatus.Enabled }
	Keep: { "action.timoni.sh/prune": ActionStatus.Disabled }
}

ActionStatus: {
	Enabled:  "enabled"
	Disabled: "disabled"
}
