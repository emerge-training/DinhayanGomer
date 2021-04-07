app = app or {}

app.FacultyDatabase = {}
app.FacultyDatabase.__index = app.FacultyDatabase
_vm:set_metatable(app.FacultyDatabase, {})

app.FacultyDatabase.INFO = "info"

function app.FacultyDatabase._create()
	local v = _vm:set_metatable({}, app.FacultyDatabase)
	return v
end

function app.FacultyDatabase:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'app.FacultyDatabase'
	self['_isType.app.FacultyDatabase'] = true
	self.db = nil
end

function app.FacultyDatabase:_construct0()
	app.FacultyDatabase._init(self)
	return self
end

app.FacultyDatabase.Info = _g.jk.json.JSONObjectAdapter._create()
app.FacultyDatabase.Info.__index = app.FacultyDatabase.Info
_vm:set_metatable(app.FacultyDatabase.Info, {
	__index = _g.jk.json.JSONObjectAdapter
})

function app.FacultyDatabase.Info._create()
	local v = _vm:set_metatable({}, app.FacultyDatabase.Info)
	return v
end

function app.FacultyDatabase.Info:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'app.FacultyDatabase.Info'
	self['_isType.app.FacultyDatabase.Info'] = true
	self['_isType.jk.lang.StringObject'] = true
	self._id = nil
	self._fname = nil
	self._lname = nil
	self._mname = nil
	self._status = nil
	self._sex = nil
	self._address = nil
	self._sub_handle = nil
	self._timeStampAdded = nil
	self._timeStampLastUpdated = nil
end

function app.FacultyDatabase.Info:_construct0()
	app.FacultyDatabase.Info._init(self)
	do _g.jk.json.JSONObjectAdapter._construct0(self) end
	return self
end

function app.FacultyDatabase.Info:setId(value)
	self._id = value
	do return self end
end

function app.FacultyDatabase.Info:getId()
	do return self._id end
end

function app.FacultyDatabase.Info:setFname(value)
	self._fname = value
	do return self end
end

function app.FacultyDatabase.Info:getFname()
	do return self._fname end
end

function app.FacultyDatabase.Info:setLname(value)
	self._lname = value
	do return self end
end

function app.FacultyDatabase.Info:getLname()
	do return self._lname end
end

function app.FacultyDatabase.Info:setMname(value)
	self._mname = value
	do return self end
end

function app.FacultyDatabase.Info:getMname()
	do return self._mname end
end

function app.FacultyDatabase.Info:setStatus(value)
	self._status = value
	do return self end
end

function app.FacultyDatabase.Info:getStatus()
	do return self._status end
end

function app.FacultyDatabase.Info:setSex(value)
	self._sex = value
	do return self end
end

function app.FacultyDatabase.Info:getSex()
	do return self._sex end
end

function app.FacultyDatabase.Info:setAddress(value)
	self._address = value
	do return self end
end

function app.FacultyDatabase.Info:getAddress()
	do return self._address end
end

function app.FacultyDatabase.Info:setSub_handle(value)
	self._sub_handle = value
	do return self end
end

function app.FacultyDatabase.Info:getSub_handle()
	do return self._sub_handle end
end

function app.FacultyDatabase.Info:setTimeStampAddedValue(value)
	do return self:setTimeStampAdded(_g.jk.lang.LongInteger:asObject(value)) end
end

function app.FacultyDatabase.Info:getTimeStampAddedValue()
	do return _g.jk.lang.LongInteger:asLong(self._timeStampAdded) end
end

function app.FacultyDatabase.Info:setTimeStampAdded(value)
	self._timeStampAdded = value
	do return self end
end

function app.FacultyDatabase.Info:getTimeStampAdded()
	do return self._timeStampAdded end
end

function app.FacultyDatabase.Info:setTimeStampLastUpdatedValue(value)
	do return self:setTimeStampLastUpdated(_g.jk.lang.LongInteger:asObject(value)) end
end

