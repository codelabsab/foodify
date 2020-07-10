

exports.createPages = async ({ actions, graphql, reporter }) => {
  const result = await graphql(`
    query {
      foodify {
        recipes {
          edges {
            node {
              id
              title
              description
              briefDescription
            }
          }
        }
      }
    }
  `)

  if (result.errors) {
    reporter.panic("Error loading recipes!", reporter.errors)
  }

  result.data.foodify.recipes.edges.forEach(node => {
    actions.createPage({
      path: `/recipes/${node.node.id}`,
      component: require.resolve("./src/templates/recipe.tsx"),
      context: {
        recipeId: node.node.id,
      },
    })
  })
}
