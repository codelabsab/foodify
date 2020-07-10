import React, {Component} from "react";

import styles from './SearchResultContainer.module.scss';
import {Link} from "gatsby";

interface SearchResultContainerProps {
  items: Array<{
    id: string,
    title: string,
    briefDescription: string
  }>;
  loading?: boolean;
  error?: unknown;
}

export default class SearchResultContainer extends Component<SearchResultContainerProps> {

  public render() {
    const items = this.props.items;

    if (items.length > 0) {
      return this.renderItems(items)
    } else {
      return this.renderNoItems()
    }
  }

  renderItems = (
    items: Array<{
      id: string,
      title: string,
      briefDescription: string
    }>
  ) => {
    return (
      <div className={styles.container}>
        { this.props.error && <div>
          <pre>this.props.error</pre>
        </div> }
        { items.map(item => {
          return (
            <Link key={item.id} to={'/recipes/' + item.id} className={styles.item}>
              <img src={'https://loremflickr.com/640/640/food,plate?random=' + item.id}/>
              <div className={styles.overlay}>
                <span>{item.title}</span>
                { item.briefDescription && <span>{item.briefDescription}</span> }
              </div>
            </Link>
          );
        }) }
      </div>
    );
  };

  renderNoItems = () => {
    return (
      <div className={styles.noItems}>
        <span>Nothing here :/ Perhaps you should search for something else</span>
      </div>
    )
  }
}
