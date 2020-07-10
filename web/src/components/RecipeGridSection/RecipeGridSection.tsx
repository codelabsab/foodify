import React, {Component} from "react";

import styles from './RecipeGridSection.module.scss';
import {Link} from "gatsby";

interface RecipeGridItem {
  to: string,
  title: string,
  brief: string,
  imgUrl: string
}

interface RecipeGridSectionProps {
  prioItem: RecipeGridItem,
  secondItem: RecipeGridItem,
  thirdItem: RecipeGridItem,

}

export default class RecipeGridSection extends Component<RecipeGridSectionProps> {

  public render() {

    let prioItem = this.props.prioItem;
    let secondItem = this.props.secondItem;
    let thirdItem = this.props.thirdItem;

    return (
      <div className={styles.wrapper}>
        <div className={styles.recipeGrid}>
          {this.renderItem(prioItem.to, prioItem.title, prioItem.brief, prioItem.imgUrl)}
          <div className={styles.secondContainer}>
            {this.renderItem(secondItem.to, secondItem.title, secondItem.brief, secondItem.imgUrl)}
            {this.renderItem(thirdItem.to, thirdItem.title, thirdItem.brief, thirdItem.imgUrl)}
          </div>
        </div>
      </div>
    )
  }

  renderItem = (to: string, title: string, brief: string, imgUrl: string) => {
    return (
      <div className={styles.item}>
        <Link to={to} className={styles.itemLink}>
          <img src={imgUrl} alt={brief}/>
          <div  className={styles.overlay}>
            <span className={styles.title}>{title}</span>
            <span className={styles.description}>{brief}</span>
          </div>
        </Link>
      </div>
    )
  }
}
