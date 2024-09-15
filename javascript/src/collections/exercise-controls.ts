import * as DbUtils from "../data/excercise-controls";
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
    public initExerciseData = () => {
        DbUtils
            .init
            // {defaultData: JsonUtils.readDefaults()} //TODO: fix this
            ();
    };

    public setDataToCheckpoint = (input: unknown) => {
        const checkpointRequest: CheckpointRequest =
            castObjectToCheckpointRequest(input);

        const result = this.setDbToCheckpoint(checkpointRequest.exerciseCheckpoint);

        return {
            result: result,
        };
    };

    private setDbToCheckpoint = (checkpoint: number) => {
        let statementsRun = 0;

        /*
            get and run DropAndReset from sqlUtils folder

            while (checkpoint > 0) {
                get next file from Exercises folder

                run it if needed // TODO: check for comment in file that allows for skipping a run of SELECT or CHECKPOINT files
                    statementsRun++

                if ( fileName.Contains('CHECKPOINT') ) {
                    checkpoint--; 
                }
            }
        */
        return `${statementsRun} SQL statements were run to set database to desired state`;
    };
}
