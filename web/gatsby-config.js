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
        to: "/recipes"
      },
      {
        title: "Recipes",
        to: "/recipes"
      },
      {
        title: "About",
        to: "/about"
      }
    ]
  },
  plugins: [
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
