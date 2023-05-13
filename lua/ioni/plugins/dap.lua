local dap = require('dap')

--in order for this to work - start chrome with --remote-debugging-port=9222
dap.adapters.chrome = {
  type = "executable",
  command = "node",
  runtimeExecutable = "google-chrome-stable",
  args = {
    vim.fn.stdpath("data") .. "/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js",
  },
}
dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = {
    vim.fn.stdpath("data") .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js",
  },
}

dap.adapters['pwa-node'] = {
  type = "executable",
  command = "node",
  args = {
    vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
  },
}

dap.configurations.typescript = {
  {
    type = "node2",
    name = "node attach",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
  },
  {
    type = "node2",
    name = "node launch file",
    request = "launch",
    runtimeExecutable = "node",
    runtimeArgs = { "--nolazy", "-r", "ts-node/register" },
    args = { "${file}" },
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    skipFiles = { "<node_internals>/**", "node_modules/**" },
  },
  {
    type = "chrome",
    name = "chrome",
    request = "attach",
    program = "${file}",
    -- cwd = "${workspaceFolder}",
    -- protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}",
    -- sourceMaps = true,
    sourceMapPathOverrides = {
      -- Sourcemap override for nextjs
      ["webpack://_N_E/./*"] = "${webRoot}/*",
      ["webpack:///./*"] = "${webRoot}/*",
    },
  },
  {
    type = "pwa-node",
    request = "attach",
    name = "Attach",
    processId = require 'dap.utils'.pick_process,
    cwd = "${workspaceFolder}",
  },
}

dap.configurations.typescriptreact = {
  {
    type = "chrome",
    name = "chrome attach",
    request = "attach",
    program = "${file}",
    -- cwd = "${workspaceFolder}",
    -- protocol = "inspector",
    port = 9222,
    webRoot = "${workspaceFolder}",
    -- sourceMaps = true,
    sourceMapPathOverrides = {
      -- Sourcemap override for nextjs
      ["webpack://_N_E/./*"] = "${webRoot}/*",
      ["webpack:///./*"] = "${webRoot}/*",
    },
  },
  {
    type = "node2",
    name = "node attach",
    request = "attach",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
  },
}
