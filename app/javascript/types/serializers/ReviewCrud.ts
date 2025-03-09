// Typelizer digest c135db41ba19061a868ba353c9319ebf
//
// DO NOT MODIFY: This file was automatically generated by Typelizer.
import type {User, Language} from '@/types'

type ReviewCrudData = {
  user: User;
  language: Language;
  id: number;
  body: string | null;
  state: string | null;
  first_name: string | null;
  last_name: string | null;
  language_id: number;
  user_id: number;
}

type ReviewCrud = {
  review: ReviewCrudData;
  meta: { state_events: Array<[string, string]>};
}

export default ReviewCrud;
