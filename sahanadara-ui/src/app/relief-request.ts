import { Location } from './location';
import { AssociatedIncident } from './associated-incident';
import { RequestingUser } from './requesting-user';

export interface ReliefRequest {
    id: number;
    creationTimestamp: Date;
    updateTimestamp: Date;
    title: string;
    description: string;
    requestingUser: RequestingUser;
    associatedIncident: AssociatedIncident;
    location: Location;
    completed: boolean;
}
