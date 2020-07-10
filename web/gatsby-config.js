/**
 * Configure your Gatsby site with this file.
 *
 * See: https://www.gatsbyjs.org/docs/gatsby-config/
 */

module.exports = {
  siteMetadata: {
    title: "Foodify",
    titleTemplate: "%s · Foodify",
    description:
        "Spotify for food",
    url: "https://codelabs-foodify.com", // No trailing slash allowed!
    image: "/images/logo.jpg", // Path to your image you placed in the 'static' folder
    menuItems: [
      {
        title: "Discover",
        to: "/discover"
      },
      {
        title: "Find",
        to: "/find"
      },
      {
        title: "About",
        to: "/about"
      }
    ]
  },
  plugins: [
    {
      resolve: "gatsby-source-graphql",
      options: {
        // Arbitrary name for the remote schema Query type
        typeName: "FOODIFY",
        // Field under which the remote schema will be accessible. You'll use this in your Gatsby query
        fieldName: "foodify",
        // Url to query from
        url: "http://foodify.local.app.garden/api",
      },
    },
    `gatsby-plugin-sass`,
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        name: `pages`,
        path: `${__dirname}/src/pages/`,
      },
    },
    `gatsby-transformer-sharp`,
    `gatsby-plugin-sharp`
  ],
}

