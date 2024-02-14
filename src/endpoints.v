module main

import x.vweb

@['/file/:file_name'; get]
fn (app &App) get_file(mut ctx Context, file_name string) vweb.Result {
	return handle_get_file(app, mut ctx, file_name)
}

@['/api/files'; get]
fn (app &App) list_files(mut ctx Context) vweb.Result {
	return handle_list_files(app, mut ctx)
}

@['/api/files'; post]
fn (app &App) create_file(mut ctx Context) vweb.Result {
	return handle_create_file(app, mut ctx)
}

@['/api/files/:file_name'; delete]
fn (app &App) delete_file(mut ctx Context, file_name string) vweb.Result {
	return ctx.json('{}')
}

@['/api/auth'; post]
fn (app &App) auth_user(mut ctx Context) vweb.Result {
	// authenticate
	return ctx.json('{}')
}

@['/'; get]
fn (app &App) health(mut ctx Context) vweb.Result {
	// health status
	return ctx.json('{}')
}
