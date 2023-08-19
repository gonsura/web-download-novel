import { ErrorMiddleware } from '@interfaces/midleware'


export const errorHandler: ErrorMiddleware = (err, _req, res, _next) => {
    res.status(err.statusCode || 500).send(err.message || 'Internal Server Error')
}