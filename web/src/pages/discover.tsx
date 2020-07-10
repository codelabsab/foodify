import React from "react"
import Layout from "../components/Layout";
import RecipeGridSection from "../components/RecipeGridSection/RecipeGridSection";
import RecipeSlideSection from "../components/RecipeSlideSection/RecipeSlideSection";
import Spacer from "../components/Spacer/Spacer";

export default function Discover() {
  return (
    <Layout title={'Discover'} fluid={true} backgroundColor={'#282828'}>
      <RecipeGridSection
        prioItem={{
          to: '/',
          title: 'Delicious Duck',
          brief: 'A phenomenal meal made from duck',
          imgUrl: 'https://loremflickr.com/640/640/food,plate?random=1'
        }}
        secondItem={{
          to: '/',
          title: 'Smashing Hamburgers',
          brief: 'Hamburgers made awesome',
          imgUrl: 'https://loremflickr.com/640/640/food,plate?random=2'
        }}
        thirdItem={{
          to: '/',
          title: 'Pretty Pasta',
          brief: 'Pasta with sparkles',
          imgUrl: 'https://loremflickr.com/640/640/food,plate?random=3'
        }}

      />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <RecipeSlideSection />
      <Spacer />
    </Layout>
  )
}
