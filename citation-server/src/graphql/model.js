import path from 'path';

import _ from 'lodash';
import fs from 'fs-promise';

import {workingDirectory} from './../gitasdb/constants';

export async function readModel() {
	const modelPath = path.resolve(workingDirectory, 'master', 'model.json');
	return await fs.readJson(modelPath);
}

export async function writeModel(newModel) {
	const modelPath = path.resolve(workingDirectory, 'master', 'model.json');
	return await fs.writeJSON(modelPath, newModel.schema.types);
}
