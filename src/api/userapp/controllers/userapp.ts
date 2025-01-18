/**
 * userapp controller
 */

import { factories } from "@strapi/strapi";

export default factories.createCoreController(
  "api::userapp.userapp",
  function ({ strapi }) {
    return {
      async findOne(ctx) {
        const { data, meta } = await super.findOne(ctx);
        console.log(data);
        return { data, meta };
      },

      async create(ctx) {
        // some logic here
        console.log(ctx);
        const response = await super.create(ctx);
        // some more logic
        console.log(response);
        return response;
      },
    };
  }
);
