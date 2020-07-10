import React, {Component} from "react";

import styles from './RecipeSlideSection.module.scss'
import {Link} from "gatsby";


export default class RecipeSlideSection extends Component {

  public render() {

    return (
      <div className={styles.slide}>
        <div className={styles.titleRow}>
          <h1>TITLE</h1>
        </div>
        <div className={styles.slideRow}>
          <div className={styles.scrollContainer}>
            <div className={styles.itemPadding}/>
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            {this.renderItem()}
            <div className={styles.itemPadding}/>
          </div>
          <div className={styles.scrollOverlayLeft} />
          <div className={styles.scrollOverlayRight} />
        </div>
      </div>
    );
  }

  renderItem = () => {
    return (
      <Link to={'/'} className={styles.item}>
        <img src={'https://loremflickr.com/380/240/food,plate?random=' + Math.random()}/>
        <div className={styles.itemOverlay}>
          <span className={styles.title}>Title</span>
          <span className={styles.description}>Description</span>
        </div>
      </Link>
    );
  }
}
