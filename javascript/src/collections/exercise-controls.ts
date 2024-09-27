import * as dbUtils from "../data/exercise-controls";
import { CheckpointRequest } from "../types/checkpoint-request";
import { HTTPError } from "../utils/http-error";

// Throw error if required fields are not present.
export const castObjectToCheckpointRequest = (
    input: any
): CheckpointRequest => {
    if (
        "exercise_checkpoint" in input &&
        !Number.isNaN(parseInt(input.exercise_checkpoint!))
    ) {
        return {
            exerciseCheckpoint: input.exercise_checkpoint!,
        };
    }

    throw new HTTPError({
        code: 400,
        message:
            "Cannot transform object to CheckpointRequest. Missing required fields.",
    });
};

export class ExerciseControlsCollection {
    public initExerciseData = () => dbUtils.init();

    public setDataToCheckpoint = (input: unknown) => {
        const checkpointRequest: CheckpointRequest = castObjectToCheckpointRequest(input);

        this.resetDbFile();

        let statementsRun = 0;

        statementsRun += dbUtils.runDropAndReset();

        statementsRun += dbUtils.runUntilCheckpointReached(checkpointRequest.exerciseCheckpoint);

        return {
            result: `${statementsRun} SQL statements were run to set database to desired state`
        };
    };

    private resetDbFile = () => {
        dbUtils.closeDbConnection();
        /*
            Deleting the file seems excessive, right? Quite possibly. However, we want 
            to completely reset ALL database state. Deleting the file and re-establishing 
            it ensures that things like stray transactions are closed and that EVERYTHING 
            in the database is fresh. 
        */ 
        dbUtils.deleteDbFile();
        this.initExerciseData();
    };
}
