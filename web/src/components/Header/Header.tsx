import React, {Component} from 'react';

import styles from './Header.module.scss';
import {graphql, Link, StaticQuery} from "gatsby";

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

export default class Header extends Component {

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
                  <Link to={'/404'} className={styles.item}>
                    <span>Sign Up</span>
                  </Link>
                  <Link to={'/404'} className={styles.item}>
                    <span>Log In</span>
                  </Link>
                </div>
              )
            }} />
          </>
        )
    }
}
