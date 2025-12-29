import { createRequire } from "module"
import { fileURLToPath } from "url"
import path from "path"
import "bytenode"

const require = createRequire(import.meta.url)
const __dirname = path.dirname(fileURLToPath(import.meta.url))
require(path.join(__dirname, "bundle.jsc"))