function app.FacultyDatabase.Info:getTimeStampLastUpdatedValue()
	do return _g.jk.lang.LongInteger:asLong(self._timeStampLastUpdated) end
end

function app.FacultyDatabase.Info:setTimeStampLastUpdated(value)
	self._timeStampLastUpdated = value
	do return self end
end

function app.FacultyDatabase.Info:getTimeStampLastUpdated()
	do return self._timeStampLastUpdated end
end

function app.FacultyDatabase.Info:toJsonObject()
	local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
	if self._id ~= nil then
		do v:setObject("id", self:asJsonValue(self._id)) end
	end
	if self._fname ~= nil then
		do v:setObject("fname", self:asJsonValue(self._fname)) end
	end
	if self._lname ~= nil then
		do v:setObject("lname", self:asJsonValue(self._lname)) end
	end
	if self._mname ~= nil then
		do v:setObject("mname", self:asJsonValue(self._mname)) end
	end
	if self._status ~= nil then
		do v:setObject("status", self:asJsonValue(self._status)) end
	end
	if self._sex ~= nil then
		do v:setObject("sex", self:asJsonValue(self._sex)) end
	end
	if self._address ~= nil then
		do v:setObject("address", self:asJsonValue(self._address)) end
	end
	if self._sub_handle ~= nil then
		do v:setObject("sub_handle", self:asJsonValue(self._sub_handle)) end
	end
	if self._timeStampAdded ~= nil then
		do v:setObject("timeStampAdded", self:asJsonValue(self._timeStampAdded)) end
	end
	if self._timeStampLastUpdated ~= nil then
		do v:setObject("timeStampLastUpdated", self:asJsonValue(self._timeStampLastUpdated)) end
	end
	do return v end
end

function app.FacultyDatabase.Info:fromJsonObject(o)
	local v = _vm:to_table_with_key(o, '_isType.jk.lang.DynamicMap')
	if not (v ~= nil) then
		do return false end
	end
	self._id = v:getString("id", nil)
	self._fname = v:getString("fname", nil)
	self._lname = v:getString("lname", nil)
	self._mname = v:getString("mname", nil)
	self._status = v:getString("status", nil)
	self._sex = v:getString("sex", nil)
	self._address = v:getString("address", nil)
	self._sub_handle = v:getString("sub_handle", nil)
	if v:get("timeStampAdded") ~= nil then
		self._timeStampAdded = _g.jk.lang.LongInteger:asObject(v:getLongInteger("timeStampAdded", 0))
	end
	if v:get("timeStampLastUpdated") ~= nil then
		self._timeStampLastUpdated = _g.jk.lang.LongInteger:asObject(v:getLongInteger("timeStampLastUpdated", 0))
	end
	do return true end
end

function app.FacultyDatabase.Info:fromJsonString(o)
	do return self:fromJsonObject(_g.jk.json.JSONParser:parse(o)) end
end

function app.FacultyDatabase.Info:toJsonString()
	do return _g.jk.json.JSONEncoder:encode(self:toJsonObject(), true, false) end
end

function app.FacultyDatabase.Info:toString()
	do return self:toJsonString() end
end

function app.FacultyDatabase.Info:forJsonString(o)
	local v = _g.app.FacultyDatabase.Info._construct0(_g.app.FacultyDatabase.Info._create())
	if not v:fromJsonString(o) then
		do return nil end
	end
	do return v end
end

function app.FacultyDatabase.Info:forJsonObject(o)
	local v = _g.app.FacultyDatabase.Info._construct0(_g.app.FacultyDatabase.Info._create())
	if not v:fromJsonObject(o) then
		do return nil end
	end
	do return v end
end

function app.FacultyDatabase:forContext(ctx)
	local cstr = _g.jk.env.EnvironmentVariable:get("Faculty_Profilling")
	do _g.jk.log.Log:debug(ctx, "Opening database connection: " .. _g.jk.lang.String:safeString(cstr) .. "'") end
	self.db = _g.jk.mysql.MySQLDatabase:forConnectionStringSync(ctx, cstr)
	if not (self.db ~= nil) then
		do _g.jk.lang.Error:throw("failedToConnectionToDatabase", cstr) end
	end
	do
		local v = _g.app.FacultyDatabase._construct0(_g.app.FacultyDatabase._create())
		do v:setDb(self.db) end
		do return v end
	end
