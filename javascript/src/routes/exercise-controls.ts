import express, { Request, Response, Router } from 'express';
import { ExerciseControlsCollection } from '../collections/exercise-controls';

const exerciseRepository: ExerciseControlsCollection = new ExerciseControlsCollection();
exerciseRepository.initExerciseData();

const router: Router = express.Router();
export default router;

// If a POST request is made to the "contact" route, save the supplied contact request.
router.post('/checkpoint', async (req: Request, res: Response) => {

    const setResponse = await exerciseRepository.setDataToCheckpoint(req.body);
    

    res.status(201).json(setResponse);
});

