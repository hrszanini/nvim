return {
	'nvim-orgmode/orgmode',
	event = 'VeryLazy',
	config = function()
		local org_base_path = '~/OrgMode/'
		require('orgmode').setup({
			org_agenda_files = org_base_path .. '**/*',
			org_default_notes_file = org_base_path .. 'refile.org',
		})
	end,
}
