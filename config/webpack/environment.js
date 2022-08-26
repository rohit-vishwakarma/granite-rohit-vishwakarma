const { environment } = require('@rails/webpacker')

const aliasConfig = require("./alias");
environment.config.merge(aliasConfig);

//Now, you can import from apis folder without having to resolve the entire path each time.

// Example:

// import authAPI from "apis/auth";

module.exports = environment
