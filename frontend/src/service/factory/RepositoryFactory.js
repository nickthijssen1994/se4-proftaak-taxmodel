// RepositoryFactory.js
import AfspraakRepository from "@/service/repositories/AfspraakRepository";

const repositories = {
  afspraken: AfspraakRepository
};

export const RepositoryFactory = {
    get: name => repositories[name]
};
