"use strict";
/**
 * userapp controller
 */
Object.defineProperty(exports, "__esModule", { value: true });
const strapi_1 = require("@strapi/strapi");
exports.default = strapi_1.factories.createCoreController("api::userapp.userapp", function ({ strapi }) {
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
});
