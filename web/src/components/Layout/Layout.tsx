import React, {Component} from 'react';
import Seo, {SeoProps} from "../Seo";
import Header from "../Header/Header";

import styles from './Layout.module.scss';

export interface LayoutProps extends SeoProps {
  fluid?: boolean;
  backgroundColor?: string;
}

export default class Layout extends Component<LayoutProps> {

    public render() {
        return (
            <>
                <Seo {...this.props}/>
                <div className={styles.wrapper} style={{backgroundColor: this.props.backgroundColor || 'transparent'}}>
                  <Header />
                  <div className={this.props.fluid ? styles.contentFluid : styles.content}>
                      {this.props.children}
                  </div>
                </div>
            </>
        )
    }
}