end

function app.FacultyDatabase:updateTable(table)
	if not (table ~= nil) then
		do _g.jk.lang.Error:throw("nullTable", "updateTable") end
	end
	if not (self.db ~= nil) then
		do _g.jk.lang.Error:throw("nullDB", "updateTable") end
	end
	if not self.db:ensureTableExistsSync(table) then
		do _g.jk.lang.Error:throw("MALI", table:getName()) end
	end
end

function app.FacultyDatabase:updateinfoTables()
	local info = _g.jk.sql.SQLTableInfo:forName(_g.app.FacultyDatabase.INFO)
	do info:addStringKeyColumn("id") end
	do info:addStringKeyColumn("fname") end
	do info:addStringKeyColumn("lname") end
	do info:addStringKeyColumn("mname") end
	do info:addStringKeyColumn("status") end
	do info:addStringKeyColumn("sex") end
	do info:addStringKeyColumn("address") end
	do info:addStringKeyColumn("sub_handle") end
	do info:addLongColumn("timeStampAdded") end
	do info:addLongColumn("timeStampLastUpdated") end
	do self:updateTable(info) end
end

function app.FacultyDatabase:addInfo(info)
	if not (info ~= nil) then
		do return nil end
	end
	do info:setId("1") end
	do info:setTimeStampAddedValue(_g.jk.time.SystemClock:asUTCSeconds()) end
	if not self.db:executeSync(self.db:prepareInsertStatementSync(_g.app.FacultyDatabase.INFO, info:toDynamicMap())) then
		do return nil end
	end
	do return info end
end

function app.FacultyDatabase:updateInfo(id, info)
	if not (info ~= nil) then
		do return false end
	end
	do info:setTimeStampLastUpdatedValue(_g.jk.time.SystemClock:asUTCSeconds()) end
	do
		local criteria = _g.app.FacultyDatabase.Info._construct0(_g.app.FacultyDatabase.Info._create())
		do criteria:setId(id) end
		do return self.db:executeSync(self.db:prepareUpdateStatementSync(_g.app.FacultyDatabase.INFO, criteria:toDynamicMap(), info:toDynamicMap())) end
	end
end

function app.FacultyDatabase:deleteInfo(id)
	local criteria = _g.app.FacultyDatabase.Info._construct0(_g.app.FacultyDatabase.Info._create())
	do criteria:setId(id) end
	do return self.db:executeSync(self.db:prepareDeleteStatementSync(_g.app.FacultyDatabase.INFO, criteria:toDynamicMap())) end
end

function app.FacultyDatabase:getInfo()
	local v = {}
	local it = self.db:querySync(self.db:prepareQueryAllStatementSync(_g.app.FacultyDatabase.INFO, nil, nil))
	if not (it ~= nil) then
		do return nil end
	end
	while it ~= nil do
		local o = it:next()
		if not (o ~= nil) then
			do break end
		end
		do
			local info = _g.app.FacultyDatabase.Info:forJsonObject(o)
			if not (info ~= nil) then
				goto _continue1
			end
			do _g.jk.lang.Vector:append(v, info) end
		end
		::_continue1::
	end
	do
		local data = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
		do data:setObject("records", v) end
		do return data end
	end
end

function app.FacultyDatabase:close()
	if self.db ~= nil then
		do self.db:closeSync() end
	end
	self.db = nil
end

function app.FacultyDatabase:getDb()
	do return self.db end
end

function app.FacultyDatabase:setDb(v)
	self.db = v
	do return self end
end

app.FacultyApiHandler = _g.jk.http.worker.HTTPRPCRouter._create()
app.FacultyApiHandler.__index = app.FacultyApiHandler
_vm:set_metatable(app.FacultyApiHandler, {
	__index = _g.jk.http.worker.HTTPRPCRouter
})

