import React, {Component} from "react"
import Layout from "../components/Layout";
import SearchBar from "../components/SearchBar";
import SearchResultContainer from "../components/SearchResultContainer/SearchResultContainer";
import {graphql, StaticQuery} from "gatsby";
import Spacer from "../components/Spacer/Spacer";
import {Query} from '@apollo/react-components';
import gql from 'graphql-tag';


const staticQuery = graphql`
  query Find {
    foodify {
      recipes(first: 50) {
        edges {
          node {
            id
            title
            briefDescription
          }
        }
      }
    }
  }
`

const query = gql`
  query FindLive($search: String!) {
    recipes(search: $search) {
      edges {
        node {
          id
          title
          briefDescription
        }
      }
    }
  }
`

interface FindState {
  search: string
}

export default class Find extends Component<{}, FindState> {
  state = {
    search: ''
  } as FindState;

  public render() {
    return (
      <StaticQuery query={staticQuery} render={(data) => {
        const defaultData = data.foodify.recipes.edges.map(item => item.node);
        return (
          <Layout title={'Find'}>
            <SearchBar onSearchChanged={this.handleSearch}/>
            <Query query={query} variables={{search: this.state.search}}>
              {(result) => {
                let get_data = () => {
                  let data = result.data ? result.data.recipes.edges.map(item => item.node) : [];

                  return this.state.search === '' ? defaultData : data || [];
                };

                return (
                  <SearchResultContainer error={result.error} loading={true} items={get_data()}/>
                );
              }}
            </Query>
            <Spacer/>
          </Layout>
        );
      }}/>
    )
  }

  handleSearch = (value: string) => {
    this.setState({
      search: value
    })
  }
}
