import React, {Component} from "react";

import styles from './Footer.module.scss';


export default class Footer extends Component {

  public render() {
    return (
      <div className={styles.footer}>
        <div className={styles.contentRow}>
          <div>
            Footer
          </div>
          <div>
            Footer
          </div>
          <div>
            Footer
          </div>
        </div>
        <div className={styles.copyRightRow}>
          <span>Copyright @ Me</span>
        </div>
      </div>
    )
  }
}
