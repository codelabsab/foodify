import React, {PureComponent} from 'react';
import {graphql, StaticQuery} from "gatsby";
import Helmet from 'react-helmet';

const query = graphql`
  query SEO {
    site {
      siteMetadata {
        defaultTitle: title
        titleTemplate
        defaultDescription: description
        url
        image
      }
    }
  }
`

export interface SeoProps {
    title?: string;
    description?: string;
    image?: string;
    article?: boolean;
}

export default class Seo extends PureComponent<SeoProps> {

    public render() {
        return (
            <StaticQuery query={query} render={(data) => {
                const metaData = data.site.siteMetadata;
                const seo = {
                    title: this.props.title || metaData.title,
                    titleTemplate: metaData.titleTemplate,
                    description: this.props.description || metaData.description,
                    url: metaData.url,
                    image: this.props.image || metaData.image,
                    article: this.props.article || false
                };

                return (
                    <Helmet title={seo.title} titleTemplate={seo.titleTemplate}>
                        <meta name="description" content={seo.description} />
                        <meta name="image" content={seo.image} />
                        {seo.url && <meta property="og:url" content={seo.url} />}
                        {(seo.article ? true : null) && <meta property="og:type" content="article" />}
                        {seo.title && <meta property="og:title" content={seo.title} />}
                        {seo.description && (
                            <meta property="og:description" content={seo.description} />
                        )}
                        {seo.image && <meta property="og:image" content={seo.image} />}
                        <meta name="twitter:card" content="summary_large_image" />
                        {seo.title && <meta name="twitter:title" content={seo.title} />}
                        {seo.description && (
                            <meta name="twitter:description" content={seo.description} />
                        )}
                        {seo.image && <meta name="twitter:image" content={seo.image} />}
                    </Helmet>
                )
            }}/>

        )
    }
}