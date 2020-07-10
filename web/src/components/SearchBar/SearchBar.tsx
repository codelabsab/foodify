import React, {Component} from "react";

import styles from './SearchBar.module.scss';

interface SearchBarProps {
  onSearchChanged: (search: string) => void;
}

export default class SearchBar extends Component<SearchBarProps> {

  public render() {
    return (
      <div className={styles.searchBar}>
        <div className={styles.titleRow}>
          <h1>Search recipes</h1>
        </div>
        <div className={styles.searchRow}>
          <div className={styles.inputWrapper}>
            <input placeholder={'Search'} onChange={this.handleSearchChange}/>
            <div className={styles.results}>
              <span>0 Results</span>
            </div>
          </div>
        </div>

      </div>
    )
  }

  handleSearchChange = (event: any) => {
    this.props.onSearchChanged(event.target.value)
  }
}
