local jdtls_path = vim.fn.expand("~/.local/share/jdtls")

local launcher = vim.fn.glob(
  jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"
)

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    local root_dir = vim.fs.root(0, {
      ".git",
      "pom.xml",
      "build.gradle",
      "gradlew",
    })

    vim.lsp.start({
      name = "jdtls",
      cmd = {
        "/usr/lib/jvm/java-17-openjdk-amd64/bin/java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=INFO",

        "-Xms1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens", "java.base/java.util=ALL-UNNAMED",
        "--add-opens", "java.base/java.lang=ALL-UNNAMED",
        "-jar", launcher,
        "-configuration", jdtls_path .. "/config_linux",
        "-data", vim.fn.stdpath("cache") .. "/jdtls-workspace",
      },

      root_dir = root_dir,
    })
  end,
})

