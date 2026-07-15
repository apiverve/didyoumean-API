declare module '@apiverve/didyoumean' {
  export interface didyoumeanOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface didyoumeanResponse {
    status: string;
    error: string | null;
    data: DidYouMeanData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DidYouMeanData {
      query:      null | string;
      didYouMean: (null | string)[];
  }

  export default class didyoumeanWrapper {
    constructor(options: didyoumeanOptions);

    execute(callback: (error: any, data: didyoumeanResponse | null) => void): Promise<didyoumeanResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: didyoumeanResponse | null) => void): Promise<didyoumeanResponse>;
    execute(query?: Record<string, any>): Promise<didyoumeanResponse>;
  }
}