function app.FacultyApiHandler._create()
	local v = _vm:set_metatable({}, app.FacultyApiHandler)
	return v
end

function app.FacultyApiHandler:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'app.FacultyApiHandler'
	self['_isType.app.FacultyApiHandler'] = true
	self.db = nil
	self.cors = _g.app.FacultyConfig:getCorsUtil()
end

function app.FacultyApiHandler:_construct0()
	app.FacultyApiHandler._init(self)
	do _g.jk.http.worker.HTTPRPCRouter._construct0(self) end
	return self
end

app.FacultyApiHandler.InfoRequest = _g.jk.json.JSONObjectAdapter._create()
app.FacultyApiHandler.InfoRequest.__index = app.FacultyApiHandler.InfoRequest
_vm:set_metatable(app.FacultyApiHandler.InfoRequest, {
	__index = _g.jk.json.JSONObjectAdapter
})

function app.FacultyApiHandler.InfoRequest._create()
	local v = _vm:set_metatable({}, app.FacultyApiHandler.InfoRequest)
	return v
end

function app.FacultyApiHandler.InfoRequest:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'app.FacultyApiHandler.InfoRequest'
	self['_isType.app.FacultyApiHandler.InfoRequest'] = true
	self['_isType.jk.lang.StringObject'] = true
	self._fname = nil
	self._lname = nil
	self._mname = nil
	self._status = nil
	self._sex = nil
	self._address = nil
	self._sub_handle = nil
end

function app.FacultyApiHandler.InfoRequest:_construct0()
	app.FacultyApiHandler.InfoRequest._init(self)
	do _g.jk.json.JSONObjectAdapter._construct0(self) end
	return self
end

function app.FacultyApiHandler.InfoRequest:setFname(value)
	self._fname = value
	do return self end
end

function app.FacultyApiHandler.InfoRequest:getFname()
	do return self._fname end
end

function app.FacultyApiHandler.InfoRequest:setLname(value)
	self._lname = value
	do return self end
end

function app.FacultyApiHandler.InfoRequest:getLname()
	do return self._lname end
end

function app.FacultyApiHandler.InfoRequest:setMname(value)
	self._mname = value
	do return self end
end

function app.FacultyApiHandler.InfoRequest:getMname()
	do return self._mname end
end

function app.FacultyApiHandler.InfoRequest:setStatus(value)
	self._status = value
	do return self end
end

function app.FacultyApiHandler.InfoRequest:getStatus()
	do return self._status end
end

function app.FacultyApiHandler.InfoRequest:setSex(value)
	self._sex = value
	do return self end
end

function app.FacultyApiHandler.InfoRequest:getSex()
	do return self._sex end
end

function app.FacultyApiHandler.InfoRequest:setAddress(value)
	self._address = value
	do return self end
end

function app.FacultyApiHandler.InfoRequest:getAddress()
	do return self._address end
end

function app.FacultyApiHandler.InfoRequest:setSub_handle(value)
	self._sub_handle = value
	do return self end
end

function app.FacultyApiHandler.InfoRequest:getSub_handle()
	do return self._sub_handle end
end

function app.FacultyApiHandler.InfoRequest:toJsonObject()
	local v = _g.jk.lang.DynamicMap._construct0(_g.jk.lang.DynamicMap._create())
	if self._fname ~= nil then
		do v:setObject("fname", self:asJsonValue(self._fname)) end
	end
	if self._lname ~= nil then
		do v:setObject("lname", self:asJsonValue(self._lname)) end
	end
	if self._mname ~= nil then
		do v:setObject("mname", self:asJsonValue(self._mname)) end
	end
	if self._status ~= nil then
		do v:setObject("status", self:asJsonValue(self._status)) end
	end
	if self._sex ~= nil then
		do v:setObject("sex", self:asJsonValue(self._sex)) end
	end
	if self._address ~= nil then
		do v:setObject("address", self:asJsonValue(self._address)) end
	end
	if self._sub_handle ~= nil then
		do v:setObject("sub_handle", self:asJsonValue(self._sub_handle)) end
	end
	do return v end
