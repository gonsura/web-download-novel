import dotenv from 'dotenv'
import { PortCheck } from '@interfaces/utils'
import { logWarning } from './rainbowString'

dotenv.config()

const portCheck: PortCheck = (port) =>
  !port || isNaN(+port) ? (logWarning('env')('port'), 3000) : +port

export const port = portCheck(process.env.PORT)
