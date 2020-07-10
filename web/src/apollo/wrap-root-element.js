import React from 'react';
import { ApolloProvider } from '@apollo/react-hooks';
import { client } from './client';
import { Auth0Provider } from "@auth0/auth0-react";

export const wrapRootElement = ({ element }) => (
  <Auth0Provider
    domain="foodify.eu.auth0.com"
    clientId="d4dHkFMO3A0CGiPHuBf0FHcRRGjQ3OFI"
    redirectUri={window.location.origin}
  >
    <ApolloProvider client={client}>{element}</ApolloProvider>
  </Auth0Provider>
);
