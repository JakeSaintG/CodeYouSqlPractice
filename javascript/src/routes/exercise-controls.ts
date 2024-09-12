import express, { Request, Response, Router } from 'express';
import { ExerciseControlsCollection } from '../collections/exercise-controls';

const exerciseRepository: ExerciseControlsCollection = new ExerciseControlsCollection();
exerciseRepository.initContactRequestData();

const router: Router = express.Router();
export default router;

// If a POST request is made to the "contact" route, save the supplied contact request.
router.post('/', async (req: Request, res: Response) => {
    // const contactRequest = await contactRepository.addContactRequest(req.body);
    const foo: any =  {
        test : "test"
    }

    res.status(201).json(foo);
});

router.post('/', async (req: Request, res: Response) => {
    
    const foo: any =  {
        bar : "file created"
    }

    res.status(201).json(foo);
});
