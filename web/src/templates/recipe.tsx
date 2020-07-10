import React, {Component} from "react"
import { graphql } from "gatsby"
import Layout from "../components/layout"

export const query = graphql`
  query($recipeId: FOODIFY_UUID!) {
    foodify {
      recipe(id: $recipeId) {
        id
        title
        description
      }
    }
  }
`


export default class Recipe extends Component {

  public render() {
    return (
      <Layout>
        <pre>{JSON.stringify(this.props.data, null, 2)}</pre>
      </Layout>
    )
  }
}
