import { Request, Response, NextFunction } from 'express'
import HttpError from 'utils/httpError'


export type Middleware<T> = (req: Request, res: Response, next?: NextFunction) => T

export type ErrorMiddleware = (err:  | HttpError, req: Request, res: Response, next: NextFunction) => void