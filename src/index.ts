import express from 'express'
import { port } from './utils/envCheck'

const app = express()




app.get('/', (_req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`http://localhost:${port}`)
})
