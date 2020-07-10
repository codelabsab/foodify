
import ApolloClient from 'apollo-boost';
import fetch from 'isomorphic-fetch';

export const client = new ApolloClient({
  uri: 'http://foodify.local.app.garden/api/',
  fetch,
});