end

function app.FacultyApiHandler.InfoRequest:fromJsonObject(o)
	local v = _vm:to_table_with_key(o, '_isType.jk.lang.DynamicMap')
	if not (v ~= nil) then
		do return false end
	end
	self._fname = v:getString("fname", nil)
	self._lname = v:getString("lname", nil)
	self._mname = v:getString("mname", nil)
	self._status = v:getString("status", nil)
	self._sex = v:getString("sex", nil)
	self._address = v:getString("address", nil)
	self._sub_handle = v:getString("sub_handle", nil)
	do return true end
end

function app.FacultyApiHandler.InfoRequest:fromJsonString(o)
	do return self:fromJsonObject(_g.jk.json.JSONParser:parse(o)) end
end

function app.FacultyApiHandler.InfoRequest:toJsonString()
	do return _g.jk.json.JSONEncoder:encode(self:toJsonObject(), true, false) end
end

function app.FacultyApiHandler.InfoRequest:toString()
	do return self:toJsonString() end
end

function app.FacultyApiHandler.InfoRequest:forJsonString(o)
	local v = _g.app.FacultyApiHandler.InfoRequest._construct0(_g.app.FacultyApiHandler.InfoRequest._create())
	if not v:fromJsonString(o) then
		do return nil end
	end
	do return v end
end

function app.FacultyApiHandler.InfoRequest:forJsonObject(o)
	local v = _g.app.FacultyApiHandler.InfoRequest._construct0(_g.app.FacultyApiHandler.InfoRequest._create())
	if not v:fromJsonObject(o) then
		do return nil end
	end
	do return v end
end

function app.FacultyApiHandler:getDatabase()
	if not (self.db ~= nil) then
		self.db = _g.app.FacultyDatabase:forContext(self:getCtx())
		do self.db:updateinfoTables() end
	end
	do return self.db end
end

function app.FacultyApiHandler:postProcess(req, resp)
	do self.cors:handleWorkerRequest(req, resp) end
end

function app.FacultyApiHandler:initRoutes()
	do _g.jk.http.worker.HTTPRPCRouter.initRoutes(self) end
	do self:addRoute("GET", "/info", function(req, resp, vars)
		local info = self:getDatabase():getInfo()
		if not (info ~= nil) then
			do return end
		end
		do self:setOkResponse(resp, info) end
	end) end
	do self:addRoute("POST", "/info", function(req, resp, vars)
		local requestData = _g.app.FacultyApiHandler.InfoRequest:forJsonString(req:getBodyString())
		if not (requestData ~= nil) then
			do return end
		end
		do self:setErrorResponse(resp, "invalidRequest", "500") end
		do
			local info = _g.app.FacultyDatabase.Info._construct0(_g.app.FacultyDatabase.Info._create())
			do info:setFname(requestData:getFname()) end
			do info:setLname(requestData:getLname()) end
			do info:setMname(requestData:getMname()) end
			do info:setStatus(requestData:getStatus()) end
			do info:setSex(requestData:getSex()) end
			do info:setAddress(requestData:getAddress()) end
			do info:setSub_handle(requestData:getSub_handle()) end
			if not (self:getDatabase():addInfo(info) ~= nil) then
				do self:setErrorResponse(resp, "failedToSaveTask", "500") end
				do return end
			end
			do self:setOkResponse(resp, nil) end
		end
	end) end
	do self:addRoute("PUT", "/info/:id", function(req, resp, vars)
		local requestData = _g.app.FacultyApiHandler.InfoRequest:forJsonString(req:getBodyString())
		if not (requestData ~= nil) then
			do self:setErrorResponse(resp, "invalidRequest", "500") end
			do return end
		end
		do
			local info = _g.app.FacultyDatabase.Info._construct0(_g.app.FacultyDatabase.Info._create())
			do info:setFname(requestData:getFname()) end
			do info:setLname(requestData:getLname()) end
			do info:setMname(requestData:getMname()) end
			do info:setStatus(requestData:getStatus()) end
			do info:setSex(requestData:getSex()) end
			do info:setAddress(requestData:getAddress()) end
			do info:setSub_handle(requestData:getSub_handle()) end
			if not self:getDatabase():updateInfo(vars:getString("id", nil), info) then
				do self:setErrorResponse(resp, "FailedUpdateInfo", "500") end
				do return end
			end
			do self:setOkResponse(resp, nil) end
		end
	end) end
	do self:addRoute("DELETE", "/info/:id", function(req, resp, vars)
		if not self:getDatabase():deleteInfo(vars:getString("id", nil)) then
			do self:setErrorResponse(resp, "failedTodeleteInfo", "500") end
			do return end
		end
		do self:setOkResponse(resp, nil) end
	end) end
