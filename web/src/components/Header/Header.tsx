import React, {Component} from 'react';
import {graphql, Link, StaticQuery} from "gatsby";
import {withAuth0, WithAuth0Props} from "@auth0/auth0-react";

import styles from './Header.module.scss';

const query = graphql`
  query Header {
    site {
      siteMetadata {
        menuItems {
          title
          to
        }
      }
    }
  }
`

class Header extends Component<WithAuth0Props> {

    public render() {
        return (
          <>
            <div className={styles.placeholder} />
            <StaticQuery query={query} render={(data) => {
              const menuItems = data.site.siteMetadata.menuItems;
              return (
                <div className={styles.header}>
                  <Link to={'/'} className={styles.mainItem}>
                    <span>Foodify</span>
                  </Link>
                  { menuItems.map((item) => {
                    return (
                      <Link to={item.to} key={item.title} className={styles.item}>
                        <span>{item.title}</span>
                      </Link>
                    )
                  }) }
                  <div className={styles.spacer} />
                  { !this.props.auth0.isAuthenticated && this.renderLoginItems() }
                  { this.props.auth0.isAuthenticated && this.renderProfileTab() }
                </div>
              )
            }} />
          </>
        )
    }

    renderLoginItems = () => {
      return (
        <>
          <Link to={'/404'} className={styles.item}>
            <span>Sign Up</span>
          </Link>
          <button onClick={() => this.props.auth0.loginWithRedirect()} className={styles.item}>
            <span>Log In</span>
          </button>
        </>
      );
    }

    renderProfileTab = () => {
      console.log(this.props.auth0.user)
      return (
        <button onClick={() => {}} className={styles.item}>
          <span>{this.props.auth0.user.given_name}</span>
        </button>
      );
    }
}

export default withAuth0(Header)
