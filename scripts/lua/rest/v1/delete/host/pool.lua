--
-- (C) 2013-23 - ntop.org
--

local dirs = ntop.getDirs()
package.path = dirs.installdir .. "/scripts/lua/modules/?.lua;" .. package.path
package.path = dirs.installdir .. "/scripts/lua/modules/pools/?.lua;" .. package.path

local host_pools = require "host_pools"
local pools_rest_utils = require "pools_rest_utils"

pools_rest_utils.delete_pool(host_pools)