end

app.FacultyConfig = {}
app.FacultyConfig.__index = app.FacultyConfig
_vm:set_metatable(app.FacultyConfig, {})

function app.FacultyConfig._create()
	local v = _vm:set_metatable({}, app.FacultyConfig)
	return v
end

function app.FacultyConfig:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'app.FacultyConfig'
	self['_isType.app.FacultyConfig'] = true
end

function app.FacultyConfig:_construct0()
	app.FacultyConfig._init(self)
	return self
end

function app.FacultyConfig:getAllowedOrigins()
	do return {
		"http://localhost:8080",
		"http://localhost:8081",
		"http://ec2-13-212-197-20.ap-southeast-1.compute.amazonaws.com:30121"
	} end
end

function app.FacultyConfig:getCorsUtil()
	local allowed = {}
	local array = self:getAllowedOrigins()
	if array ~= nil then
		local n = 0
		local m = #array
		do
			n = 0
			while n < m do
				local origin = array[n + 1]
				if origin ~= nil then
					do _g.jk.lang.Vector:append(allowed, _g.jk.lang.String:asString(origin)) end
				end
				do n = n + 1 end
			end
		end
	end
	do return _g.jk.http.server.cors.HTTPServerCORSUtil:forWhitelist(allowed) end
end

app.FacultyApiServer = _g.jk.server.web.WebServer._create()
app.FacultyApiServer.__index = app.FacultyApiServer
_vm:set_metatable(app.FacultyApiServer, {
	__index = _g.jk.server.web.WebServer
})

function app.FacultyApiServer._create()
	local v = _vm:set_metatable({}, app.FacultyApiServer)
	return v
end

function app.FacultyApiServer:_init()
	self._isClassInstance = true
	self._qualifiedClassName = self._qualifiedClassName or 'app.FacultyApiServer'
	self['_isType.app.FacultyApiServer'] = true
end

function app.FacultyApiServer:_construct0()
	app.FacultyApiServer._init(self)
	do _g.jk.server.web.WebServer._construct0(self) end
	return self
end

function app.FacultyApiServer:initializeServer(server)
	if not _g.jk.server.web.WebServer.initializeServer(self, server) then
		do return false end
	end
	do server:setCreateOptionsResponseHandler(function(req)
		do return _g.app.FacultyConfig:getCorsUtil():handlePreflightRequest(req) end
	end) end
	do return true end
end

function app.FacultyApiServer:initializeApplication()
	if not _g.jk.server.web.WebServer.initializeApplication(self) then
		do return false end
	end
	do
		local db = _g.app.FacultyDatabase:forContext(self.ctx)
		do db:updateinfoTables() end
		do db:close() end
		do return true end
	end
end

function app.FacultyApiServer:_main(args)
	do return _g.app.FacultyApiServer._construct0(_g.app.FacultyApiServer._create()):setWorker("class:app.FacultyApiHandler"):executeMain(args) end
end

function _main(args)
	do return app.FacultyApiServer:_main(args) end
end
